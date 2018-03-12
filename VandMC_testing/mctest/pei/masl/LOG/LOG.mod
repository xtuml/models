domain LOG is
  public service LogInfo ( message : in string );
  public service LogSuccess ( message : in string );
  public service LogFailure ( message : in string );
end domain;
