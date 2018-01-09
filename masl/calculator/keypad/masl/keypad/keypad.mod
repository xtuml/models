domain keypad is
  
  object UI;
  
  private type eventtype is enum ( NULLEVT, KEYPRESS, CLEAR );   
  private type calcevent is structure
    event_type: eventtype;     
    extra_data: integer;     
  end structure;   
  
  public service error ( message: in string );   
  public service result ( value: in real );   
  private service connect ();   
  private service init (); pragma scenario( 1 ); pragma startup( true );   
  private function getPendingEvent () return calcevent;   
  
  
  terminator keyIO is
    public service key ( code: in integer );     
    public service clear ();     
  end terminator;
  
  
  
  object UI is
    
    ui_id: preferred unique integer;     
    ticker: timer;     
    ticklen: duration;     
    
    state idle ();     
    state polling ();     
    
    event done ();     
    event tick ();     
    
    transition is
      Non_Existent ( done => Cannot_Happen,
                     tick => Cannot_Happen );       
      idle ( done => Cannot_Happen,
             tick => polling );       
      polling ( done => idle,
                tick => Cannot_Happen );       
    end transition;
    
  end object;
  
  
end domain;
pragma number( 2 );
