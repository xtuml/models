domain DupDef is
  object Spec;

  type Colour is enum ( red, green, blue );

  public service test();

  object Spec is
    id : preferred unique integer;
    colour : Colour;
  end object;

end domain;
