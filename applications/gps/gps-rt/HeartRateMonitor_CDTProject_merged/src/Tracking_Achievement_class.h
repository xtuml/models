/*----------------------------------------------------------------------------
 * File:  Tracking_Achievement_class.h
 *
 * Class:       Achievement  (Achievement)
 * Component:   Tracking
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef TRACKING_ACHIEVEMENT_CLASS_H
#define TRACKING_ACHIEVEMENT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Achievement  (Achievement)
 */
struct Tracking_Achievement {

  /* application analysis class attributes */
  i_t startTime;  /* - startTime */
  i_t endTime;  /* - endTime */

  /* relationship storage */
  /* Note:  No storage needed for Achievement->Goal[R12] */
  Tracking_Goal * Goal_R14_is_open_for;
};
void Tracking_Achievement_op_close( Tracking_Achievement * );

void Tracking_Achievement_R12_Link_has_recorded( Tracking_Goal *, Tracking_Achievement * );
void Tracking_Achievement_R12_Unlink_has_recorded( Tracking_Goal *, Tracking_Achievement * );
void Tracking_Achievement_R14_Link_has_open( Tracking_Goal *, Tracking_Achievement * );
void Tracking_Achievement_R14_Unlink_has_open( Tracking_Goal *, Tracking_Achievement * );


#define Tracking_Achievement_MAX_EXTENT_SIZE 200
extern Escher_Extent_t pG_Tracking_Achievement_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* TRACKING_ACHIEVEMENT_CLASS_H */


