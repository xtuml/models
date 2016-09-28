/*----------------------------------------------------------------------------
 * File:  perf_funcs_F_class.h
 *
 * Class:       f  (F)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_F_CLASS_H
#define PERF_FUNCS_F_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   f  (F)
 */
struct perf_funcs_F {

  /* application analysis class attributes */
  i_t fID;  /* * fID */
  /* relationship storage */
  perf_funcs_G * G_R3;
};



#define perf_funcs_F_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_F_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_F_CLASS_H */
