state ALU::Display.toggling_sign ( key: in integer ) is
begin
  // -
  if ( 11 = key ) then
    // toggle the sign
    this.sign := -1;
  // .
  elsif ( 15 = key ) then
    generate Display.point( key ) to this;
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    generate Display.digit( key ) to this;
  else
    generate Display.error( "Invalid key press" ) to this;
  end if;
end state;
