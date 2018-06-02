domain ALU is
  object Calculator;
  object Display;
  object Memory;
  object Operation;
    public service key (
        code : in integer    );
    public service clear (
    );
    private service testcase1 (
    );
pragma scenario ( 1 ); pragma test_only ( true ); 
    private service testcase2 (
    );
pragma scenario ( 2 ); pragma test_only ( true ); 
    private service testcase3 (
    );
pragma scenario ( 3 ); pragma test_only ( true ); 
    private service testcase4 (
    );
pragma scenario ( 4 ); pragma test_only ( true ); 
  terminator disp is
    public service result (
        value : in real    );
    public service error (
        message : in string    );
  end terminator;
  relationship R1 is Calculator unconditionally prints_answer_on one Display,
    Display unconditionally displays_values_for one Calculator;
  relationship R2 is Calculator unconditionally stores_value_for_calculation_in one Memory,
    Memory unconditionally stores_value_for one Calculator;
  relationship R3 is Memory unconditionally combines_with one Display,
    Display unconditionally combines_with one Memory
    using Operation;
  object Calculator is
    calc_id : preferred unique integer;
    current_op :   integer;
    public instance service init (
    );
  end object;
pragma key_letter ( "CALC" ); 
  object Display is
    calc_id : preferred  referential ( R1.displays_values_for.Calculator.calc_id ) integer;
    value :   real;
    whole_part :   integer;
    fractional_part :   real;
    sign :   integer;
    public instance service clearDisplay (
    );
     state displaying_memory_value();
     state toggling_sign(        key : in integer);
     state receiving_whole_part(        key : in integer);
     state receiving_fractional_part(        key : in integer);
     state evaluating(        key : in integer);
     state displaying_error(        message : in string);
     event keypress(        key : in integer);
     event point(        key : in integer);
     event operator(        key : in integer);
     event digit(        key : in integer);
     event error(        message : in string);
     event reset();
     transition is
      Non_Existent (
        keypress => Cannot_Happen,
        point => Cannot_Happen,
        operator => Cannot_Happen,
        digit => Cannot_Happen,
        error => Cannot_Happen,
        reset => Cannot_Happen      ); 
      displaying_memory_value (
        keypress => toggling_sign,
        point => Cannot_Happen,
        operator => Cannot_Happen,
        digit => Cannot_Happen,
        error => Cannot_Happen,
        reset => displaying_memory_value      ); 
      toggling_sign (
        keypress => toggling_sign,
        point => receiving_fractional_part,
        operator => Cannot_Happen,
        digit => receiving_whole_part,
        error => displaying_error,
        reset => displaying_memory_value      ); 
      receiving_whole_part (
        keypress => receiving_whole_part,
        point => receiving_fractional_part,
        operator => evaluating,
        digit => Cannot_Happen,
        error => displaying_error,
        reset => displaying_memory_value      ); 
      receiving_fractional_part (
        keypress => receiving_fractional_part,
        point => Cannot_Happen,
        operator => evaluating,
        digit => Cannot_Happen,
        error => displaying_error,
        reset => displaying_memory_value      ); 
      evaluating (
        keypress => Cannot_Happen,
        point => Cannot_Happen,
        operator => Cannot_Happen,
        digit => Cannot_Happen,
        error => displaying_error,
        reset => displaying_memory_value      ); 
      displaying_error (
        keypress => Cannot_Happen,
        point => Cannot_Happen,
        operator => Cannot_Happen,
        digit => Cannot_Happen,
        error => Cannot_Happen,
        reset => displaying_memory_value      ); 
    end transition;
  end object;
pragma key_letter ( "DISP" ); 
  object Memory is
    calc_id : preferred  referential ( R2.stores_value_for.Calculator.calc_id ) integer;
    value :   real;
    public instance service store (
        value : in real    );
    public instance service reset (
    );
  end object;
pragma key_letter ( "MEM" ); 
  object Operation is
    calc_id : preferred  referential ( R3.combines_with.Memory.calc_id, R3.combines_with.Display.calc_id ) integer;
    op :   integer;
    public instance service evaluate (
    );
  end object;
pragma key_letter ( "OP" ); 
end domain;
pragma number ( 1 ); 
