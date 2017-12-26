domain DefaultAttValue is

  object Obj;

  public type Colour;
  public type Colour is enum ( red, green, blue );

  object Obj is
    id : preferred integer;
    colour : Colour := red;
    greeting : string := "hello";
    answer : integer := 42;
  end object;

end domain;
