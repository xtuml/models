domain MissingStateAction is
  object Super;
  object Sub;

  relationship R1 is Super is_a (Sub);

  object Super is
    id : preferred integer;
    event supEvent   ( param : in integer );
  end object;

  object Sub is
    id : preferred referential (R1.id) integer;
    event subEvent   ( param : in integer );
    state processing ( param : in integer );

    transition is 
      Non_Existent ( 
        Super.supEvent => Cannot_Happen,
        subEvent       => Cannot_Happen );  
      processing (
        Super.supEvent => processing,
        subEvent       => processing );  
    end transition;
  end object;

end domain;

