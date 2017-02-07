domain X is
  
  object A;
  object B;
  object C;
  object D;
  
  
  relationship R1 is A is_a ( B, C );   
  
  relationship R2 is B unconditionally provides many D,
                     D unconditionally provided one B;   
  
  relationship R3 is C unconditionally contains many D,
                     D unconditionally contained_by one C;   
  
  
  
  object A is
    
    A_id_1: preferred string;     
    A_id_2: preferred string;     
    
  end object;
  
  object B is
    
    B_id: preferred integer;     
    A_id_1: referential ( R1.A_id_1 ) string;     
    A_id_2: referential ( R1.A_id_2 ) string;     
    
    identifier is ( A_id_1, A_id_2 );     
    
  end object;
  
  object C is
    
    C_id: integer;     
    A_id_1: preferred referential ( R1.A_id_1 ) string;     
    A_id_2: preferred referential ( R1.A_id_2 ) string;     
    
  end object;
  
  object D is
    
    C_A_id_1: referential ( R2.provided.B.A_id_1 ) string;     
    C_A_id_2: referential ( R2.provided.B.A_id_2 ) string;     
    
    identifier is ( C_A_id_1, C_A_id_2 );     
    
  end object;
  
  
end domain;
