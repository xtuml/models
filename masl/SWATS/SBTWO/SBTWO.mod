domain SBTWO is
  object Report_Data;

  public type Colour_Type is enum (Red,
                                   Green,
                                   Blue);

  public type Source_Structure_Type is structure
    Source_Integer : integer;
    Source_Real    : real;
    Source_String  : string;
    Source_Boolean : boolean;
    Source_Colour  : Colour_Type;
  end structure;

  public type Very_Simple_Source_Structure_Type is structure
    Source_Simple_Integer : integer;
    Source_Simple_Real    : real;
  end structure;

  public service Receive_The_Structure (Test                        : in  integer,
                                        The_Structure               : in  sequence of Source_Structure_Type,
                                        Control_Integer             : in  integer,
                                        Control_Real                : in  real,
                                        Control_String              : in  string,
                                        Control_Enum                : in  Colour_Type,
                                        Control_Boolean             : in  boolean,
                                        Number_Of_Structures_In_Set : in  integer,
                                        Result                      : out boolean);
  pragma domain_operation_number (1);

  public service Receive_A_Very_Simple_Structure (Test_Number                    : in  integer,
                                                  Received_Very_Simple_Structure : in  sequence of Very_Simple_Source_Structure_Type);
  pragma domain_operation_number (3);

  public service Create_Report_Data ();
  pragma domain_operation_number (4);

  public service Delete_Report_Data ();
  pragma domain_operation_number (5);

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

  end terminator;
  pragma key_letter ("RPT");


  terminator Under_The_Bridge is
    //! This bridge will pass a simple structure
    //! into a target domain, and then check to see that an object in the target domain has had its attributes set accordingly.
    public service Create_A_Structure_In_Target_Domain (Source_Very_Simple_Structure : in  sequence of Very_Simple_Source_Structure_Type,
                                                        Source_Control_Integer       : in  integer,
                                                        Source_Control_Real          : in  real,
                                                        Source_Test                  : in  integer,
                                                        Source_Result                : out boolean);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("UTB");


  //! Local scenario for SBTWO standalone test
  private service Local_scenario_for_SBTWO_standalone_test (); pragma scenario (1);

  //! Start_SBTWO_Tests
  private service Start_SBTWO_Tests (); pragma scenario (3);

  //! Finish_SBTWO_Tests
  private service Finish_SBTWO_Tests (); pragma scenario (4);

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (2);
  pragma key_letter ("RD");

end domain;
pragma number (15);
pragma name ("Structure_Bridge_Two");
pragma kl ("SBTWO");
pragma version (5);
