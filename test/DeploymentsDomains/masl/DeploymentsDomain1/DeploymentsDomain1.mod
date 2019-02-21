domain DeploymentsDomain1 is
  
  object A;
  object B;
  
  public type MyEnum is enum ( ONE, TWO );   
  
  public service public_service1 ( real_param: in real );   
  private service private_service1 ();   
  
  
  terminator term1 is
    public service term_service1 ( enum_param: in MyEnum );     
  end terminator;
  
  
  
  object A is
    
    A_id: preferred integer;     
    
  end object;
  
  object B is
    
    B_id: preferred integer;     
    
  end object;
  
  
end domain;
