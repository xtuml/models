domain LOG is
  
  public service LogSuccess ( message: in string );   
  public service LogFailure ( message: in string );   
  public service LogInfo ( message: in string );   
  public service LogInteger ( message: in integer );   
  public service LogReal ( message: in string,
                           r: in real );   
  
end domain;
