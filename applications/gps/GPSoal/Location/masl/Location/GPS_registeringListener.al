state Location::GPS.registeringListener () is
simgps: instance of simulatedGPS;
begin
  // Activate the simulated GPS (this creates the GPS instance, if needed).
  // Establish recurring timer for periodic position updates.
  simulatedGPS.initialize();
  simgps := find_one simulatedGPS();
  schedule this.timer generate GPS.tick() to this delay @PT0.000001@ * simgps.updatePeriod delta @PT0.000001@ * simgps.updatePeriod;
  LOG::LogInfo( "Location listener registered.");  

  generate GPS.registeringComplete() to this;
end state;
