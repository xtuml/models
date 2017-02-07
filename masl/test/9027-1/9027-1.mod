domain X is

    object A;
    object B;

    relationship R1 is A conditionally is_provided_by many B,
    B unconditionally provides_for one A;
    relationship R2 is B conditionally contains many B,
    B unconditionally is_contained_in one B;

    object A is
    A_id_1 : preferred integer;
    A_id_2 : preferred integer;
    end object;

    object B is
    B_id : preferred integer;
    B_name : preferred string;
    A_id_1 : preferred referential (R1.provides_for.A_id_1, R2.is_contained_in.B.A_id_1) integer;
    A_id_2 : preferred referential (R1.provides_for.A_id_2, R2.is_contained_in.B.A_id_2) integer;
    parent_B_id : referential (R2.is_contained_in.B_id) integer;
    parent_B_name : referential (R2.is_contained_in.B_name) string;
    end object;
end domain;
