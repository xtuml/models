domain PragTest is

  object obj1;
  object obj2;

  object obj3;
  object obj4;
  object obj5;

  object obj6;
  object obj7;
  object obj8;
  pragma prag01("STRING");

  public type fwd_decl_type; pragma prag02();
  public type fwd_decl_type is structure
    member1: fwd_decl_type;
    member2: integer; pragma prag03();
  end structure; pragma prag04();

  private type no_fwd_decl;
  private type no_fwd_decl is structure
    mem1: integer;
    mem2: boolean;
  end structure; pragma prag24();

  public exception exp1; pragma prag05(two,args);

  public service foo(); pragma prag06();
  public function bar() return integer; pragma prag07();

  terminator term1 is
    public service foo(); pragma prag08();
    public function bar() return integer; pragma prag09();
  end terminator;
  pragma prag10();

  relationship R1 is obj1 unconditionally relates_to one obj2,
                     obj2 unconditionally related_to one obj1; pragma prag11();

  relationship R2 is obj3 unconditionally relates_to one obj4,
                     obj4 unconditionally related_to one obj3
                     using obj5; pragma prag12();

  relationship R3 is obj6 is_a ( obj7, obj8 ); pragma prag13();

  object obj1 is

    obj1_id : preferred unique integer; pragma prag14();
    id2 : unique integer;

    identifier is ( id2 ); pragma prag15();

    public instance service foo(); pragma prag16();
    public instance function bar() return integer; pragma prag17();

    state st1(); pragma prag18();
    event evt1(); pragma prag19();
    event evt2();

    transition is
      Non_Existent ( evt1 => Cannot_Happen,
                     evt2 => Cannot_Happen ); pragma prag20();
      st1          ( evt1 => Ignore,
                     evt2 => Ignore );
    end transition;
    pragma prag21();

  end object;
  pragma prag22();

  object obj2 is
  end object;

  object obj3 is
  end object;

  object obj4 is
  end object;

  object obj5 is
  end object;

  object obj6 is
  end object;

  object obj7 is
  end object;

  object obj8 is
  end object;

end domain;
pragma prag23();
