state Tracking::WorkoutTimer.stopped () is
session: instance of WorkoutSession;
display: instance of Display;
begin
  // Reset the session
  session := this->R8.acts_as_the_stopwatch_for.WorkoutSession;
  session.reset();
  
  // Update the UI.
  UI~>setTime(this.time);
  display := this->R8.acts_as_the_stopwatch_for.WorkoutSession->R7.current_status_indicated_on.Display;
  generate Display.refresh() to display;
end state;
