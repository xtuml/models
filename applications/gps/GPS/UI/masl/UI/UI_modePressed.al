state UI::UI.modePressed () is
begin
  sendModePressed();
  generate UI.running() to this;
end state;
