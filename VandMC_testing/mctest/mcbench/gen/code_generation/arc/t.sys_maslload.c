/*
   MASL Activity Container Parser Grammar

   activity_file:  activity_container*
   activity_container:
     activity_begin ( uuid )+ do_not_edit
     signature
     code_block
     activity_end do_not_edit
*/

static bool readcontainer( char ** );
static bool activity_container( void );
static bool activity_begin( void );
static bool uuid( void );
static bool do_not_edit( void );
static bool signature( void );
static bool code_block( void );
static bool activity_end( void );

static bool readcontainer( char ** c )
{
  #define MAXCONTAINERLENGTH 2000000
  static c_t containerspace[ MAXCONTAINERLENGTH ] = {0};
  static c_t line[ MAXLINELENGTH ] = {0};
  bool done = false;
  bool last_container = false;
  c_t * p = containerspace;
  *c = containerspace;
  /* Add the line to containerspace.  On the first read, this will be a NOP.
     On all other reads, this will get the front part of the container
     (//! ACTIVITY BEGIN.) that we read the last time. */
  strncpy( p, line, MAXLINELENGTH );
  p = p + ${te_prefix.result}strlen( line );
  while ( ! done ) {
    if ( fgets( line, MAXLINELENGTH, xtumlfile ) == 0 ) {
      done = true;
      last_container = true;
    }
    /* Note that we only compare as much as we care about.  */
    if ( 0 != strncmp( line, "//! ACTIVITY BEGIN.", 19 ) ) {
      strncpy( p, line, MAXLINELENGTH );
      p = p + ${te_prefix.result}strlen( line );
      line[ 0 ] = 0;
    } else {
      done = true;
    }
  }
  return last_container;
}

static bool activity_container( void )
{
  DEVELOPER_DEBUG( "activity_container %s\n", cursor );
  word[ 0 ] = "";
  wordindex = 0;
  if ( ! activity_begin() ) return false;
  while ( uuid() );
  if ( ! do_not_edit() ) return false;
  if ( ! signature() ) return false;
  if ( ! code_block() ) return false;
  if ( ! activity_end() ) return false;
  if ( ! do_not_edit() ) return false;
  return true;
}

static bool activity_begin( void )
{
  DEVELOPER_DEBUG( "activity_begin %s\n", cursor );
  if ( parsestring( "//!" ) && parsestring( "ACTIVITY" ) && parsestring( "BEGIN." ) ) return true;
  return false;
}

static bool uuid( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "uuid() %s\n", cursor );
  whitespace();
  if ( ! ( '\'' == *cursor ) ) return false;
  *cursor = '"';
  /* Capture uuid into word.  */
  word[ wordindex++ ] = cursor++;
  while ( ( ( ( '0' <= *cursor ) && ( *cursor <= '9' ) ) ||
            ( ( 'a' <= *cursor ) && ( *cursor <= 'z' ) ) ||
            ( *cursor == '-' ) ) &&
          ( guard_counter++ < MAXLINELENGTH ) ) {
    cursor++;
  }
  *cursor++ = '"';
  *cursor++ = 0;  /* Overwrite trailing blank mark with delimter.  */
  return true;
}

static bool signature( void )
{
  s4_t guard_counter = 0;
  bool rc = false;
  DEVELOPER_DEBUG( "signature %s\n", cursor );
  cursor++;
  while ( guard_counter++ < MAXLINELENGTH ) {
    if ( ( *(cursor - 3) == ' ' ) && ( *(cursor - 2) == 'i' ) && ( *(cursor - 1) == 's' ) && ( *cursor == '\n' ) ) {
      rc = true;
      break;
    } else {
      cursor++;
    }
  }
  return rc;
}

static bool code_block( void )
{
  s4_t guard_counter = 0;
  DEVELOPER_DEBUG( "code_block %s\n", cursor );
  cursor++;
  /* Capture code block into word.  */
  word[ wordindex++ ] = cursor;
  while ( guard_counter++ < MAXRECORDLENGTH ) {
    if ( ( *cursor == '\n' ) && ( *(cursor + 1) == '/' ) && ( *(cursor + 2) == '/' ) && ( *(cursor + 3) == '!' ) ) {
      *cursor++ = 0;   /* Delimit code_block (overwriting final newline).  */
      break;
    } else {
      cursor++;
    }
  }
  return true;
}

static bool activity_end( void )
{
  DEVELOPER_DEBUG( "activity_end %s\n", cursor );
  if ( parsestring( "//!" ) && parsestring( "ACTIVITY" ) && parsestring( "END." ) ) return true;
  return false;
}

static bool do_not_edit( void )
{
  DEVELOPER_DEBUG( "do_not_edit %s\n", cursor );
  if ( parsestring( "DO" ) && parsestring( "NOT" ) && parsestring( "EDIT" ) && parsestring( "THIS" ) && parsestring( "LINE." ) ) return true;
  return false;
}

/*
 * This is compatible as a callback for ftw.
 */
static int ${te_prefix.result}MASL_load_file( const char * filepath, const struct stat * info, const int typeflag )
{
  /*
   * Open the named file for reading.
   */
  if ( !strstr( filepath, ".masl" ) ) {
    return 0; // not a masl source file
  } else {
    if ( (xtumlfile = fopen( filepath, "r" )) == 0 ) {
      fprintf( stderr, "Could not open file:  %s\n", filepath );
      return 1;
    }
  }
  init();               /* Initialize the parser storage area.  */
  /*
   * Read a container.  Parse it.  Pass it.  Repeat until end of file.
   */
  bool done = readcontainer( &cursor ); /* Initial call reads to beginning of first record.  */
  while ( ! done ) {
    done = readcontainer( &cursor );
    if ( activity_container() ) {
      if ( 0 != wordindex ) {
        // Update the Action_Semantics with the code blocks.
        if ( wordindex > 2 ) {
          ${te_sync.GeneratedName}( (c_t *) word[ 2 ], ${te_string.uuidtou128}( word[ 0 ] ), ${te_string.uuidtou128}( word[ 1 ] ) );
        } else {
          ${te_sync.GeneratedName}( (c_t *) word[ 1 ], ${te_string.uuidtou128}( word[ 0 ] ), 0 );
        }
      }
    } else {
      fprintf( stderr, "warning:  MASL did not parse:  %s:%s.\n", filepath, word[ wordindex ] );
    }
  }
  fclose( xtumlfile );
  return 0;
}

void ${te_prefix.result}MASL_load( const char *name )
{
  /* Recursiving load from a named directory.  */
  ftw( name, ${te_prefix.result}MASL_load_file, 15 );
}
