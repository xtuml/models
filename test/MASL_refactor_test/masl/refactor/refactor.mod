domain refactor is
  
  object A;
  object B;
  object C;
  object D;
  object E;
  
  private type type1 is structure
    member1: integer;     
    member2: string;     
  end structure;   
  private type type2 is enum ( RED, GREEN, BLUE );   
  
  public service foo ();   
  private service bar ( param1: in integer );   
  
  
  terminator the_terminator is
    public service term1 ( term_param1: in integer );     
  end terminator;
  
  
  
  relationship R1 is A unconditionally bend one B,
                     B unconditionally aend one A;   
  
  relationship R2 is D conditionally cend many C,
                     C conditionally dend many D
                     using E;   
  
  
  
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
  
  object C is
    
    Cid: preferred unique integer;     
    
  end object;
  
  object D is
    
    Did: preferred unique integer;     
    
  end object;
  
  object E is
    
    Did: preferred referential ( R2.dend.D.Did ) integer;     
    Cid: preferred referential ( R2.cend.C.Cid ) integer;     
    
  end object;
  
  
end domain;
