/*---------------------------------------------------------------------
 * File:  ${te_file.nvs}.${te_file.src_file_ext}
 *
 * External Entity:  Non-Volatile Storage (NVS)
 *
 * Description:
 * Non-Volatile Storage (NVS) is used to persist class instances and
 * link instances for MC-3020 applications.
 *
 * item.length == 0 marks free space and is set by format and defrag.
 * item.length should only be zero for items past the end of the list
 * of items (otherwise the list is not traversable).
 * item.key == 0 && item.type == 0 means an entry has been deleted.
 *
 * NVS_search returns pointer to data.  (NVS_remove will back up to
 * mark an item as being deleted.)
 *
 * ${te_copyright.body}
 *-------------------------------------------------------------------*/

#include <stdio.h>
#include "${te_file.types}.${te_file.hdr_file_ext}"
#include "${te_file.nvs}.${te_file.hdr_file_ext}"

typedef struct {
  i_t length;
  u4_t key;
  c_t type;
} NVS_item_t;

#define NVS_ITEM_SIZE sizeof( NVS_item_t )
#define NVS_MARK_DELETED      0x77
#define NVS_file "nvs.fil"

static NVS_item_t item;
static i_t space_used;
static i_t version = -999;
FILE * store = 0;

/*
 * Search for a record matching the type and key or non-zero length.
 * Return length of record found, NOT_FOUND or ERROR.
 * Leave file pointer at instance data.
 * Leave item with meta data from found item.
 */
static i_t ${te_prefix.result}NVS_search( const u4_t, const i_t, c_t const *, const c_t );
static i_t
${te_prefix.result}NVS_search(
  const u4_t key,
  const i_t length,
  c_t const * pointer,
  const c_t type )
{
  i_t result = 0;
  /*
   * Loop through looking for match.
   */
  do {
    if ( fread( &item, NVS_ITEM_SIZE, 1u, store ) == 1 ) {
      if ( length != 0 ) { /* search on data */
        c_t buffer[ 64 ];
        i_t chunk = item.length;
        if ( chunk > sizeof( buffer ) ) {
          return NVS_ERROR_LENGTH;   /* Use better logic here.  */
        }
        if ( fread( buffer, chunk, 1u, store ) == 1 ) {
          if ( ( item.type == type ) && ( item.length == length ) ) {
            c_t const * p = pointer;
            c_t const * b = &buffer[ 0 ];
            result = item.length;  /* Assume match.  */
            while ( chunk-- > 0 ) {
              if ( *p++ != *b++ ) {
                result = 0;        /* not a match */
                /* Back track to beginning of data.  */
                if ( fseek( store, -item.length, SEEK_CUR ) != 0 ) {
                  result = NVS_ERROR_BAD_SEEK;
                }
                break;
              }
            }
          }
        } else {
          result = NVS_ERROR_BAD_READ;
        }
      } else if ( ( item.key == key ) && ( item.type == type ) ) {
        result = item.length;
      } else if ( item.length > 0 ) {
        /* Skip past data to next item.  */
        if ( fseek( store, item.length, SEEK_CUR ) != 0 ) {
          result = NVS_ERROR_BAD_SEEK;
        }
      } else {
        result = NVS_ERROR_NOT_FOUND;
      }
    } else {
      result = NVS_ERROR_BAD_READ;
    }
  } while ( result == 0 );
  return result;
}

/*
 * Search for a record NOT matching the key and type.
 * Return length of record found, NOT_FOUND or ERROR.
 * Leave file pointer at instance data.
 * Leave item with meta data from found item.
 */
static i_t ${te_prefix.result}NVS_nsearch( const u4_t, const c_t );
static i_t
${te_prefix.result}NVS_nsearch(
  const u4_t key,
  const c_t type )
{
  i_t result = 0;
  /*
   * Loop through looking for match.
   */
  do {
    if ( fread( &item, NVS_ITEM_SIZE, 1u, store ) == 1 ) {
      if ( ( item.key != key ) || ( item.type != type ) ) {
        result = item.length;
      } else if ( item.length > 0 ) {
        /* fseek will return non-zero on EOF or failure.  */
        result = fseek( store, item.length, SEEK_CUR );
      } else {
        result = NVS_ERROR_NOT_FOUND;
      }
    } else {
      result = NVS_ERROR_BAD_READ;
    }
  } while ( result == 0 );
  return result;
}

/*
 * Bridge:  update
 * Update the record with changes.  The meta-data (key, length and type)
 * remain unchanged.
 */
i_t
${te_prefix.result}NVS_update(
  u4_t ee_key,
  i_t ee_length,
  c_t const * ee_pointer,
  i_t ee_type )
{
  i_t result;
  if ( store != 0 ) {
    if ( ee_length <= NVS_MAX_ITEM_SIZE ) {
      if ( fseek( store, 0, SEEK_SET ) == 0 ) {
        c_t truncatedtype;
        truncatedtype = (c_t) ( ee_type & 0x00ff );
        /*
         * Search the store for the item.
         */
        if ( ee_type == 0 ) { /* Search by data.  */
          result = ${te_prefix.result}NVS_search( 0, ee_length, ee_pointer, truncatedtype );
        } else {              /* Search by key and type.  */
          result = ${te_prefix.result}NVS_search( ee_key, 0, 0, truncatedtype );
        }
        if ( result == ee_length ) {
          if ( fseek( store, ftell(store), SEEK_SET ) == 0 ) {
            result = fwrite( ee_pointer, 1u, ee_length, store );
            if ( result != ee_length ) {
              result = NVS_ERROR_BAD_WRITE;
            }
          } else {
            result = NVS_ERROR_BAD_SEEK;
          }
        } else {
          /* Allow result from search to propogate.  */
        }
      } else {
        result = NVS_ERROR_BAD_SEEK;
      }
    } else {
      result = NVS_ERROR_ITEM_LONG;
    }
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Bridge:  insert
 */
i_t
${te_prefix.result}NVS_insert(
  u4_t ee_key,
  i_t ee_length,
  c_t const * ee_pointer,
  i_t ee_type )
{
  i_t result = NVS_RETURN_SUCCESS;
  if ( store != 0 ) {
    if ( ee_length <= NVS_MAX_ITEM_SIZE ) {
      if ( ee_length <= ${te_prefix.result}NVS_space_available() ) {
        result = ${te_prefix.result}NVS_update( ee_key, ee_length, ee_pointer, ee_type );
        if ( result <= 0 ) {
          if ( result == NVS_ERROR_NOT_FOUND ) {
            fseek( store, ftell( store ) - NVS_ITEM_SIZE, SEEK_SET );
          } else {
            fseek( store, 0, SEEK_END );
          }
          /*---------------------*/
          /* Load up the item.   */
          /*---------------------*/
          item.length = ee_length;
          item.key = ee_key;
          item.type = (c_t) ( ee_type & 0x00ff );
          result = fwrite( &item, NVS_ITEM_SIZE, 1u, store );
          if ( result == 1 ) {
            result = fwrite( ee_pointer, 1u, ee_length, store );
            if ( result == ee_length ) {
              space_used = space_used + NVS_ITEM_SIZE + ee_length;
            } else {
              result = NVS_ERROR_BAD_WRITE;
            }
          } else {
            result = NVS_ERROR_BAD_WRITE;
          }
        }
      } else {
        result = NVS_ERROR_NO_ROOM;
      }
    } else {
      result = NVS_ERROR_ITEM_LONG;
    }
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Bridge:  select
 * Input the expected length of the item.  This defines the space in
 * the calling buffer for writing the data.
 * Return the length of the selected item.
 */
i_t
${te_prefix.result}NVS_select(
  u4_t ee_key,
  i_t ee_length,
  c_t * ee_pointer,
  i_t ee_type )
{
  i_t result = NVS_ERROR_NOT_FOUND;
  if ( store != 0 ) {
    /*-------------------------------------*/
    /* Go to beginning of file.            */
    /*-------------------------------------*/
    if ( fseek( store, 0, SEEK_SET ) == 0 ) {
      /*---------------------------------*/
      /* Search the store for the item.  */
      /*---------------------------------*/
      result = ${te_prefix.result}NVS_search( ee_key, 0, 0, ee_type );
      if ( result > 0 ) {
        if ( result <= ee_length ) {
          if ( fread( ee_pointer, 1u, result, store ) != result ) {
            result = NVS_ERROR_BAD_READ;
          }
        } else {
          result = NVS_ERROR_ITEM_LONG;
        }
      }
    } else {
      result = NVS_ERROR_BAD_SEEK;
    }
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}


/*
 * Bridge:  remove 
 * Return NVS_RETURN_SUCCESS when record deleted.
 * Return NVS_RETURN_NOT_FOUND when no record found to be deleted.
 * If data is given, search based on type and data, else type and key.
 */
i_t
${te_prefix.result}NVS_remove(
  u4_t ee_key,
  i_t ee_length,
  c_t const * ee_pointer,
  i_t ee_type )
{
  i_t result = NVS_ERROR_NOT_FOUND;
  if ( store != 0 ) {
    /*
     * Go to beginning of file.
     */
    if ( fseek( store, 0, SEEK_SET ) == 0 ) {
      c_t truncatedtype;
      truncatedtype = (c_t) ( ee_type & 0x00ff );
      /*
       * Search the store for the item.
       */
      if ( ee_length != 0 ) { /* Search by type and data.  */
        result = ${te_prefix.result}NVS_search( 0, ee_length, ee_pointer, truncatedtype );
      } else {               /* Search by key and type.  */
        result = ${te_prefix.result}NVS_search( ee_key, 0, 0, truncatedtype );
      }
      if ( result > 0 ) {
        result = NVS_RETURN_SUCCESS;
        item.key = NVS_MARK_DELETED;
        item.type = NVS_MARK_DELETED;
        if ( fseek( store, 0 - NVS_ITEM_SIZE, SEEK_CUR ) == 0 ) {
          if ( fwrite( &item, NVS_ITEM_SIZE, 1u, store ) == 1 ) {
            space_used = space_used - item.length - NVS_ITEM_SIZE;
          } else {
            result = NVS_ERROR_BAD_WRITE;
          }
        } else {
          result = NVS_ERROR_BAD_SEEK;
        }
      }
    } else {
      result = NVS_ERROR_BAD_SEEK;
    }
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Bridge:  space_available
 */
i_t
${te_prefix.result}NVS_space_available( void )
{
  return NVS_STORAGE_SIZE - space_used - NVS_ITEM_SIZE;
}

/*
 * Bridge:  space_used
 */
i_t
${te_prefix.result}NVS_space_used( void )
{
  return space_used;
}

/*
 * Bridge:  space_total
 * Return the size of the non-volatile storage (NVS).
 */
i_t
${te_prefix.result}NVS_space_total( void )
{
  return NVS_STORAGE_SIZE;
}

/*
 * Bridge:  initialize
 * Set up the internal data structures (and file pointers).
 * Return NVS_RETURN_SUCCESS or error.
 */
i_t
${te_prefix.result}NVS_initialize( void )
{
  i_t result = NVS_RETURN_SUCCESS;
  c_t done = 0;
  space_used = 0;
  /*-------------------------------------------------------*/
  /* Close file.                                           */
  /* Open the file for random access reading and writing.  */
  /*-------------------------------------------------------*/
  if ( store != 0 ) { fclose( store ); }
  store = fopen( NVS_file, "rb+" );
  if ( store != 0 ) {
    do {
      if ( fread( &item, NVS_ITEM_SIZE, 1u, store ) == 1 ) {
        if ( item.length > 0 ) {
          space_used = space_used + item.length + NVS_ITEM_SIZE,
          done = fseek( store, item.length, SEEK_CUR );
        } else {
          done = 1;
        }
      } else {
        done = 1;
      }
    } while ( done == 0 );
    fseek( store, 0, SEEK_SET );
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Bridge:  format
 * Return NVS_RETURN_SUCCESS or error.
 */
i_t
${te_prefix.result}NVS_format( void )
{
  i_t result = NVS_RETURN_SUCCESS;
  /*-------------------------------------------------------*/
  /* Create the file discarding any previous data.         */
  /*-------------------------------------------------------*/
  if ( store != 0 ) { fclose( store ); }
  store = fopen( NVS_file, "wb+" );
  if ( store != 0 ) {
    fclose( store );
    result = ${te_prefix.result}NVS_initialize();
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Copy from one place in a file to another.
 */
static i_t ${te_prefix.result}NVS_copy( i_t, i_t, i_t );
static i_t
${te_prefix.result}NVS_copy(
  i_t dest,
  i_t src,
  i_t length )
{
  c_t buffer[ 64 ];
  i_t chunk, remaining = length;
  while ( remaining > 0 ) {
    chunk = ( remaining > sizeof( buffer ) ) ? sizeof( buffer ) : remaining;
    if ( fseek( store, src, SEEK_SET ) == 0 ) {
      if ( fread( buffer, 1u, chunk, store ) == chunk ) {
        src = ftell( store );
        if ( fseek( store, dest, SEEK_SET ) == 0 ) {
          if ( fwrite( buffer, 1u, chunk, store ) > 0 ) {
            remaining = remaining - chunk;
            dest = ftell( store );
          } else {
            remaining = NVS_ERROR_BAD_WRITE;
          }
        } else {
          remaining = NVS_ERROR_BAD_SEEK;
        }
      } else {
        remaining = NVS_ERROR_BAD_READ;
      }
    } else {
      remaining = NVS_ERROR_BAD_SEEK;
    }
  }
  return remaining;
}


/*
 * Bridge:  defrag
 * - Find a deleted item.
 * - Search ahead for a non-deleted item.
 * - Move non-deleted item down over deleted item.
 */
i_t
${te_prefix.result}NVS_defrag( void )
{
  i_t result = NVS_RETURN_SUCCESS;
  i_t contiguous, middle, scan;
  /*-------------------------------------*/
  /* Go to beginning of file.            */
  /*-------------------------------------*/
  if ( fseek( store, 0, SEEK_SET ) == 0 ) {
    /*---------------------------------------*/
    /* Search the store for a deleted item.  */
    /*---------------------------------------*/
    if ( ${te_prefix.result}NVS_search( NVS_MARK_DELETED, 0, 0, NVS_MARK_DELETED ) > 0 ) {
      contiguous = ftell( store ) - NVS_ITEM_SIZE;
      if ( item.length > 0 ) {
        /* Skip up past instance data.  */
        fseek( store, item.length, SEEK_CUR );
      } else {
        return 1;
      }
      while ( result == 0 ) {
        if ( ${te_prefix.result}NVS_nsearch( NVS_MARK_DELETED, NVS_MARK_DELETED ) > 0 ) {
          middle = ftell( store ) - NVS_ITEM_SIZE;
          scan = middle + item.length + NVS_ITEM_SIZE;
          if ( ( result =
            ${te_prefix.result}NVS_copy( contiguous, middle, item.length + NVS_ITEM_SIZE ) )
            < 0 ) {
            break;
          }
          contiguous = contiguous + NVS_ITEM_SIZE + item.length;
          fseek( store, scan, SEEK_SET );
        } else {
          /* No more useful items after, so mark end of data.  */
          fseek( store, contiguous, SEEK_SET );
          item.key = NVS_MARK_DELETED;
          item.type = NVS_MARK_DELETED;
          item.length = 0;
          fwrite( &item, NVS_ITEM_SIZE, 1u, store );
          break;
        }
      }
    }
  } else {
    result = NVS_ERROR_BAD_SEEK;
  }
  return result;
}

/*
 * Bridge:  next
 * The input ee_length gives the storage available for copying in
 * a record of data.
 * Return the length of the record returned.
 * Write the data into the input pointer.
 */
i_t
${te_prefix.result}NVS_next(
  u4_t * ee_key,
  i_t ee_length,
  c_t * ee_pointer,
  i_t * ee_type )
{
  i_t result = NVS_RETURN_SUCCESS;
  if ( store != 0 ) {
    if ( fread( &item, NVS_ITEM_SIZE, 1u, store ) == 1 ) {
      if ( item.length <= ee_length ) {
        if ( fread( ee_pointer, 1u, item.length, store ) == item.length ) {
          result = item.length;
          *ee_key = item.key;
          *ee_type = item.type;
        } else {
          result = NVS_ERROR_BAD_READ;
        }
      } else {
        result = NVS_ERROR_ITEM_LONG;
      }
    } else {
      result = NVS_ERROR_BAD_READ;
    }
  } else {
    result = NVS_ERROR_BAD_OPEN;
  }
  return result;
}

/*
 * Bridge:  checksum
 * Calculate a checksum on the data in the non-volatile store (NVS).
 * Return zero when happy.
 *
 * Note:  This is not implemented by MC-3020.
 *        Customer/User must supply this capability.
 */
i_t
${te_prefix.result}NVS_checksum(
  i_t ee_first,
  i_t ee_second )
{
  i_t result = -1;   /* Fail, since we have no code.  */
  return result;
}

/*
 * Bridge:  version
 * Return a version that can be used by the application.
 * An argument is supplied so that a version may also be written
 * if desired.
 * Return the version as an integer.
 *
 * Note:  This is not implemented by MC-3020.
 *        Customer/User must supply this capability.
 */
i_t
${te_prefix.result}NVS_version(
  i_t ee_first,
  i_t ee_second )
{
  if ( ee_first == 1 ) {
    version = ee_second;
  }
  return version;
}
.//
