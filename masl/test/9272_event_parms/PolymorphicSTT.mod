domain PolymorphicSTT is
  object Sup;
  object Sub;

  relationship R1 is Sup is_a ( Sub );

  object Sup is
    id : preferred integer;
    event supEvent( p : in integer );
  end object;

  object Sub is
    id : preferred referential ( R1.id ) integer;

    event subEvent( p : in integer );
    state existing( p : in integer );

    transition is
      Non_Existent ( 
        Sup.supEvent => Cannot_Happen,
        subEvent => Cannot_Happen );
      existing (
         Sup.supEvent => existing,
         subEvent => Ignore );
    end transition;
  end object;
end domain;
