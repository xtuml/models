domain SuperSubNavigate is

  object Animal;
  object Dog;

  public service test();

  relationship R1 is Animal is_a ( Dog );

  object Animal is
    name : preferred string;
  end object;

  object Dog is
    name : preferred referential (R1.name) string;
  end object;

end domain;
