state Tracking::Display.displaySpeed () is
session: instance of WorkoutSession;
speed: real;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  speed := session.getCurrentSpeed();
  UI~>setData(UI::kmPerHour, speed);
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
