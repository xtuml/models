state Tracking::WorkoutTimer.processingStart () is
begin
  // Start the timer.
  this.activate();
  generate WorkoutTimer.startTimer() to this;
end state;
