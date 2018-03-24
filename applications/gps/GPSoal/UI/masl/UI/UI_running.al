state UI::UI.running () is
uiconst: instance of UIConstants;
ui: instance of UI;
signal_no: integer;
begin
  uiconst := find_one UIConstants();
  if ( null = uiconst ) then
    UIConstants.initialize();
    uiconst := find_one UIConstants();
  end if;
  signal_no := this.poll();
  if ( uiconst.SOCKET_ERROR = signal_no ) then
    this.socket_id := uiconst.SOCKET_ERROR;
    cancel this.timer;
  elsif ( uiconst.SIGNAL_NO_START_STOP_PRESSED = signal_no ) then
    generate UI.startStopPressed() to this;
  elsif ( uiconst.SIGNAL_NO_TARGET_PRESSED = signal_no ) then
    generate UI.setTargetPressed() to this;
  elsif ( uiconst.SIGNAL_NO_LAP_RESET_PRESSED = signal_no )	then
    generate UI.lapResetPressed() to this;
  elsif ( uiconst.SIGNAL_NO_LIGHT_PRESSED = signal_no )	then
    generate UI.lightPressed() to this;
  elsif ( uiconst.SIGNAL_NO_MODE_PRESSED = signal_no ) then
    generate UI.modePressed() to this;
  end if;
end state;
