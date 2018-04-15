domain Navigation is
    
  object Simple_A;
  object Simple_B;
  
  relationship R11 is 
    Simple_A conditionally related_to_b one  Simple_B,
    Simple_B conditionally related_to_a one  Simple_A;

  relationship R12 is 
    Simple_A conditionally related_to_x one  Simple_B,
    Simple_B conditionally related_to_x one  Simple_A;

  relationship R13 is 
    Simple_A conditionally related_to_b many Simple_B,
    Simple_B conditionally related_to_a one  Simple_A;

  relationship R14 is 
    Simple_A conditionally related_to_x many Simple_B,
    Simple_B conditionally related_to_x one  Simple_A;

  object Simple_A is
    id : preferred unique integer;
  end object;
  
  object Simple_B is
    id : preferred unique integer;
    a1_id : referential ( R11.related_to_a.Simple_A.id ) integer;
    a2_id : referential ( R12.related_to_x.Simple_A.id ) integer;
    a3_id : referential ( R13.related_to_a.Simple_A.id ) integer;
    a4_id : referential ( R14.related_to_x.Simple_A.id ) integer;
  end object;

  public service testSimpleNav();
  public service testSimpleLink();


  //=========================================================================

  object Assoc_A;
  object Assoc_B;
  object Assoc_C;
  
  relationship R21 is 
    Assoc_A conditionally related_to_b one  Assoc_B,
    Assoc_B conditionally related_to_a one  Assoc_A
    using Assoc_C;
    
  relationship R22 is 
    Assoc_A conditionally related_to_x one  Assoc_B,
    Assoc_B conditionally related_to_x one  Assoc_A
    using Assoc_C;

  relationship R23 is 
    Assoc_A conditionally related_to_b many Assoc_B,
    Assoc_B conditionally related_to_a one  Assoc_A
    using Assoc_C;

  relationship R24 is 
    Assoc_A conditionally related_to_x many Assoc_B,
    Assoc_B conditionally related_to_x one  Assoc_A
    using Assoc_C;

  relationship R25 is 
    Assoc_A conditionally related_to_b many Assoc_B,
    Assoc_B conditionally related_to_a many Assoc_A
    using Assoc_C;

  relationship R26 is 
    Assoc_A conditionally related_to_x many Assoc_B,
    Assoc_B conditionally related_to_x many Assoc_A
    using Assoc_C;

  object Assoc_A is
    id : preferred unique integer;
  end object;
  
  object Assoc_B is
    id : preferred unique integer;
  end object;
  
  object Assoc_C is
    id : preferred unique integer;

    a1_id : referential ( R21.related_to_a.Assoc_A.id ) integer;
    a2_id : referential ( R22.related_to_x.Assoc_A.id ) integer;
    a3_id : referential ( R23.related_to_a.Assoc_A.id ) integer;
    a4_id : referential ( R24.related_to_x.Assoc_A.id ) integer;
    a5_id : referential ( R25.related_to_a.Assoc_A.id ) integer;
    a6_id : referential ( R26.related_to_x.Assoc_A.id ) integer;

    b1_id : referential ( R21.related_to_b.Assoc_B.id ) integer;
    b2_id : referential ( R22.related_to_x.Assoc_B.id ) integer;
    b3_id : referential ( R23.related_to_b.Assoc_B.id ) integer;
    b4_id : referential ( R24.related_to_x.Assoc_B.id ) integer;
    b5_id : referential ( R25.related_to_b.Assoc_B.id ) integer;
    b6_id : referential ( R26.related_to_x.Assoc_B.id ) integer;
  end object;

  public service testAssocNav();
  public service testAssocLink();

  //=========================================================================

  object Sup_A;
  object Sub_B;  
  object Sub_C;  
  object Sub_D; 

  relationship R31 is Sup_A is_a ( Sub_B, Sub_C );  
  relationship R32 is Sup_A is_a ( Sub_D );  

  object Sup_A is
    id : preferred unique integer;
  end object;
  
  object Sub_B is
    id : preferred unique integer;
    a_id : referential ( R31.Sup_A.id ) integer;
  end object;

  object Sub_C is
    id : preferred unique integer;
    a_id : referential ( R31.Sup_A.id ) integer;
  end object;
  
  object Sub_D is
    id : preferred unique integer;
    a_id : referential ( R32.Sup_A.id ) integer;
  end object;
  
  public service testSupSubNav();
  public service testSupSubLink();

  //=========================================================================

  object SimpleReflexive_A;

  relationship R41 is 
    SimpleReflexive_A conditionally related_to_b one  SimpleReflexive_A,
    SimpleReflexive_A conditionally related_to_a one  SimpleReflexive_A;

  relationship R43 is 
    SimpleReflexive_A conditionally related_to_b many SimpleReflexive_A,
    SimpleReflexive_A conditionally related_to_a one  SimpleReflexive_A;

  object SimpleReflexive_A is
    id : preferred unique integer;
    a1_id : referential ( R41.related_to_a.SimpleReflexive_A.id ) integer;
    a3_id : referential ( R43.related_to_a.SimpleReflexive_A.id ) integer;
  end object;

  public service testSimpleReflexiveNav();
  public service testSimpleReflexiveLink();
  
  
  //=========================================================================
  
  object ReflexiveAssoc_A;
  object ReflexiveAssoc_C;
  
  relationship R51 is 
    ReflexiveAssoc_A conditionally related_to_b one  ReflexiveAssoc_A,
    ReflexiveAssoc_A conditionally related_to_a one  ReflexiveAssoc_A
    using ReflexiveAssoc_C;
    
  relationship R53 is 
    ReflexiveAssoc_A conditionally related_to_b many ReflexiveAssoc_A,
    ReflexiveAssoc_A conditionally related_to_a one  ReflexiveAssoc_A
    using ReflexiveAssoc_C;

  relationship R55 is 
    ReflexiveAssoc_A conditionally related_to_b many ReflexiveAssoc_A,
    ReflexiveAssoc_A conditionally related_to_a many ReflexiveAssoc_A
    using ReflexiveAssoc_C;

  object ReflexiveAssoc_A is
    id : preferred unique integer;
  end object;
  
  object ReflexiveAssoc_C is
    id : preferred unique integer;

    a1_id : referential ( R51.related_to_a.ReflexiveAssoc_A.id ) integer;
    a3_id : referential ( R53.related_to_a.ReflexiveAssoc_A.id ) integer;
    a5_id : referential ( R55.related_to_a.ReflexiveAssoc_A.id ) integer;

    b1_id : referential ( R51.related_to_b.ReflexiveAssoc_A.id ) integer;
    b3_id : referential ( R53.related_to_b.ReflexiveAssoc_A.id ) integer;
    b5_id : referential ( R55.related_to_b.ReflexiveAssoc_A.id ) integer;
  end object;

  public service testReflexiveAssocNav();
  public service testReflexiveAssocLink();

end domain;