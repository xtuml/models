state Tracking::Display.displayHeartRate () is
session: instance of WorkoutSession;
heartRate: integer;
begin
  session := this->R7.indicates_current_status_of.WorkoutSession;
  heartRate := session.getCurrentHeartRate();
  UI~>setData(UI::bpm, real(heartRate));
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
