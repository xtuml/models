state Tracking::WorkoutTimer.running () is
wtc: instance of WorkoutTimerConstants;
trackLog: instance of TrackLog;
begin
  // Update the stopwatch time.
  WorkoutTimerConstants.initialize();
  wtc := find_one WorkoutTimerConstants();
  this.time := this.time + wtc.timerPeriod;
  
  // Store a new track point.
  trackLog := this->R8.acts_as_the_stopwatch_for.WorkoutSession->R4.captures_path_in.TrackLog;
  trackLog.addTrackPoint();
  
  // Refresh the user interface.
  UI~>setTime(this.time);
end state;
