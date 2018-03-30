state Tracking::WorkoutTimer.resetLap () is
trackLog: instance of TrackLog;
begin
  trackLog := find_one TrackLog();
  if (null /= trackLog) then
    trackLog.addLapMarker();
  end if;
  generate WorkoutTimer.lapResetComplete() to this;
end state;
