domain MissingId is

  object A;
  object B;
  object C;

  relationship R1 is A conditionally a_R1_b many B, B conditionally b_R1_a one A;
  relationship R2 is B conditionally contains many B, B conditionally is_contained_in one B;
  relationship R3 is B conditionally b_R3_c one C, C conditionally c_R3_b one B;

  object A is
    a_id : preferred string;
  end object;

  object B is
    a_id : preferred referential (R1.b_R1_a.A.a_id, R2.is_contained_in.B.a_id) string;
    b_id : preferred string;
    parent_b_id : referential (R2.is_contained_in.B.b_id) string;
  end object;

  object C is
    a_id : preferred referential (R3.c_R3_b.B.a_id) string;
    b_id : preferred referential (R3.c_R3_b.B.b_id) string;
  end object;

end domain;
