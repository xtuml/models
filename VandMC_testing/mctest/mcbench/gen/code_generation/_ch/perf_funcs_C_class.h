/*----------------------------------------------------------------------------
 * File:  perf_funcs_C_class.h
 *
 * Class:       c  (C)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_C_CLASS_H
#define PERF_FUNCS_C_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   c  (C)
 */
struct perf_funcs_C {

  /* application analysis class attributes */
  i_t cID;  /* * cID */
  /* relationship storage */
  Escher_ObjectSet_s D_R2;
};

#define perf_funcs_D_R2_From_C( C ) ( &((C)->D_R2) )

#define perf_funcs_C_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_C_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_C_CLASS_H */
