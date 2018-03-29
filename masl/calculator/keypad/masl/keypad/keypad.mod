domain keypad is
  
  object UI;
  
  private type eventtype is enum ( NULLEVT, KEYPRESS, CLEAR );   
  private type calcevent is structure
    event_type: eventtype;     
    extra_data: integer;     
  end structure;   
  
  //!Display an error in the Java UI.
  //!
  //!This function is realized in C++
  public service error ( message: in string );   
  //!Display a result in the Java UI.
  //!
  //!This function is realized in C++
  public service result ( value: in real );   
  //!Connect to the Java UI.
  //!
  //!This function is realized in C++
  private service connect ();   
  private service init (); pragma scenario( 1 ); pragma startup( true );   
  //!Poll the Java UI for a button press event.
  //!
  //!This function is realized in C++
  private service getPendingEvent () return calcevent;   
  
  
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
