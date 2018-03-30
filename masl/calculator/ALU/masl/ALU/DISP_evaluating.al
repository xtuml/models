state ALU::Display.evaluating ( key: in integer ) is
begin
  // evaluate with the last saved operation
  (this->R3.Operation).op := (this->R1.Calculator).current_op;
  (this->R3.Operation).evaluate();
  // store the operation for the next evaluation
  (this->R1.Calculator).current_op := key;
  // reset the display
  generate Display.reset() to this;
end state;
