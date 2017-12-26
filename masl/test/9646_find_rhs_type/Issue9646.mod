domain Issue9646 is
  object Dog;
  object Person;

  public type sex;
  public type sex is enum ( Male, Female );

  public service test();

  relationship R1 is
    Person conditionally owns many Dog,
    Dog conditionally is_owned_by one Person;

  object Person is
    name : preferred string;
    dob : timestamp;
    sex : sex;
    timestamp : timestamp;
  end object;

  object Dog is
    name : preferred string;
    owner : referential (R1.is_owned_by.Person.name) string;
    breed : string;
  end object;
end domain;
