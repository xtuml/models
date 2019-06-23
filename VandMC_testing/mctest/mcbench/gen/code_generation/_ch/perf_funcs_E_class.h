/*----------------------------------------------------------------------------
 * File:  perf_funcs_E_class.h
 *
 * Class:       e  (E)
 * Component:   perf_funcs
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_E_CLASS_H
#define PERF_FUNCS_E_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   e  (E)
 */
struct perf_funcs_E {

  /* application analysis class attributes */
  i_t eID;  /* * eID */
  /* relationship storage */
  perf_funcs_G * G_R3;
};



#define perf_funcs_E_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_E_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_E_CLASS_H */
