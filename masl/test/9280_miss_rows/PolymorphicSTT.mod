domain PolymorphicSTT is
  object Sup;
  object Sub;

  relationship R1 is Sup is_a ( Sub );

  object Sup is
    id : preferred integer;
    event supEvent();
    state existing();

    transition is
      Non_Existent ( 
        supEvent => Cannot_Happen );
      existing (
         supEvent => existing );
    end transition;
  end object;

  object Sub is
    id : preferred referential ( R1.id ) integer;

    event subEvent();
    state existing();

    transition is
      Non_Existent ( 
        Sup.supEvent => Cannot_Happen,
        subEvent => Cannot_Happen );
      existing (
         Sup.supEvent => existing,
         subEvent => existing );
    end transition;
  end object;
end domain;
