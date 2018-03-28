state HeartRateMonitor::HeartRateMonitor.Unregistering () is
begin
  cancel this.timer;
  //if ( res )
  //  LOG::LogSuccess( message: "Heart Rate Monitor: timer_cancel() succeeded." );
  //else
  //  LOG::LogFailure( message: "Heart Rate Monitor: timer_cancel() failed." );
  //end if;

  generate HeartRateMonitor.unregisterComplete() to this;
end state;
