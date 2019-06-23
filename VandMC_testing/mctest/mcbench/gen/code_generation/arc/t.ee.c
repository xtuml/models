.//============================================================================
.// External Entity bridge process skeleton generator.
.//============================================================================
.//
.//
/*----------------------------------------------------------------------------
 * Description:   Methods for bridging to an external entity.
.if ( ( 0 < te_sys.StateSaveBufferSize ) and ( "State Save" == te_ee.Name ) and ( "SS" == te_ee.Key_Lett ) )
 *
 * State Save
 * This bridge file (SS_bridge.c) compiles two ways.  It compiles as part of
 * the embedded application, and it compiles into a small program that converts
 * a state save into human readable form.
 *
 * Modify this file to taste.  Copy the modified SS_bridge.c into
 * the /gen folder of your project.  It is also an option to modify
 * the model compiler templates.  Look at files t.ee.ss.*.
 *
 * To compile this program:
 * gcc -DESCHER_STATESAVE -o ssconvert SS_bridge.c
 *
 * To execute the program:
 * ./ssconvert < ssfile.4bytes
.end if
 *
 * External Entity:  ${te_ee.Name} (${te_ee.Key_Lett})
 * ${te_ee.Descrip}
 * ${te_copyright.body}
 *--------------------------------------------------------------------------*/

${include_files.body}\
.if ( ( 0 < te_sys.PersistentClassCount ) and ( "NVS" == te_ee.Key_Lett ) )
#include "${te_file.nvs}.${te_file.hdr_file_ext}"
.end if
.if ( ( 0 < te_sys.StateSaveBufferSize ) and ( "State Save" == te_ee.Name ) and ( "SS" == te_ee.Key_Lett ) )
static void sstrigger( void );
.include "${te_file.arc_path}/t.ee.ss.c"
.end if
.if ( ( "ARCH" == te_ee.Key_Lett ) and ( "C" == te_target.language ) )
extern bool ${te_eq.run_flag}; /* Turn this false to stop the event queues.  */
.end if
${ee_body.body}
.//
