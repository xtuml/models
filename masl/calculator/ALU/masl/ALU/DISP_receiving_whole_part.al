state ALU::Display.receiving_whole_part ( key: in integer ) is
mem : instance of Memory;
op : instance of Operation;
begin
  // .
  if ( 15 = key ) then
    generate Display.point( key ) to this;
  // numbers 0-9
  elsif ( 0 <= key and key <= 9 ) then
    // add to the whole part
    if ( 0 = this.whole_part ) then
      this.whole_part := integer(key);
    else
      this.whole_part := key + this.whole_part * 10;
    end if;
    this.value := this.sign * ( real(this.whole_part) + this.fractional_part );
    // display the new value
    disp~>result( this.value );
  // +, -, *, /, =
  elsif ( 10 <= key and key <= 14) then
    generate Display.operator( key ) to this;
  else
    generate Display.error( "invalid key press" ) to this;
  end if;
end state;
