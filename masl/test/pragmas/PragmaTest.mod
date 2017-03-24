domain PragmaTest is
  
  object Group;
  
  public type group_type is structure
    group_name: string;     
    operation_names: sequence of string;     
  end structure; pragma test_only( "true" );  
  public type logged_on_type is enum ( logged_on, suspect ); pragma scenario( 1 );
  

  public service test_SAC_1 (); pragma external( 1 ); pragma test_only( "true" );   
  
  
  terminator Operator is
    public service group_deleted ( ); pragma p( true );    
  end terminator;
  pragma number( 1 );
  
  object Group is
    
    group_id: preferred unique integer; pragma p( true );    
    group_name: string; pragma scenario( 1 );    
    
    public instance service delete_group (); pragma p( true );
  end object;
  pragma number( 2 );
  
  
end domain;
pragma number( 3 );
