domain maslsupsub is

  object a_class;
  object b_class;
  object puzzle;
  object garden;
  object general;

  private type domtyp;
  private type domtyp is integer;
  public service public_service_1 ( val: in integer );
  relationship R1 is a_class conditionally uses many b_class,
                     b_class unconditionally is_used_by one a_class;
  relationship R2 is puzzle is_a ( general, garden );

  object a_class is
    name: preferred integer;
    public instance service get_name () return integer;
  end object;

  object b_class is
    i: integer;
    bid: preferred integer;
    name: referential ( R1.is_used_by.a_class.name ) integer;
  end object;
  pragma id ( 1 ); pragma big_pragname_for_testing ( "string goes here" );

  object puzzle is
    pid: preferred integer;
    event solve ();
    event done ( value: in integer );
  end object;

  object garden is

    //! this is the growing ratio
    //! this is line two
    //! a third line
    percentage: integer;
    //! the ID of the garden comes from the supertype (puzzle)
    pid: preferred referential ( R2.pid ) integer;

    state juicing_the_orange ();
    state juicing_the_tomato ( value: in integer );
    state growing_the_tomato ( value: in integer );
    state growing_the_carrot ( value: in integer );
    state done ( value: in integer );

    transition is
      Non_Existent ( puzzle.solve => Cannot_Happen,
                     puzzle.done => Cannot_Happen );
      juicing_the_orange ( puzzle.solve => juicing_the_orange,
                           puzzle.done => juicing_the_tomato );
      juicing_the_tomato ( puzzle.solve => Cannot_Happen,
                           puzzle.done => growing_the_tomato );
      growing_the_tomato ( puzzle.solve => Cannot_Happen,
                           puzzle.done => growing_the_carrot );
      growing_the_carrot ( puzzle.solve => Cannot_Happen,
                           puzzle.done => done );
      done ( puzzle.solve => juicing_the_orange,
             puzzle.done => Cannot_Happen );
    end transition;

  end object;

  object general is
    accumulator: integer;
    pid: preferred referential ( R2.pid ) integer;

    state adding ();
    state subtracting ( value: in integer );
    state multiplying ( value: in integer );
    state dividing ( value: in integer );
    state logging_result ( value: in integer );
    state finished ();

    event go ();

    transition is
      Non_Existent ( puzzle.solve => Cannot_Happen,
                     go => Cannot_Happen,
                     puzzle.done => Cannot_Happen );
      adding ( puzzle.solve => adding,
               go => Cannot_Happen,
               puzzle.done => subtracting );
      subtracting ( puzzle.solve => Cannot_Happen,
                    go => Cannot_Happen,
                    puzzle.done => multiplying );
      multiplying ( puzzle.solve => Cannot_Happen,
                    go => Cannot_Happen,
                    puzzle.done => dividing );
      dividing ( puzzle.solve => Cannot_Happen,
                 go => Cannot_Happen,
                 puzzle.done => logging_result );
      logging_result ( puzzle.solve => Cannot_Happen,
                       go => finished,
                       puzzle.done => Cannot_Happen );
      finished ( puzzle.solve => adding,
                 go => Cannot_Happen,
                 puzzle.done => Cannot_Happen );
    end transition;

  end object;

end domain;
