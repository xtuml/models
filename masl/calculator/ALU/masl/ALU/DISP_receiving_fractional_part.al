state ALU::Display.receiving_fractional_part ( key: in integer ) is
begin
  // .
  if ( 15 = key ) then
    // ignore
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    // add to the fractional part
    this.fractional_part := this.fractional_part + ( key / 10.0 );
    this.value := this.sign * ( real(this.whole_part) + this.fractional_part );
    // display the new value
    disp~>result( this.value );
  // +, -, *, /, =
  elsif ( 10 <= key and key <= 14 ) then
    generate Display.operator( key ) to this;
  else
    generate Display.error( "invalid key press" ) to this;
  end if;
end state;
