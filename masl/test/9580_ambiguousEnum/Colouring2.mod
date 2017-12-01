domain Colouring2 is
  public type PrimaryColour;
  public type PrimaryColour is enum (red, green, blue);
  public type RainbowColour;
  public type RainbowColour is enum (red, orange, yellow, green, blue, indigo, violet);

  public service primarySvc ( c : in PrimaryColour );
  public service rainbowSvc ( c : in RainbowColour );

  object Obj;
  object Obj is
    id : preferred integer;
    primaryAtt : PrimaryColour;
    rainbowAtt : RainbowColour;

    public instance service primaryISvc ( c : in PrimaryColour );
    public instance service rainbowISvc ( c : in RainbowColour );

    public service primarySvc ( c : in PrimaryColour );
    public service rainbowSvc ( c : in RainbowColour );

    event primaryEvent ( c : in PrimaryColour );
    event rainbowEvent ( c : in RainbowColour );
  end object;

  terminator Term is
    public service primarySvc ( c : in PrimaryColour );
    public service rainbowSvc ( c : in RainbowColour );
  end terminator;   

  public service test();
end domain;