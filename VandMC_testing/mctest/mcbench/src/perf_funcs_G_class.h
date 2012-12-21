/*----------------------------------------------------------------------------
 * File:  perf_funcs_G_class.h
 *
 * Class:       g  (G)
 * Component:   perf_funcs
 *
 * (C) Copyright 1998-2012 Mentor Graphics Corporation.  All rights reserved.
 *--------------------------------------------------------------------------*/

#ifndef PERF_FUNCS_G_CLASS_H
#define PERF_FUNCS_G_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   g  (G)
 */
struct perf_funcs_G {

  /* application analysis class attributes */
  i_t eID;  /* * eID (R3) */
  i_t fID;  /* * fID (R3) */

  /* relationship storage */
  perf_funcs_E * E_R3;
  perf_funcs_F * F_R3;
};

void perf_funcs_G_R3_Link( perf_funcs_E *, perf_funcs_F *, perf_funcs_G * );
void perf_funcs_G_R3_Unlink( perf_funcs_E *, perf_funcs_F *, perf_funcs_G * );


#define perf_funcs_G_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_perf_funcs_G_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* PERF_FUNCS_G_CLASS_H */


