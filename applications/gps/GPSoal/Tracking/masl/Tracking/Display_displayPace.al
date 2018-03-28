state Tracking::Display.displayPace () is
session: instance of WorkoutSession;
pace: real;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  pace := session.getCurrentPace();
  UI~>setData(minPerKm, pace);
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
