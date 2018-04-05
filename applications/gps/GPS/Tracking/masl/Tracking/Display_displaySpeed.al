state Tracking::Display.displaySpeed () is
session: instance of WorkoutSession;
speed: real;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  speed := session.getCurrentSpeed();
  UI~>setData(speed, kmPerHour);
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
