state Location::GPS.locating () is
simgps: instance of simulatedGPS;
begin
  // Simulate movement.
  simulatedGPS.initialize();
  simgps := find_one simulatedGPS();
  if ( (this.motionSegments rem 3) = 0 ) then
    this.currentLongitude := this.currentLongitude + (simgps.longitudeIncrement * 2);
    this.currentLatitude := this.currentLatitude + simgps.latitudeIncrement;
  elsif ( (this.motionSegments rem 5) = 0 ) then
    this.currentLongitude := this.currentLongitude + simgps.longitudeIncrement;
    this.currentLatitude := this.currentLatitude + (simgps.latitudeIncrement * 3);
  else
    this.currentLongitude := this.currentLongitude + simgps.longitudeIncrement;
    this.currentLatitude := this.currentLatitude + simgps.latitudeIncrement;
  end if;
  // Increment simulated motion segment count.
  this.motionSegments := this.motionSegments + 1;
end state;
