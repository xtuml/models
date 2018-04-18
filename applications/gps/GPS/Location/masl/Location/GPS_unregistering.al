state Location::GPS.unregistering () is
begin
  // Deactivate the timer.
  cancel this.timer;
  LOG::LogInfo("Location listener unregistered.");
  generate GPS.unregisterComplete() to this;
end state;
