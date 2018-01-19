state keypad::UI.idle () is
begin
  // tick on an interval
  schedule this.ticker generate UI.tick() to this delay this.ticklen;
end state;
