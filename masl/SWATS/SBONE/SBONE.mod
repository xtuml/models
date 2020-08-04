domain SBONE is
  object Source_Bridge_Data;
  object Very_Simple_Data_Object;
  object Report_Data;
  object Test_Data;

  public type Very_Simple_Structure_Type is structure
    Simple_Integer : integer;
    Simple_Real    : real;
  end structure;

  public type IH_Struct is structure
    The_VSD_IH : instance of Very_Simple_Data_Object;
  end structure;

  public type Source_Structure_Type is structure
    Source_Integer : integer;
    Source_Real    : real;
    Source_Text    : string;
    Source_Boolean : boolean;
    Source_Colour  : Colour_Type;
  end structure;

  public type Colour_Type is enum (Red,
                                   Green,
                                   Blue);

  public type Structure_Of_UDTs is structure
    The_Range : Pos;
  end structure;

  public type VSD_Struct is structure
    Ref_Type  : integer;
    Int_Type  : integer;
    Real_Type : real;
  end structure;

  private type Pos is integer; pragma type_range(1,10);

  public service Receive_A_Very_Simple_Structure (Received_Very_Simple_Structure : in  sequence of Very_Simple_Structure_Type,
                                                  Received_Control_Integer       : in  integer,
                                                  Received_Control_Real          : in  real,
                                                  Received_Test                  : in  integer);
  pragma domain_operation_number (1);

  public service Create_Report_Data ();
  pragma domain_operation_number (2);

  public service Delete_Report_Data ();
  pragma domain_operation_number (3);

  public service Append_IH_To_Struct (The_IH           : in  instance of Very_Simple_Data_Object,
                                      Returning_Struct : out sequence of IH_Struct);
  pragma domain_operation_number (4);

  terminator Into_The_Great_Wide_Open is
    public service Across_The_Great_Divide (Test                  : in  integer,
                                            A_Structure_To_Send   : in  sequence of Source_Structure_Type,
                                            Control_Integer       : in  integer,
                                            Control_Real          : in  real,
                                            Control_String        : in  string,
                                            Control_Enum          : in  Colour_Type,
                                            Control_Boolean       : in  boolean,
                                            Elements_In_Structure : in  integer,
                                            Result                : out boolean,
                                            A_Structure_To_Return : out sequence of Source_Structure_Type);
    pragma terminator_operation_number(1);

    public service Wide_Blue_Yonder (Test                    : in  integer,
                                     Simple_Source_Structure : in  sequence of Very_Simple_Structure_Type);
    pragma terminator_operation_number(2);

    public service Test_Structure_In_Bridge (Test            : in  integer,
                                             Input_Structure : in  sequence of Structure_Of_UDTs);
    pragma terminator_operation_number(3);

    public service The_IH_Struct_Across_Bridge (The_IHA           : in  instance of Very_Simple_Data_Object,
                                                The_IHB           : in  instance of Very_Simple_Data_Object,
                                                The_IHC           : in  instance of Very_Simple_Data_Object,
                                                Decomposed_Struct : out sequence of VSD_Struct);
    pragma terminator_operation_number(4);

  end terminator;
  pragma key_letter ("ITGWO");


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


  //! Send_To_Bridge_And_Back_To_SBONE
  private service Send_To_Bridge_And_Back_To_SBONE (); pragma scenario (2);

  //! Send_Structure_To_SBTWO_Via_Bridge
  private service Send_Structure_To_SBTWO_Via_Bridge (); pragma scenario (3);

  //! Start_SBONE_Tests
  private service Start_SBONE_Tests (); pragma scenario (4);

  //! Finish_SBONE_Tests
  private service Finish_SBONE_Tests (); pragma scenario (5);

  //! Send_To_Bridge
  private service Send_To_Bridge (); pragma scenario (1);

  object Source_Bridge_Data is

    Reference   : preferred integer;

    The_Integer : integer;

    The_Real    : real;

    The_String  : string;

    The_Colour  : Colour_Type;

    The_Boolean : boolean;


  end object;
  pragma id (2);
  pragma key_letter ("SBD");

  object Very_Simple_Data_Object is

    Object_Reference_VSD  : preferred integer;

    Object_Simple_Integer : integer;

    Object_Simple_Real    : real;


  end object;
  pragma id (3);
  pragma key_letter ("VSD");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (4);
  pragma key_letter ("RD");

  object Test_Data is

    This_Test_Number : integer;


  end object;
  pragma id (5);
  pragma key_letter ("TD");

end domain;
pragma number (14);
pragma name ("Structure_Bridge_One");
pragma kl ("SBONE");
pragma version (7);
