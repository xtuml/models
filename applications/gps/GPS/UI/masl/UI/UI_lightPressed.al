state UI::UI.lightPressed () is
begin
  sendLightPressed();
  generate UI.running() to this;
end state;
