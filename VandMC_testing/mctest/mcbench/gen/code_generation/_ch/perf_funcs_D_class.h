/*----------------------------------------------------------------------------
 * File:  perf_funcs_D_class.h
 *
 * Class:       d  (D)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_D_CLASS_H
#define PERF_FUNCS_D_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   d  (D)
 */
struct perf_funcs_D {

  /* application analysis class attributes */
  i_t dID;  /* * dID */
  i_t cID;  /* - cID (R2) */
  /* relationship storage */
  perf_funcs_C * C_R2;
};

void perf_funcs_D_R2_Link( perf_funcs_C *, perf_funcs_D * );
void perf_funcs_D_R2_Unlink( perf_funcs_C *, perf_funcs_D * );

#define perf_funcs_D_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_D_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_D_CLASS_H */
