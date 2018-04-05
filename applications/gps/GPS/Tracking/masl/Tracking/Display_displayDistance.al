state Tracking::Display.displayDistance () is
session: instance of WorkoutSession;
distance: real;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  distance := session.accumulatedDistance;
  if ( distance > 1000.0 ) then
    UI~>setData(distance / 1000.0, km);
  else 
    UI~>setData(distance, meters);
  end if;
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
