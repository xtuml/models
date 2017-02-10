domain refactor is
  
  object A;
  object B;
  
  private type type1 is structure
    member1: integer;     
    member2: string;     
  end structure;   
  private type type2 is enum ( RED, GREEN, BLUE );   
  
  public service foo ();   
  private service bar ( param1: in integer );   
  
  
  terminator the_terminator is
    private service term1 ( term_param1: in integer );     
  end terminator;
  
  
  
  relationship R1 is A unconditionally bend one B,
                     B unconditionally aend one A;   
  
  
  
  object A is
    
    Aid: preferred unique integer;     
    name: string;     
    
    public instance service setName ( name: in string );     
    
  end object;
  
  object B is
    
    Bid: preferred unique integer;     
    Aid: preferred referential ( R1.aend.A.Aid ) integer;     
    
    state state1 ();     
    state state2 ( event_data: in integer );     
    
    event event1 ( event_data: in integer );     
    event event2 ();     
    
    transition is
      Non_Existent ( event1 => Cannot_Happen,
                     event2 => Cannot_Happen );       
      state1 ( event1 => state2,
               event2 => Cannot_Happen );       
      state2 ( event1 => state2,
               event2 => state1 );       
    end transition;
    
  end object;
  
  
end domain;
