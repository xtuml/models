domain X is
  
  object A;
  object B;
  object C;
  object associativeBC;
  
  
  relationship R1 is A conditionally contains many B,
                     B unconditionally is_contained_in one A;   
  
  relationship R2 is A conditionally provides many C,
                     C unconditionally is_provided_by one A;   
  
  relationship R3 is B conditionally supplies many C,
                     C conditionally is_supplied_by many B
                     using associativeBC;   
  
  
  
  object A is
    
    A_id_1: preferred string;     
    A_id_2: preferred string;     
    
  end object;
  
  object B is
    
    B_id: preferred integer;     
    A_id_1: preferred referential ( R1.is_contained_in.A.A_id_1 ) string;     
    A_id_2: preferred referential ( R1.is_contained_in.A.A_id_2 ) string;     
    
  end object;
  
  object C is
    
    C_id: preferred integer;     
    A_id_1: preferred referential ( R2.is_provided_by.A.A_id_1 ) string;     
    A_id_2: preferred referential ( R2.is_provided_by.A.A_id_2 ) string;     
    
  end object;
  
  object associativeBC is
    
    B_id: preferred referential ( R3.is_supplied_by.B.B_id ) integer;     
    C_id: preferred referential ( R3.supplies.C.C_id ) integer;     
    A_id_1: preferred referential ( R3.is_supplied_by.B.A_id_1, R3.supplies.C.A_id_1 ) string;     
    A_id_2: preferred referential ( R3.is_supplied_by.B.A_id_2, R3.supplies.C.A_id_2 ) string;     
    
  end object;
  
  
end domain;
