domain mydom is
  
  object A;
  public service actualmaslroutine( p1 : in integer );
  public service cwrapper( p1 : in integer );

  terminator T is
    public service actualtermservice( p2: in integer );
    public service cservice( p2: in integer );
  end terminator;

  object A is
    id: preferred integer;     
    i: integer;
  end object;
  
end domain;
