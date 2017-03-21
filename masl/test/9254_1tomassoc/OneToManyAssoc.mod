domain OneToManyAssoc is

  object Mother;
  object Child;
  object Birth;

  relationship R1 is 
    Mother unconditionally has many Child,
    Child unconditionally has one Mother
    using Birth;

  object Mother is
    mother_name : preferred string;
  end object;

  object Child is
    child_name  : preferred string;
  end object;

  object Birth is
    child_name  : preferred referential (R1.has.Child.child_name) string;
    mother_name : preferred referential (R1.has.Mother.mother_name) string;
  end object;

end domain;
