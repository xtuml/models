domain RecursiveReferentialSpur is

  object Pupil;
  object Course;
  object Enrolment;

  relationship R1 is
    Course conditionally is_taught_to many Pupil,
    Pupil conditionally is_enrolled_on many Course
    using Enrolment;

  relationship R2 is
   Pupil conditionally ranks_above one Pupil,
   Pupil conditionally ranks_below one Pupil;

  object Pupil is
    name : preferred String;
    nextPupil : referential (R2.ranks_above.Pupil.name) string;
    yearOfEntry : preferred referential (R2.ranks_above.Pupil.yearOfEntry) integer;
  end object;

  object Course is
    name : preferred String;
  end object;

  object Enrolment is 
    pupilName : preferred referential (R1.is_taught_to.Pupil.name) string;
    courseName : preferred referential (R1.is_enrolled_on.Course.courseName) string;
    yearOfEntry : preferred referential (R1.is_taught_to.Pupil.yearOfEntry) integer;
 end object;

end domain;
