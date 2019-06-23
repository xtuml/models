
/*
 * State Save Mechanisms
 */

.// state save declarations and definitions
.// common between the application and the formatter
/*
   ssinstance_t is the type of a record that holds an instance
   of a class keyed by component, class and instance.  The interesting
   part is the state (current_state).
   ssevent_t is shapes a record holding an event from one of the event queues.
   ssmeta_t is the type for the first record in the file.  It provides
   a count for how many of each record type are in the file.
   As defined, each record is exactly 4 bytes wide.

   Here is the data expressed in tabular format:

   (metadata) 2-byte instance count | self event count | instance event count
   -------------------------v-------+------------------+---------------------
   (instances)       domain | class | instance         | current_state
        -            ...    | ...   | ...              | ...
   (self events)     domain | class | instance         | event
        -            ...    | ...   | ...              | ...
   (instance events) domain | class | instance         | event
        -            ...    | ...   | ...              | ...

 */

/* NOTE:  The following data structures must be compatible.
   Be aware of byte alignment.  The structures are united into ssdata_t.  */
typedef struct { u1_t component, class, instance, state; } ssinstance_t;
typedef struct { u1_t component, class, instance, event; } ssevent_t;
typedef struct { u2_t instances; u1_t sevents, ievents; } ssmeta_t;
typedef union { ssinstance_t i; ssevent_t e; ssmeta_t m; } ssdata_t;
/* SSBUFSIZE is derived from the marking (system.mark:MarkStateSave).
 * SSFILENAME is defined here.  Feel free to change it.  */
#define SSBUFSIZE ${te_sys.StateSaveBufferSize}
#define SSFILENAME "ssfile.4bytes"

/* This buffer is used both for collecting and for converting.
   When SS::trigger() is invoked, this buffer gets populated.
   The default functionality presently writes the contents of
   the buffer to a file.
   The same data structure is used for the compiled converter application
   to receive data read from the persisted state save file.  */
static ssdata_t ssbuf[ SSBUFSIZE / sizeof( ssdata_t ) ];
static ${te_prefix.type}size_t ssbuf_index;

#ifndef ${te_prefix.define_u}STATESAVE

/* event queue information imported from the generated application */
typedef struct { ${te_eq.base_event_type} * head, * tail; } xtUMLEventQueue_t;
extern xtUMLEventQueue_t non_self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
extern xtUMLEventQueue_t self_event_queue[ NUM_OF_XTUML_CLASS_THREADS ];
extern ${te_prefix.result}Extent_t * const * const domain_class_info[ SYSTEM_DOMAIN_COUNT ];

/*
 * Dump out events on the given event queue.
 */
static ${te_prefix.type}size_t ss_dump_event_queue( ${te_prefix.result}xtUMLEvent_t * );
static ${te_prefix.type}size_t ss_dump_event_queue( ${te_prefix.result}xtUMLEvent_t * e )
{
  ${te_prefix.type}size_t event_count = 0;
  while ( 0 != e ) {
    ssevent_t event_map;
    event_map.component = e->destination_domain_number;
    event_map.class = e->destination_object_number;
    event_map.instance = ${te_prefix.result}getindex( e->object_instance, e->destination_domain_number, e->destination_object_number );
    event_map.event = e->event_number;
    ssbuf[ ssbuf_index++ ].e = event_map;
    e = e->next;
    event_count++;
  }
  return event_count;
}

/*
 * Dump out instances of this class.
 */
static ${te_prefix.type}size_t ss_dump_intances( const ${te_prefix.result}DomainNumber_t, const ${te_prefix.result}ClassNumber_t );
static ${te_prefix.type}size_t ss_dump_intances(
  const ${te_prefix.result}DomainNumber_t domain_num,
  const ${te_prefix.result}ClassNumber_t class_num
)
{ 
  ${te_prefix.type}size_t instance_count = 0;
  ${te_prefix.result}Iterator_s iterator;
  ${te_prefix.result}iHandle_t instance;
  ${te_prefix.result}Extent_t * dci = \
.if ( "C++" == te_target.language )
${te_instance.get_dci}(class_num);
.else
*(${te_cia.class_info_name}[ domain_num ] + class_num);
.end if
  if ( 0 != dci ) { /* not a class-based state machine */
    ${te_prefix.result}IteratorReset( &iterator, &dci->active );
    /* Cycle through the active list of instances of this class.  */
    while ( 0 != (instance = ${te_prefix.result}IteratorNext( &iterator )) ) {
      if ( 0 != dci->initial_state ) { /* no passive instances */
        ssinstance_t instance_map;
        instance_map.component = domain_num;
        instance_map.class = class_num;
        instance_map.instance = ${te_prefix.result}getindex( instance, domain_num, class_num );
        instance_map.state = instance->current_state;
        ssbuf[ ssbuf_index++ ].i = instance_map;
        instance_count++;
      }
    }
  }
  return instance_count;
}

/*
 * Dump the instances and event queues into a buffer.
 * Then write the buffer to a file.
 */
static void
sstrigger()
{
  ${system_class_array.class_count}
  FILE * ssfile;
  ${te_prefix.type}size_t i, j;
  u2_t instance_count = 0;
  u1_t sevent_count = 0, ievent_count = 0;
  ssinstance_t instance_map;
  ssevent_t event_map;
  ssmeta_t metadata;
  ssbuf_index = 0; /* Reset buffer to beginning.  */
  for ( i = 0; i < SYSTEM_DOMAIN_COUNT; i++ ) {
    for ( j = 0; j < ${te_cia.class_count}[ i ]; j++ ) {
      instance_count = instance_count + ss_dump_intances( i, j );
    }
  }
.if ( te_thread.enabled )
  for ( i = 0; i < NUM_OF_XTUML_CLASS_THREADS; i++ ) {
.else
  i = 0;
.end if
.if ( self_event_queue_needed.result )
  sevent_count = sevent_count + ss_dump_event_queue( self_event_queue[ i ].head );
.end if
.if ( non_self_event_queue_needed.result )
  ievent_count = ievent_count + ss_dump_event_queue( non_self_event_queue[ i ].head );
.end if
.if ( te_thread.enabled )
  }
.end if
  if ( 0 == (ssfile = fopen( SSFILENAME, "wb+" )) ) {
    ${te_callout.persistence_error}( instance_count + sevent_count + ievent_count );
    ssfile = stdout;
  }
  metadata.instances = instance_count;
  metadata.sevents = sevent_count;
  metadata.ievents = ievent_count;
  fwrite( &metadata, sizeof( ssmeta_t ), 1, ssfile );
  fwrite( ssbuf, sizeof( ssdata_t ), instance_count + sevent_count + ievent_count, ssfile );
  if ( ssfile != stdout )
    fclose( ssfile );
}
#else
.include "${te_file.arc_path}/t.ee.ss.main.c"
#endif
