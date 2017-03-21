domain ReflexiveAssoc is

  object Main;
  object Assoc;

  relationship R1 is
    Main conditionally has_secondary many Main,
    Main conditionally has_primary many Main
    using Assoc; 

  object Main is
    id : preferred integer;
  end object;

  object Assoc is
   primary_id : preferred referential ( R1.has_primary.Main.id) integer;
   secondary_id : preferred referential ( R1.has_secondary.Main.id) integer;
  end object;

end domain;
