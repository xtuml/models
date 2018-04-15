domain defer is
  object sup;
  object sub;
  relationship R1 is sup is_a ( sub );   
  object sup is
    id: preferred integer;     
    public instance deferred ( R1 ) service d ();     
  end object;
  object sub is
    count: integer;     
    id: preferred referential ( R1.id ) integer;     
    public instance service d ();     
  end object;
end domain;
