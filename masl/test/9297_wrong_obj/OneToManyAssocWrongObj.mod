domain OneToManyAssocWrongObj is

  object Mother;
  object Child;
  object Birth;

  relationship R1 is 
    Mother unconditionally has many Child,
    Child unconditionally has one Mother
    using Birth;

  object Mother is
    name : preferred string;
  end object;

  object Child is
    name  : preferred string;
  end object;

  object Birth is
    child_name  : preferred referential (R1.has.Child.name) string;
    mother_name : referential (R1.has.Mother.name) string;
  end object;

end domain;
