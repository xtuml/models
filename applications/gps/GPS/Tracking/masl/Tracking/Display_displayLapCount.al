state Tracking::Display.displayLapCount () is
lapMarkers: set of instance of LapMarker;
begin
  lapMarkers := this->R7.indicates_current_status_of.WorkoutSession->R4.captures_path_in.TrackLog->R5.has_laps_defined_by.LapMarker;
  UI~>setData(laps, real(lapMarkers'length));
  UI~>setIndicator( Display.goalDispositionIndicator() );
end state;
