state UI::UI.setTargetPressed () is
begin
  sendTargetPressed();
  generate UI.running() to this;
end state;
