state UI::UI.lapResetPressed () is
begin
  sendLapResetPressed();
  generate UI.running() to this;
end state;
