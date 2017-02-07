domain X is
  object A;
  object B;
  object C;
  relationship R1 is A unconditionally bend one B,
                     B unconditionally aend one A;   
  relationship R2 is B unconditionally cend one C,
                     C unconditionally bend one B;   
  object A is
    Aid: preferred integer;     
  end object;
  object B is
    Bid: preferred integer;     
    refAid: preferred referential ( R1.aend.A.Aid ) integer;     
  end object;
  object C is
    Cid: preferred integer;     
    refBid: preferred referential ( R2.bend.B.Bid ) integer;     
    refAid: preferred referential ( R2.bend.B.refAid ) integer;     
  end object;
end domain;


