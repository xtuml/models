//! Tests finds and set manipulations.
domain Find_and_Sets is
  object Report_Data;
  object Left_Obj;
  object Right_Obj;
  object Assoc_Obj;
  object Find_Many;
  object Find_Single;
  object Find_Set;
  object Object_A;
  object Object_B;
  object Object_E;

  public type New_Enum_Type is enum (Sly,
                                     Sandy,
                                     Wes);

  private type Simple_Structure_Type is structure
    an_integer_of_structure : integer;
    a_real_of_structure     : real;
    some_text_of_structure  : string;
  end structure;

  private type Complex_Structure_Type is structure
    Number_Of_Simple_Structures : integer;
    list_of_structures          : sequence of Simple_Structure_Type;
  end structure;

  //! Increment a value by 1
  public service Increment (Incremental : in  integer,
                            Incremented : out integer);
  pragma domain_operation_number (1);

  public service Create_Report_Object ();
  pragma domain_operation_number (2);

  public service Delete_Report_Object ();
  pragma domain_operation_number (3);

  public service Check_Enum (The_Input_Value  : in  New_Enum_Type,
                             The_Return_Value : out integer);
  pragma domain_operation_number (4);

  public service Insert_Mem_Leak_Test ();
  pragma domain_operation_number (5);

  public service FindAllTest (noInst : out integer);
  pragma domain_operation_number (6);

  terminator Report is
    public service Start_Test (Test_Number     : in  integer,
                               Requid          : in  string,
                               Invoking_Domain : in  string,
                               Invoking_Object : in  string,
                               Purpose         : in  string);
    pragma terminator_operation_number(1);

    public service Test_Passed (Test_Object_Domain : in  string,
                                Test_Number        : in  integer,
                                Test_Value         : in  integer);
    pragma terminator_operation_number(2);

    public service Test_Failed (Failed_Domain_Object : in  string,
                                Failed_Test_Number   : in  integer,
                                Failed_Test_Value    : in  integer);
    pragma terminator_operation_number(3);

    public service Test_Unsupported (Unsupported_Test_Number : in  integer);
    pragma terminator_operation_number(4);

    public service Test_Text (Test_Number : in  integer,
                              Free_Text   : in  string);
    pragma terminator_operation_number(5);

    public service Domain_Test_Start (This_Domain_Name : in  string);
    pragma terminator_operation_number(6);

    public service Domain_Test_Finished (This_Domain_Name : in  string);
    pragma terminator_operation_number(7);

    public service Specify_Requid (Requid_Test_Number : in  integer,
                                   The_Requid_Itself  : in  string);
    pragma terminator_operation_number(8);

  end terminator;
  pragma key_letter ("RPT");


  terminator Nav_to_Bridge is
    public service Big_Bridge_Nav (Test : in  integer);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("NTB");


  terminator Where_Are_We is
    public service What_Env (Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! Find_And_Sets_Main
  private service Find_And_Sets_Main (); pragma scenario (1);

  //! Start Find and Sets Tests
  private service Start_Find_and_Sets_Tests (); pragma scenario (2);

  //! Finish Find and Sets Tests
  private service Finish_Find_and_Sets_Tests (); pragma scenario (3);

  relationship R1 is Left_Obj unconditionally has many Right_Obj,
                     Right_Obj unconditionally has many Left_Obj
                     using Assoc_Obj;
 pragma Class_A ("Left_Obj");
 pragma Class_B ("Right_Obj");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (2);
  pragma key_letter ("RD");

  object Left_Obj is

    objLO_id : preferred integer;


  end object;
  pragma id (3);
  pragma key_letter ("objLO");

  object Right_Obj is

    objRO_id : preferred integer;


  end object;
  pragma id (4);
  pragma key_letter ("objRO");

  object Assoc_Obj is

    idAO     : integer;

    objLO_id : preferred referential (R1.has.Left_Obj.objLO_id) integer;

    objRO_id : preferred referential (R1.has.Right_Obj.objRO_id) integer;


  end object;
  pragma id (5);
  pragma key_letter ("objAO");

  //! This object verifies the statements:
  //! 
  //! 	find
  //! 	find-all
  object Find_Many is

    //! Preferred identifier.
    idFM     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultFM : integer;


    public service do_find_many (Test_Number     : in  integer,
                                 an_instanceFM   : in  instance of Find_Many,
                                 Returned_Number : out integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event Start ();
    pragma event_number (3);

  end object;
  pragma id (9);
  pragma key_letter ("objFM");

  //! This object verifies the statements:
  //! 
  //! 	find-one
  //! 	find-only
  object Find_Single is

    //! Preferred identifier.
    idFSI     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultFSI : integer;


    public service do_find_one (Test            : in  integer,
                                an_instanceFSI  : in  instance of Find_Single,
                                Returned_Number : out integer);
    pragma operation_number (1);

    public service do_find_only (Test_Number     : in  integer,
                                 an_instanceFSI  : in  instance of Find_Single,
                                 Returned_Number : out integer);
    pragma operation_number (2);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA ();
    pragma event_number (3);

    event StartB ();
    pragma event_number (4);

  end object;
  pragma id (10);
  pragma key_letter ("objFSI");

  //! This object verifies that the following statements maybe peroformed on an existing set:
  //! 
  //! 	find-one
  //! 	find-only
  //! 	find
  //! 	find-all
  object Find_Set is

    //! Preferred identifier.
    idFS     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultFS : integer;


    public service do_find_set (Test_Number     : in  integer,
                                an_instanceFS   : in  instance of Find_Set,
                                Returned_Number : out integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event Start ();
    pragma event_number (3);

  end object;
  pragma id (12);
  pragma key_letter ("objFS");

  //! This object contains data that is manipulated by other objects.
  object Object_A is

    //! Preferred identifier.
    idA      : preferred integer;

    //! An integer.
    IntegerA : integer;


  end object;
  pragma id (15);
  pragma key_letter ("objA");

  //! Object_B contains no instances and hence any operations performed upon it will return an empty set are an undefined instance handle.
  object Object_B is

    //! Preferred identifier.
    idB : preferred integer;


  end object;
  pragma id (16);
  pragma key_letter ("objB");

  //! This object contains data that is manipulated by other objects.
  object Object_E is

    //! Preferred identifier.
    idE      : preferred integer;

    //! An integer.
    IntegerA : integer;

    //! An integer.
    IntegerB : integer;


  end object;
  pragma id (19);
  pragma key_letter ("objE");

end domain;
pragma number (8);
pragma name ("Find_and_Sets");
pragma kl ("Find_and_Sets");
pragma version (15);
