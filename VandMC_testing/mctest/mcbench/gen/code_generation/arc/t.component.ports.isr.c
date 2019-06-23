#include "${te_file.registers}.${te_file.hdr_file_ext}"
/*----------------------------------------------------------------------------
 * component ISR/polling interface
 *--------------------------------------------------------------------------*/
void ${te_c.Name}_POLL( void );
void 
${te_c.Name}_POLL( void )
{
  static char outCountP = 0;
  static volatile u4_t ${te_c.Name}_status_register;
  u4_t ${te_c.Name}_status = ${te_c.Name}_status_register;
  /*
   * Based on the value in the status register, read parameters and
   * invoke the appropriate port message.
   */
