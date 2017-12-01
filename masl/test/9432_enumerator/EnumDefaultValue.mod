domain EnumDefaultValue is
  object Screen;

  public type Colour;
  public type Colour is enum ( black, white );

  public type properties;
  public type  properties is structure
    foreground : Colour := black;
    background : Colour := Colour.white;
  end structure;

  object Screen is
    id : preferred integer;
    foreground : Colour := black;
    background : Colour := Colour.white;
  end object;

end domain;
