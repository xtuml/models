//! one line description comment on domain X
domain X is
  
  object A;
  object B;
  
  
  //! one line relationship comment on R1
  relationship R1 is A conditionally is_provided_by many B,
                     B unconditionally provides_for one A;   
  
  //! three line relationship comment on R2
  //! line two
  //! line three
  relationship R2 is B conditionally contains many B,
                     B unconditionally is_contained_in one B;   
  
  
  
  //! one line description comment on object A
  object A is
    
    //! one line description comment on object A attribute A_id_1
    A_id_1: preferred integer;     
    A_id_2: preferred integer;     
    
  end object;
  
  object B is
    
    B_id: preferred integer;     
    //! two line description comment on object B attribute B_name
    //! this is line two
    B_name: preferred string;     
    parent_B_id: referential ( R2.is_contained_in.B.B_id ) integer;     
    parent_B_name: referential ( R2.is_contained_in.B.B_name ) string;     
    A_id_1: preferred referential ( R1.provides_for.A.A_id_1, R2.is_contained_in.B.A_id_1 ) integer;     
    A_id_2: preferred referential ( R1.provides_for.A.A_id_2, R2.is_contained_in.B.A_id_2 ) integer;     
    
  end object;
  
  
end domain;
