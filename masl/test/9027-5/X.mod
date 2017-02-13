domain X is
  
  object A;
  object B;
  object C;
  
  
  relationship R1 is A unconditionally containes many B,
                     B unconditionally is_contained_by one A;   
  
  relationship R2 is B is_a ( C );   
  
  
  
  object A is
    
    A_id_1: preferred string;     
    
  end object;
  
  object B is
    
    A_id_1: preferred referential ( R1.is_contained_by.A.A_id_1 ) string;     
    
  end object;
  
  object C is
    
    A_id_1: preferred referential ( R2.A_id_1 ) string;     
    
  end object;
  
  
end domain;
