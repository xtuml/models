state UI::TestCase.pressStartStop () is
handle: timer;
begin
  if (this.iterations > 0) then
    this.iterations := this.iterations - 1;
    schedule handle generate TestCase.doDelay() to this delay @PT4S@;
    Tracking~>startStopPressed();
  else
    generate TestCase.finish() to this;
    Tracking~>lapResetPressed();
  end if;
end state;
