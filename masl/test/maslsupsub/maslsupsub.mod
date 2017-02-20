domain maslsupsub is
  
  object a_class;
  object b_class;
  object garden;
  object general;
  object puzzle;
  
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
  
  object garden is
    
    //! this is the growing ratio
    //! this is line two
    //! a third line
    percentage: integer;     
    //! the ID of the garden comes from the supertype (puzzle)
    pid: preferred referential ( R2.pid ) integer;     
    
    state juicing_the_orange ();     
    state juicing_the_tomato ();     
    state growing_the_tomato ();     
    state growing_the_carrot ();     
    state done ();     
    
    event solve ();     
    event done ();     
    
    transition is
      Non_Existent ( solve => Cannot_Happen,
                     done => Cannot_Happen );       
      juicing_the_orange ( solve => juicing_the_orange,
                           done => juicing_the_tomato );       
      juicing_the_tomato ( solve => Cannot_Happen,
                           done => growing_the_tomato );       
      growing_the_tomato ( solve => Cannot_Happen,
                           done => growing_the_carrot );       
      growing_the_carrot ( solve => Cannot_Happen,
                           done => done );       
      done ( solve => juicing_the_orange,
             done => Cannot_Happen );       
    end transition;
    
  end object;
  
  object general is
    
    accumulator: integer;     
    pid: preferred referential ( R2.pid ) integer;     
    
    state adding ();     
    state subtracting ();     
    state multiplying ();     
    state dividing ();     
    state logging_result ();     
    state finished ();     
    
    event solve ();     
    event go ();     
    event done ();     
    
    transition is
      Non_Existent ( solve => Cannot_Happen,
                     go => Cannot_Happen,
                     done => Cannot_Happen );       
      adding ( solve => adding,
               go => Cannot_Happen,
               done => subtracting );       
      subtracting ( solve => Cannot_Happen,
                    go => Cannot_Happen,
                    done => multiplying );       
      multiplying ( solve => Cannot_Happen,
                    go => Cannot_Happen,
                    done => dividing );       
      dividing ( solve => Cannot_Happen,
                 go => Cannot_Happen,
                 done => logging_result );       
      logging_result ( solve => Cannot_Happen,
                       go => finished,
                       done => Cannot_Happen );       
      finished ( solve => adding,
                 go => Cannot_Happen,
                 done => Cannot_Happen );       
    end transition;
    
  end object;
  
  object puzzle is
    
    pid: preferred integer;     
    
    event solve ();     
    event done ( value: in integer );     
    event finished ();     
    
  end object;
  
  
end domain;
