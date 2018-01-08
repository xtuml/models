domain calc_test is
  
  public service result ( value: in real );   
  public service error ( message: in string );   
  private service testcase1 (); pragma scenario( 1 );   
  private service testcase2 (); pragma scenario( 2 );   
  private service testcase3 (); pragma scenario( 3 );   
  private service testcase4 (); pragma scenario( 4 );   
  
  
  terminator keyIO is
    public service key ( code: in integer );     
    public service clear ();     
  end terminator;
  
  
end domain;
pragma number( 3 );
