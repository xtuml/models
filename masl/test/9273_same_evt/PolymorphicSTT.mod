domain PolymorphicSTT is
  object Sup;
  object Sub;

  relationship R1 is Sup is_a ( Sub );

  object Sup is
    id : preferred integer;
    event anEvent();
  end object;

  object Sub is
    id : preferred referential ( R1.id ) integer;

    event anEvent();
    state existing();

    transition is
      Non_Existent ( 
        Sup.anEvent => Cannot_Happen,
        anEvent => Cannot_Happen );
      existing (
        Sup.anEvent => Ignore,
        anEvent => existing );
    end transition;
  end object;
end domain;

