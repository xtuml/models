state ALU::Display.displaying_memory_value () is
begin
  // reset the display
  this.clearDisplay();
  // display the value in memory
  disp~>result( (this->R3.Memory).value );
end state;
