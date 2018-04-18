state HeartRateMonitor::HeartRateMonitor.monitoring () is
begin
  HRChange~>heartRateChanged(this.recentHeartRate);
  this.recentHeartRate := this.recentHeartRate + 1;
end state;
