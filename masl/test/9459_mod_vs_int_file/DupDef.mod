domain DupDef is
  object Spec;

  public type Colour;
  public type Colour is enum ( red, green, blue );

  public service test();

  object Spec is
    id : preferred unique integer;
    colour : Colour;
  end object;

end domain;
