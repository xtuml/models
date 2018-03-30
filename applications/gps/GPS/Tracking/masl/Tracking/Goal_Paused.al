state Tracking::Goal.Paused () is
begin
  // Deactivate evaluation timer, ignoring the return code because this 
  //   state model ignores any latent timer events.
  cancel this.evaluationTimer;
end state;
