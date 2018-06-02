state ALU::Display.displaying_error ( message: in string ) is
begin
  // send the error to the display
  disp~>error( message );
end state;
