domain FindScope is
  object Object;

  public type colour;
  public type colour is enum ( red, green, blue );

  public type some_struct;
  public type some_struct is structure
    element : integer;
  end structure;

  public service test();

  object Object is 
    id : preferred integer;
    colour : colour;
    value : integer;
  end object;

end domain;