state UI::UI.startStopPresssed () is
begin
  sendStartStopPressed();
  generate UI.running() to this;
end state;
