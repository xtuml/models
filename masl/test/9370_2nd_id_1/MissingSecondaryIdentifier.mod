domain MissingSecondaryIdentifier is

 object Person;
 object Passport;

 relationship R1 is 
   Person conditionally owns one Passport,
   Passport unconditionally issued_to one Person;

 relationship R2 is
   Person conditionally travelling_on one Passport,
   Passport conditionally in_use_by one Person;

  object Person is
    id : preferred integer;
  end object;

  object Passport is
    id : preferred integer;
    person_id : referential (R1.issued_to.Person.id, R2.in_use_by.Person.id) integer;

    identifier is (person_id); 
  end object; 

end domain;
