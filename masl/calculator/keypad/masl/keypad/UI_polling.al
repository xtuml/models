state keypad::UI.polling () is
evt : calcevent;
begin
  // empty the pending event queue
  evt := getPendingEvent();
  while ( NULLEVT /= evt.event_type ) loop
    // send message
    if ( KEYPRESS = evt.event_type ) then
      keyIO~>key( evt.extra_data );
    elsif ( CLEAR = evt.event_type ) then
      keyIO~>clear();
    end if;
    // check for the next event
    evt := getPendingEvent();
  end loop;
  // go back to idle
  generate UI.done() to this;
end state;
