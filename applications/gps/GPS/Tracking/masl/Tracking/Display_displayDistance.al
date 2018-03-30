state Tracking::Display.displayDistance () is
session: instance of WorkoutSession;
distance: real;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  distance := session.accumulatedDistance;
  if ( distance > 1000.0 ) then
    UI~>setData(km, distance / 1000.0);
  else 
    UI~>setData(meters, distance);
  end if;
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
