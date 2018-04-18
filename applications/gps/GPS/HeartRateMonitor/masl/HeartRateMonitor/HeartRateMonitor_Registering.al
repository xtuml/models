state HeartRateMonitor::HeartRateMonitor.Registering () is
hrc: instance of HeartRateConstants;
begin
  this.recentHeartRate := 50;

  LOG::LogInfo("listener registered");

  // start timer
  HeartRateConstants.initialize();
  hrc := find_one HeartRateConstants();
  schedule this.timer generate HeartRateMonitor.timeout() to this delay @PT1S@ * hrc.HeartRateSamplingPeriod delta @PT1S@ * hrc.HeartRateSamplingPeriod;

  generate HeartRateMonitor.registerComplete() to this;
end state;
