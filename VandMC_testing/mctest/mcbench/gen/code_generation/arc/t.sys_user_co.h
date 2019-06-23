/*----------------------------------------------------------------------------
 * File:  ${te_file.callout}.${te_file.hdr_file_ext}
 *
 * Description:
 * Function declarations for user supplied (non-translated) call out entry
 * points in the generated application.
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef ${te_prefix.define_usw}$u{te_file.callout}_$u{te_file.hdr_file_ext}
#define ${te_prefix.define_usw}$u{te_file.callout}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

/*
 * ${te_callout.initialization}
 *
 * This function is invoked at the immediate beginning of application
 * initialization. It is the very first function to be executed at system
 * startup.
 * User supplied implementation of this function should be restricted to
 * things like memory initialization, early hardware duties, etc.
 *
 */
void ${te_callout.initialization}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.
.if ( "C" == te_target.language )
   (activated by default...  Uncomment to deactivate.)
#define ${te_callout.initialization}()
 */
.else
 */
#define ${te_callout.initialization}()
.end if

#ifndef ${te_callout.initialization}
#define ${te_callout.initialization}() ${te_callout.initialization}f()
#endif

/*
 * ${te_callout.pre_xtUML_initialization}
 *
 * This function is invoked immediately prior to executing any xtUML
 * initialization functions.
 */
void ${te_callout.pre_xtUML_initialization}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.pre_xtUML_initialization}()

#ifndef ${te_callout.pre_xtUML_initialization}
#define ${te_callout.pre_xtUML_initialization}() ${te_callout.pre_xtUML_initialization}f()
#endif

/*
 * ${te_callout.post_xtUML_initialization}
 *
 * This function is invoked immediately after executing any xtUML
 * initialization functions.
 * When this callout function returns, the system dispatcher will allow the
 * xtUML application analysis state models to start consuming events.
 */
void ${te_callout.post_xtUML_initialization}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.post_xtUML_initialization}()

#ifndef ${te_callout.post_xtUML_initialization}
#define ${te_callout.post_xtUML_initialization}() ${te_callout.post_xtUML_initialization}f()
#endif

/*
 * ${te_callout.background_processing}
 *
 * This function is invoked once during each loop execution of the system
 * dispather.
 * It is invoked at the 'top' of the system dispatcher loop, immediately
 * prior to dispatching any xtUML application analysis events.
 */
void ${te_callout.background_processing}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.
.if ( "C" == te_target.language )
   (activated by default...  Uncomment to deactivate.)
#define ${te_callout.background_processing}()
 */
.else
 */
#define ${te_callout.background_processing}()
.end if

#ifndef ${te_callout.background_processing}
#define ${te_callout.background_processing}() ${te_callout.background_processing}f()
#endif

/*
 * ${te_callout.pre_shutdown}
 *
 * This function is invoked at termination of the system dispatcher, but
 * prior to performing any xtUML application analysis shutdown sequencing.
 */
void ${te_callout.pre_shutdown}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.pre_shutdown}()

#ifndef ${te_callout.pre_shutdown}
#define ${te_callout.pre_shutdown}() ${te_callout.pre_shutdown}f()
#endif

/*
 * ${te_callout.post_shutdown}
 *
 * This function is invoked immediately before application exit.
 */
void ${te_callout.post_shutdown}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.post_shutdown}()

#ifndef ${te_callout.post_shutdown}
#define ${te_callout.post_shutdown}() ${te_callout.post_shutdown}f()
#endif

/*
 * ${te_callout.event_cant_happen}
 *
 * This function is invoked any time that an event is received that
 * results in a "cant happen" transition.
 */
void ${te_callout.event_cant_happen}f( const ${te_typemap.state_number_name},
                                         const ${te_typemap.state_number_name},
                                         const ${te_typemap.event_number_name} );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.event_cant_happen}( s1, s2, e )

#ifndef ${te_callout.event_cant_happen}
#define ${te_callout.event_cant_happen}( s1, s2, e ) ${te_callout.event_cant_happen}f( s1, s2, e )
#endif

/*
 * ${te_callout.event_no_instance}
 *
 * This function is invoked when we failed to validate the instance
 * to which an event was directed.  This can happen in normal operation
 * when the instance was deleted while the event was in flight (analysis
 * error).
 */
void ${te_callout.event_no_instance}f( const ${te_typemap.event_number_name} );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.event_no_instance}( e )

#ifndef ${te_callout.event_no_instance}
#define ${te_callout.event_no_instance}( e ) ${te_callout.event_no_instance}f( e )
#endif

/*
 * ${te_callout.event_free_list_empty}
 *
 * This function is invoked when an attempt is made to allocate an
 * event, but there are no more left.
 */
void ${te_callout.event_free_list_empty}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.event_free_list_empty}()

#ifndef ${te_callout.event_free_list_empty}
#define ${te_callout.event_free_list_empty}() ${te_callout.event_free_list_empty}f()
#endif

/*
 * ${te_callout.empty_handle_detected}
 *
 * This function is invoked when an attempt is made to use an instance
 * reference variable (handle) that is null (empty).
 */
void ${te_callout.empty_handle_detected}f( c_t *, c_t * );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.empty_handle_detected}( s1, s2 )

#ifndef ${te_callout.empty_handle_detected}
#define ${te_callout.empty_handle_detected}( s1, s2 ) ${te_callout.empty_handle_detected}f( (c_t *) s1, (c_t *) s2 )
#endif

/*
 * ${te_callout.object_pool_empty}
 *
 * This function is invoked when an attempt is made to create an
 * instance of an object, but there are no instances available.
 */
void ${te_callout.object_pool_empty}f( const ${te_typemap.domain_number_name}, const ${te_typemap.object_number_name} );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.
   (activated by default...  Uncomment to deactivate.)
#define ${te_callout.object_pool_empty}( s1, s2 )
 */

#ifndef ${te_callout.object_pool_empty}
#define ${te_callout.object_pool_empty}( s1, s2 ) ${te_callout.object_pool_empty}f( s1, s2 )
#endif

/*
 * ${te_callout.node_list_empty}
 *
 * This function is invoked when an attempt is made to allocate a
 * node, but there are no more left.
 */
void ${te_callout.node_list_empty}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.node_list_empty}()

#ifndef ${te_callout.node_list_empty}
#define ${te_callout.node_list_empty}() ${te_callout.node_list_empty}f()
#endif

/*
 * ${te_callout.interleaved_bridge_overflow}
 *
 * This function is invoked when an attempt is made to post too many
 * interleaved bridges.  The depth of this list is defined by
 * SYS_MAX_INTERLEAVED_BRIDGES (unless changed in the archetype).
 */
void ${te_callout.interleaved_bridge_overflow}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.interleaved_bridge_overflow}()

#ifndef ${te_callout.interleaved_bridge_overflow}
#define ${te_callout.interleaved_bridge_overflow}() ${te_callout.interleaved_bridge_overflow}f()
#endif

/*
 * ${te_callout.self_event_queue_empty}
 *
 * This function is invoked when the events to self queue is
 * interrogated and found to be empty.
 */
void ${te_callout.self_event_queue_empty}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.self_event_queue_empty}()

#ifndef ${te_callout.self_event_queue_empty}
#define ${te_callout.self_event_queue_empty}() ${te_callout.self_event_queue_empty}f()
#endif

/*
 * ${te_callout.non_self_event_queue_empty}
 *
 * This function is invoked when the events to instance queue is
 * interrogated and found to be empty.
 */
void ${te_callout.non_self_event_queue_empty}f( void );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.non_self_event_queue_empty}()

#ifndef ${te_callout.non_self_event_queue_empty}
#define ${te_callout.non_self_event_queue_empty}() ${te_callout.non_self_event_queue_empty}f()
#endif

/*
 * ${te_callout.persistence_error}
 *
 * This function is invoked when trouble is detected reading from
 * or writing to persistent storage.
 */
void ${te_callout.persistence_error}f( i_t );
/* The following empty definition renders the callout hook invisible.
   Delete or comment out the following define to activate the in line
   hook for this callout.  */
#define ${te_callout.persistence_error}( i1 )

#ifndef ${te_callout.persistence_error}
#define ${te_callout.persistence_error}( i1 ) ${te_callout.persistence_error}f( i1 )
#endif

${te_target.c2cplusplus_linkage_end}
#endif  /* ${te_prefix.define_usw}$u{te_file.callout}_$u{te_file.hdr_file_ext} */
.//
