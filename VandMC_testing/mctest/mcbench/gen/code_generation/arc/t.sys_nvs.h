/*----------------------------------------------------------------------------
 * Non-Volatile Storage (NVS) is used to persist class instances and
 * link instances for MC-3020 applications.
 *
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

#ifndef $u{te_file.nvs}_$u{te_file.hdr_file_ext}
#define $u{te_file.nvs}_$u{te_file.hdr_file_ext}
${te_target.c2cplusplus_linkage_begin}

#define NVS_RETURN_SUCCESS    0 /* All is well.                    */
#define NVS_ERROR_BAD_OPEN   -1 /* Could not open file.            */
#define NVS_ERROR_ITEM_LONG  -2 /* Data item is too long.          */
#define NVS_ERROR_BAD_SEEK   -3 /* Could not seek correctly.       */
#define NVS_ERROR_BAD_WRITE  -4 /* File did not write correctly.   */
#define NVS_ERROR_NOT_FOUND  -5 /* Did not find searched record.   */
#define NVS_ERROR_BAD_READ   -6 /* Read incorrect length of data.  */
#define NVS_ERROR_NO_ROOM    -7 /* Not enough room for insert.     */
#define NVS_ERROR_LENGTH     -8 /* Length not correct.             */
#define NVS_STORAGE_SIZE 0xffff
#define NVS_MAX_ITEMS      4000
#define NVS_MAX_ITEM_SIZE   512

i_t ${te_prefix.result}NVS_checksum( i_t, i_t );
i_t ${te_prefix.result}NVS_defrag( void );
i_t ${te_prefix.result}NVS_remove( u4_t, i_t, c_t const *, i_t );
i_t ${te_prefix.result}NVS_format( void );
i_t ${te_prefix.result}NVS_initialize( void );
i_t ${te_prefix.result}NVS_insert( u4_t, i_t, c_t const *, i_t );
i_t ${te_prefix.result}NVS_next( u4_t *, i_t, c_t *, i_t * );
i_t ${te_prefix.result}NVS_select( u4_t, i_t, c_t *, i_t );
i_t ${te_prefix.result}NVS_space_available( void );
i_t ${te_prefix.result}NVS_space_total( void );
i_t ${te_prefix.result}NVS_space_used( void );
i_t ${te_prefix.result}NVS_update( u4_t, i_t, c_t const *, i_t );
i_t ${te_prefix.result}NVS_version( i_t, i_t );

${te_target.c2cplusplus_linkage_end}
#endif   /* $u{te_file.nvs}_$u{te_file.hdr_file_ext} */
.//
