domain poly is
  object sup;
  object sub1;
  object sub2;
  object sub3;
  object sub2a;
  object sub3a;
  object sub3b;

  relationship R1 is sup is_a ( sub1, sub2, sub3 );
  relationship R2 is sub2 is_a ( sub2a );
  relationship R3 is sub3 is_a ( sub3a, sub3b );

  object sup is
    id : preferred integer;
    event supp1();
    event supl1();
    state idle();
    transition is
      Non_Existent ( supp1 => Cannot_Happen, supl1 => Cannot_Happen );
      idle (
        supl1 => idle );
    end transition;
  end object;

  object sub1 is
    id : preferred referential ( R1.id ) integer;
    event subl1();
    state s1();
    state s2();
    transition is
      Non_Existent ( sup.supp1 => Cannot_Happen, subl1 => Cannot_Happen );
      s1 (
        sup.supp1 => s2,
        subl1 => Ignore );
      s2 (
        sup.supp1 => Ignore,
        subl1 => s1 );
    end transition;
  end object;

  object sub2 is
    id : preferred referential ( R1.id ) integer;
    event sub2p1();
    event subl1();
    state s1();
    state s2();
    transition is
      Non_Existent ( sup.supp1 => Cannot_Happen, sub2p1 => Cannot_Happen, subl1 => Cannot_Happen );
      s1 (
        sup.supp1 => s2,
        subl1 => Ignore );
      s2 (
        sup.supp1 => Ignore,
        subl1 => s1 );
    end transition;
  end object;

  object sub3 is
    id : preferred referential ( R1.id ) integer;
    event sub3p1();
  end object;

  object sub2a is
    id : preferred referential ( R2.id ) integer;
    event sub2al1();
    state s1();
    state s2();
    transition is
      Non_Existent ( sub2.sub2p1 => Cannot_Happen, sub2al1 => Cannot_Happen );
      s1 (
        sub2.sub2p1 => s2,
        sub2al1 => Ignore );
      s2 (
        sub2.sub2p1 => Ignore,
        sub2al1 => s1 );
    end transition;
  end object;

  object sub3a is
    id : preferred referential ( R3.id ) integer;
    state s1();
    state s2();
    transition is
      Non_Existent ( sup.supp1 => Cannot_Happen, sub3.sub3p1 => Cannot_Happen );
      s1 (
        sup.supp1 => s2,
        sub3.sub3p1 => Ignore );
      s2 (
        sup.supp1 => Ignore,
        sub3.sub3p1 => s1 );
    end transition;
  end object;

  object sub3b is
    id : preferred referential ( R3.id ) integer;
    event sub3bl1();
    state s1();
    state s2();
    transition is
      Non_Existent ( sup.supp1 => Cannot_Happen, sub3.sub3p1 => Cannot_Happen, sub3bl1 => Cannot_Happen );
      s1 (
        sup.supp1 => s2,
        sub3.sub3p1 => Ignore,
        sub3bl1 => Ignore );
      s2 (
        sup.supp1 => Ignore,
        sub3.sub3p1 => s1,
        sub3bl1 => s1 );
    end transition;
  end object;

end domain;
