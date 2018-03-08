domain PolymorphicCreationEvent is
  object Super;
  object Sub;

  relationship R1 is Super is_a ( Sub );

  object Super is
    id : preferred integer;

    creation event Create();
    creation state Created();

    transition is
      Non_Existent ( Create => Created );
      Created      ( Create => Cannot_Happen );
    end transition;
  end object;

  object Sub is
     id : preferred integer;
     sup_id : referential ( R1.id ) integer;

     creation event Create();
     creation state Created();

    transition is
      Non_Existent ( Super.Create => Cannot_Happen,
                     Create       => Created );
      Created      ( Super.Create => Cannot_Happen,
                     Create       => Cannot_Happen );
    end transition;
  end object;

end domain;
