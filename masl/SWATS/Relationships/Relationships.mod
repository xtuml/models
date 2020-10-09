//! Tests Relationship manipulations.
domain Relationships is
  object Object_A;
  object Object_B;
  object Report_Data;
  object Object_C;
  object Object_D;
  object Object_E;
  object Object_F;
  object Object_EF;
  object Far_Left;
  object Middle;
  object Object_H;
  object Object_I;
  object Many_Right;
  object Test_Data;
  object Many_Far_Right;
  object Many_Right_Assoc;
  object Object_G;
  object Many_Above;
  object Left_Object;
  object Right_Object;
  object Middle_Object;
  object MR_Assoc;
  object Left_Many;
  object Object_L;
  object Object_M;
  object Right_Many;
  object Object_O;
  object Object_DO;
  object Object_P;
  object Object_Q;
  object Object_R;
  object LMRM_Assoc;
  object Bottom_Many;
  object Ref_Att_ObjA;
  object Sub_L1;
  object Sub_L2;
  object Sub_L3;
  object Sub_Sub_L1;
  object Sub_Sub_L2;
  object Sub_Sub_L3;
  object Sub_Sub_L4;
  object Sub_Sub_Sub_L1;
  object Sub_Sub_Sub_L2;
  object Sub_Sub_L5;
  object Sub_Sub_L6;
  object Sub_Sub_L7;
  object Sub_Sub_L8;
  object Sub_Sub_L9;
  object Sub_Sub_L10;
  object Sub_Sub_L11;
  object Object_K;

  //! Colour is a user defined type, for the purpose of verifing enumeration.
  private type Colour is enum (Red,
                               Green,
                               Black);

  private type fred is real;

  public service Create_Report_Data ();
  pragma domain_operation_number (1);

  public service Delete_Report_Data ();
  pragma domain_operation_number (2);

  public service Memory_Leak_Test_One_To_Many ();
  pragma domain_operation_number (3);

  public service Memory_Leak_Test_Many_To_Many ();
  pragma domain_operation_number (4);

  //! Returns a message if the instance state is not as expected
  public service Get_Instance_State (Input_Instance_Value : in  integer,
                                     Input_Expected_Value : in  integer,
                                     Free_Text            : in  string);
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

    public service Specify_Requid (Requid_Test_Number : in  integer,
                                   The_Requid_Itself  : in  string);
    pragma terminator_operation_number(8);

  end terminator;
  pragma key_letter ("RPT");


  terminator Where_Are_We is
    public service What_Env (Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! Start_Relationhip_Tests
  private service Start_Relationhip_Tests (); pragma scenario (2);

  //! Finish_Relationship_Tests
  private service Finish_Relationship_Tests (); pragma scenario (3);

  //! Perform Nav to Set
  private service Perform_Nav_to_Set (); pragma scenario (5);

  //! Middle Object Relationship Tests
  private service Middle_Object_Relationship_Tests (); pragma scenario (4);

  //! Test Relationships For Left Many
  private service Test_Relationships_For_Left_Many (); pragma scenario (6);

  //! One to One Tests
  private service One_to_One_Tests (); pragma scenario (8);

  //! One to Many Assoc Tests
  private service One_to_Many_Assoc_Tests (); pragma scenario (9);

  //! Many to Many Assoc Tests
  private service Many_to_Many_Assoc_Tests (); pragma scenario (10);

  //! Super Sub Tests
  private service Super_Sub_Tests (); pragma scenario (11);

  //! Reflexive Tests
  private service Reflexive_Tests (); pragma scenario (12);

  //! Composed Relationships Tests
  private service Composed_Relationships_Tests (); pragma scenario (1);

  //! Nav From Sets
  private service Nav_From_Sets (); pragma scenario (7);

  relationship R1 is Object_A conditionally Has_a one Object_B,
                     Object_B conditionally May_have_a one Object_A;
 pragma Class_A ("Object_A");
 pragma Class_B ("Object_B");

  relationship R3 is Object_C conditionally Has_a one Object_D,
                     Object_D conditionally Has_many many Object_C;
 pragma Class_A ("Object_C");
 pragma Class_B ("Object_D");

  relationship R5 is Object_F conditionally Has_lots many Object_E,
                     Object_E conditionally Has_many many Object_F
                     using Object_EF;
 pragma Class_A ("Object_F");
 pragma Class_B ("Object_E");

  relationship R11 is Object_G conditionally Has_a one Object_G,
                      Object_G conditionally May_have one Object_G;
 pragma Class_A ("Object_G");
 pragma Class_B ("Object_G");

  relationship R13 is Object_G conditionally Has_many many Object_G,
                      Object_G conditionally Has_a one Object_G;
 pragma Class_A ("Object_G");
 pragma Class_B ("Object_G");

  relationship R18 is Object_B conditionally Has_a one Object_M,
                      Object_M conditionally Has_one one Object_B;
 pragma Class_A ("Object_B");
 pragma Class_B ("Object_M");

  relationship R19 is Object_D conditionally Has_Many many Object_O,
                      Object_O conditionally Has_a one Object_D
                      using Object_DO;
 pragma Class_A ("Object_D");
 pragma Class_B ("Object_O");

  relationship R20 is Object_P conditionally Has_many many Object_Q,
                      Object_Q conditionally Has_a one Object_P;
 pragma Class_A ("Object_P");
 pragma Class_B ("Object_Q");

  relationship R21 is Object_Q conditionally Has_a one Object_R,
                      Object_R conditionally Has_many many Object_Q;
 pragma Class_A ("Object_Q");
 pragma Class_B ("Object_R");

  relationship R22 is Object_P conditionally Has_many many Object_R,
                      Object_R conditionally Has_a one Object_P;
 pragma Class_A ("Object_P");
 pragma Class_B ("Object_R");

  relationship R2 is Object_G conditionally A_Large_relationship_role one Object_G,
                     Object_G conditionally qwertyuiopasdfghjklzxcvbnmqwerty one Object_G;
 pragma Class_A ("Object_G");
 pragma Class_B ("Object_G");

  relationship R4 is Object_G conditionally Has_a one Object_G,
                     Object_G conditionally Has_many many Object_G;
 pragma Class_A ("Object_G");
 pragma Class_B ("Object_G");

  relationship R6 is Far_Left unconditionally has one Middle,
                     Middle unconditionally has one Far_Left;
 pragma Class_A ("Far_Left");
 pragma Class_B ("Middle");

  relationship R7 is Middle unconditionally has many Many_Right,
                     Many_Right unconditionally has one Middle;
 pragma Class_A ("Middle");
 pragma Class_B ("Many_Right");

  relationship R8 is Many_Right unconditionally has many Many_Far_Right,
                     Many_Far_Right unconditionally has many Many_Right
                     using Many_Right_Assoc;
 pragma Class_A ("Many_Right");
 pragma Class_B ("Many_Far_Right");

  relationship R10 is Many_Right unconditionally has many Many_Above,
                      Many_Above unconditionally has one Many_Right;
 pragma Class_A ("Many_Right");
 pragma Class_B ("Many_Above");

  relationship R12 is Left_Object unconditionally has many Middle_Object,
                      Middle_Object unconditionally has one Left_Object;
 pragma Class_A ("Left_Object");
 pragma Class_B ("Middle_Object");

  relationship R14 is Middle_Object unconditionally has one Right_Object,
                      Right_Object unconditionally has many Middle_Object
                      using MR_Assoc;
 pragma Class_A ("Middle_Object");
 pragma Class_B ("Right_Object");

  relationship R15 is Left_Many unconditionally has many Right_Many,
                      Right_Many unconditionally has many Left_Many
                      using LMRM_Assoc;
 pragma Class_A ("Left_Many");
 pragma Class_B ("Right_Many");

  relationship R16 is LMRM_Assoc unconditionally has many Bottom_Many,
                      Bottom_Many unconditionally has one LMRM_Assoc;
 pragma Class_A ("LMRM_Assoc");
 pragma Class_B ("Bottom_Many");

  relationship R17 is Ref_Att_ObjA unconditionally has one Ref_Att_ObjA,
                      Ref_Att_ObjA unconditionally has one Ref_Att_ObjA;
 pragma Class_A ("Ref_Att_ObjA");
 pragma Class_B ("Ref_Att_ObjA");

  relationship R23 is Ref_Att_ObjA unconditionally has one Ref_Att_ObjA,
                      Ref_Att_ObjA unconditionally has one Ref_Att_ObjA;
 pragma Class_A ("Ref_Att_ObjA");
 pragma Class_B ("Ref_Att_ObjA");

  relationship R32 is Object_K unconditionally has one Sub_Sub_L6,
                      Sub_Sub_L6 unconditionally has many Object_K;
 pragma Class_A ("Object_K");
 pragma Class_B ("Sub_Sub_L6");

  relationship R9 is Object_H is_a (Object_I,
                                    Object_L);

  relationship R26 is Object_L is_a (Sub_L3,
                                     Sub_L2,
                                     Sub_L1);

  relationship R27 is Sub_L3 is_a (Sub_Sub_L4,
                                   Sub_Sub_L1,
                                   Sub_Sub_L3,
                                   Sub_Sub_L2);

  relationship R29 is Sub_L3 is_a (Sub_Sub_L5,
                                   Sub_Sub_L7,
                                   Sub_Sub_L6);

  relationship R30 is Sub_L3 is_a (Sub_Sub_L8,
                                   Sub_Sub_L9);

  relationship R31 is Sub_L3 is_a (Sub_Sub_L11,
                                   Sub_Sub_L10);

  relationship R28 is Sub_Sub_L2 is_a (Sub_Sub_Sub_L2,
                                       Sub_Sub_Sub_L1);

  //! This object forms part of a normal 1c:1c relationship.
  object Object_A is

    //! Preferred identifier.
    idA : preferred integer;


  end object;
  pragma id (2);
  pragma key_letter ("objA");

  //! This object forms part of a 1c:1c and 1-(1c:1c) relationships.
  //! 
  //! All tests for the above relationships are controlled by this object.
  object Object_B is

    //! Preferred identifier.
    idB     : preferred integer;

    idA     : referential (R1.May_have_a.Object_A.idA) integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;

    idM     : referential (R18.Has_a.Object_M.idM) integer;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service ObjB_Navigation (Iteration : in  integer,
                                    Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

    event Finished ();
    pragma event_number (1);

    event StartA (Test : in  integer);
    pragma event_number (2);

    event Fault ();
    pragma event_number (9);

    event StartB (Test : in  integer);
    pragma event_number (10);

    event StartC (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (11);

    event StartD (Test : in  integer);
    pragma event_number (12);

    event StartE (Test : in  integer);
    pragma event_number (13);

    event StartF (Test : in  integer);
    pragma event_number (14);

    event StartG (Test : in  integer);
    pragma event_number (15);

  end object;
  pragma id (3);
  pragma key_letter ("objB");

  object Report_Data is

    Report_Data_Unique_id  : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (4);
  pragma key_letter ("RD");

  //! This object forms part of a 1c:Mc relationship.
  object Object_C is

    //! Preferred identifier.
    idC : preferred integer;

    idD : referential (R3.Has_a.Object_D.idD) integer;


  end object;
  pragma id (5);
  pragma key_letter ("objC");

  //! This object forms part of 1c:Mc and 1-(1c:Mc) relationship.
  //! 
  //! All tests for the above relationships are controlled by this object.
  object Object_D is

    //! Preferred identifier.
    idD         : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA     : integer;

    //! Colour enumeration
    Colour_Of_D : Colour;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service ObjD_Navigation (Iteration : in  integer,
                                    Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

    public service Delete_Instances (Test : in  integer);
    pragma operation_number (4);

    event Fault ();
    pragma event_number (9);

    event Finished ();
    pragma event_number (10);

    event StartA (Test : in  integer);
    pragma event_number (11);

    event StartB (Test : in  integer);
    pragma event_number (12);

    event StartC (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (13);

    event StartD (Test : in  integer);
    pragma event_number (14);

    event StartE (Test : in  integer);
    pragma event_number (15);

    event StartF (Test : in  integer);
    pragma event_number (16);

    event StartG (Test : in  integer);
    pragma event_number (17);

  end object;
  pragma id (6);
  pragma key_letter ("objD");

  //! This object forms part of a 1-(Mc:Mc) relationships.
  //! 
  //! All tests for the above relationship are controlled by this object.
  object Object_E is

    //! Preferred identifier.
    idE     : preferred integer;

    //! This attribute is manipulated 
    ResultA : integer;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service ObjE_Navigation (Iteration : in  integer,
                                    Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test : in  integer);
    pragma event_number (3);

    event StartB (Test : in  integer);
    pragma event_number (4);

    event StartC (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (5);

    event StartD (Test : in  integer);
    pragma event_number (6);

    event StartE (Test : in  integer);
    pragma event_number (7);

    event StartF (Test : in  integer);
    pragma event_number (8);

    event StartG (Test : in  integer);
    pragma event_number (9);

  end object;
  pragma id (7);
  pragma key_letter ("objE");

  //! This object forms part of a 1-(Mc:Mc) relationship.
  object Object_F is

    //! Preferred identifier.
    idF : preferred integer;


    event One2One ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event ERROR ();
    pragma event_number (3);

    event Many2Many ();
    pragma event_number (4);

    event One2Many ();
    pragma event_number (5);

  end object;
  pragma id (8);
  pragma key_letter ("objF");

  //! This is the associative object that forms part of the 1-(Mc:Mc) relationship.
  object Object_EF is

    idE     : preferred referential (R5.Has_lots.Object_E.idE) integer;

    idF     : preferred referential (R5.Has_many.Object_F.idF) integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;

    //!    
    idEF    : integer;


  end object;
  pragma id (9);
  pragma key_letter ("OBJEF");

  object Far_Left is

    Left_Identifier   : preferred integer;

    Middle_Identifier : referential (R6.has.Middle.Middle_Identifier) integer;

    Left_Data         : integer;


  end object;
  pragma id (10);
  pragma key_letter ("FL");

  object Middle is

    Middle_Identifier : preferred integer;

    Middle_Data       : integer;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service Middle_Navigation (Iteration : in  integer,
                                      Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

  end object;
  pragma id (11);
  pragma key_letter ("M");

  //! Supertype object.
  object Object_H is

    //! Preferred identifier.
    idH     : preferred integer;

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA : integer;


    public service Super_Sub_Relationships (Iteration : in  integer,
                                            Test      : in  integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (3);

    event StartB (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (4);

  end object;
  pragma id (12);
  pragma key_letter ("objH");

  //! Subtype object and supertype object.
  object Object_I is

    idH     : preferred referential (R9.idH) integer;

    ResultA : integer;

    IDI     : integer;


    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

  end object;
  pragma id (13);
  pragma key_letter ("objI");

  object Many_Right is

    Right_Identifier  : preferred integer;

    Right_Data        : integer;

    Middle_Identifier : referential (R7.has.Middle.Middle_Identifier) integer;


  end object;
  pragma id (14);
  pragma key_letter ("MR");

  object Test_Data is

    The_Test_Number : integer;


  end object;
  pragma id (15);
  pragma key_letter ("TN");

  object Many_Far_Right is

    MFR_Identifier : preferred integer;

    MFR_Data       : integer;


  end object;
  pragma id (16);
  pragma key_letter ("MFR");

  object Many_Right_Assoc is

    Right_Identifier : preferred referential (R8.has.Many_Right.Right_Identifier) integer;

    MFR_Identifier   : preferred referential (R8.has.Many_Far_Right.MFR_Identifier) integer;

    MRA_Data         : integer;

    MRA_Identifier   : integer;


  end object;
  pragma id (17);
  pragma key_letter ("MRA");

  //! This object forms part of the following types of reflexive relationships:
  //! 
  //! 	1c:1c
  //! 	1c:Mc
  //! 	Mc:Mc
  //! 
  //! All tests for the above relationships are handled by this object.
  object Object_G is

    //! This attribute is manipulated to indicate that the required operation was successful.
    ResultA          : integer;

    idG              : preferred integer;

    idG_Reflexive_ID : referential (R4.Has_a.Object_G.idG, R2.A_Large_relationship_role.Object_G.idG, R13.Has_a.Object_G.idG, R11.Has_a.Object_G.idG) integer;


    public service Is_It_Defined (The_IH        : in  instance of Object_G,
                                  It_Is_Defined : out boolean);
    pragma operation_number (1);

    public service One_To_One_Reflexive (Iteration : in  integer,
                                         Test      : in  integer);
    pragma operation_number (2);

    public service One_To_Many_Reflexive (Iteration : in  integer,
                                          Test      : in  integer);
    pragma operation_number (3);

    public service Many_To_Many_Reflexive (Test : in  integer);
    pragma operation_number (4);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (3);

    event StartB (Test      : in  integer,
                  Iteration : in  integer);
    pragma event_number (4);

    event StartC (Test : in  integer);
    pragma event_number (5);

    event StartD (Test : in  integer);
    pragma event_number (6);

    event StartE (Test : in  integer);
    pragma event_number (7);

    event StartF (Test : in  integer);
    pragma event_number (8);

  end object;
  pragma id (18);
  pragma key_letter ("objG");

  object Many_Above is

    Right_Identifier : referential (R10.has.Many_Right.Right_Identifier) integer;

    Above_Data       : integer;


  end object;
  pragma id (19);
  pragma key_letter ("MA");

  object Left_Object is

    idLO : preferred integer;


  end object;
  pragma id (20);
  pragma key_letter ("LO");

  object Right_Object is

    idRO : preferred integer;


  end object;
  pragma id (21);
  pragma key_letter ("RO");

  object Middle_Object is

    idMO    : preferred integer;

    idLO    : referential (R12.has.Left_Object.idLO) integer;

    ResultA : integer;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service Middle_Object_Navigation (Iteration : in  integer,
                                             Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

    event Fail ();
    pragma event_number (1);

    event Start_A (Test : in  integer);
    pragma event_number (2);

    event Finished ();
    pragma event_number (3);

    event Start_B (Test      : in  integer,
                   Iteration : in  integer);
    pragma event_number (4);

    event Start_C (Test : in  integer);
    pragma event_number (5);

    event Invocation ();
    pragma event_number (6);

  end object;
  pragma id (22);
  pragma key_letter ("MO");

  object MR_Assoc is

    idMO : preferred referential (R14.has.Middle_Object.idMO) integer;

    idRO : referential (R14.has.Right_Object.idRO) integer;

    idMR : integer;


  end object;
  pragma id (23);
  pragma key_letter ("assMR");

  object Left_Many is

    idLM    : preferred integer;

    ResultA : integer;


    public service Create_Relationships (Test : in  integer);
    pragma operation_number (1);

    public service Left_Many_Navigation (Iteration : in  integer,
                                         Test      : in  integer);
    pragma operation_number (2);

    public service Delete_Relationships (Test : in  integer);
    pragma operation_number (3);

    event Start_Create (Test : in  integer);
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event Start_Navigation (Test      : in  integer,
                            Iteration : in  integer);
    pragma event_number (3);

    event Start_Delete (Test : in  integer);
    pragma event_number (4);

  end object;
  pragma id (24);
  pragma key_letter ("objLM");

  //! Subtype object.
  object Object_L is

    idH     : preferred referential (R9.idH) integer;

    ResultA : integer;

    idL     : integer;


    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test : in  integer);
    pragma event_number (3);

    event StartB (Test : in  integer);
    pragma event_number (4);

  end object;
  pragma id (25);
  pragma key_letter ("objL");

  //! This object was part of a 1-(1c:1c) relationship.
  //! Since 1:1 associative relationships are not
  //! supported by code builder, it is now a 1-1 relationship.
  object Object_M is

    //! Preferred identifier.
    idM : preferred integer;


  end object;
  pragma id (26);
  pragma key_letter ("objM");

  object Right_Many is

    idRM : preferred integer;


  end object;
  pragma id (27);
  pragma key_letter ("objRM");

  //! This object forms part of the 1-(1c:Mc) relationship.
  object Object_O is

    //! Preferred identifier.
    idO : preferred integer;


  end object;
  pragma id (28);
  pragma key_letter ("objO");

  //! This is the associative object that forms part of the 1-(1c:Mc) realtionship.
  object Object_DO is

    idD  : referential (R19.Has_a.Object_D.idD) integer;

    idO  : preferred referential (R19.Has_Many.Object_O.idO) integer;

    idDO : integer;


  end object;
  pragma id (29);
  pragma key_letter ("objDO");

  //! This object forms part of a composed relationship.
  object Object_P is

    //! Preferred identifier.
    idP     : preferred integer;

    //! This attribute is manipulted to indicate that the required operation was successful.
    ResultA : integer;


    public service ObjP_Navigation (Test : in  integer);
    pragma operation_number (1);

    event Fault ();
    pragma event_number (1);

    event Finished ();
    pragma event_number (2);

    event StartA (Test : in  integer);
    pragma event_number (3);

  end object;
  pragma id (30);
  pragma key_letter ("objP");

  //! This object forms part of a composed relationship.
  object Object_Q is

    //! Preferred identifier.
    idQ : preferred integer;

    idP : referential (R20.Has_a.Object_P.idP) integer;

    idR : referential (R21.Has_a.Object_R.idR) integer;


  end object;
  pragma id (31);
  pragma key_letter ("objQ");

  //! This object forms part of a composed relationship.
  object Object_R is

    //! Preferred identifier.
    idR : preferred integer;


  end object;
  pragma id (32);
  pragma key_letter ("objR");

  object LMRM_Assoc is

    idLM   : preferred referential (R15.has.Left_Many.idLM) integer;

    idRM   : preferred referential (R15.has.Right_Many.idRM) integer;

    idLMRM : integer;


  end object;
  pragma id (33);
  pragma key_letter ("objLMRM");

  object Bottom_Many is

    idLM : referential (R16.has.LMRM_Assoc.idLM) integer;

    idRM : referential (R16.has.LMRM_Assoc.idRM) integer;

    idBM : preferred integer;


  end object;
  pragma id (34);
  pragma key_letter ("objBM");

  object Ref_Att_ObjA is

    RAOA_id                : preferred integer;

    RAOA_id_R_SEVENTEEN    : referential (R17.has.Ref_Att_ObjA.RAOA_id) integer;

    RAOA_id_R_TWENTY_THREE : referential (R23.has.Ref_Att_ObjA.RAOA_id) integer;


  end object;
  pragma id (35);
  pragma key_letter ("RAOA");

  object Sub_L1 is

    idH   : preferred referential (R26.idH) integer;

    idSL1 : integer;


  end object;
  pragma id (39);
  pragma key_letter ("objSL1");

  object Sub_L2 is

    idH   : preferred referential (R26.idH) integer;

    idSL2 : integer;


  end object;
  pragma id (41);
  pragma key_letter ("objSL2");

  object Sub_L3 is

    idH   : preferred referential (R26.idH) integer;

    idSL3 : integer;


  end object;
  pragma id (42);
  pragma key_letter ("objSL3");

  object Sub_Sub_L1 is

    idH    : preferred referential (R27.idH) integer;

    idSSL1 : integer;


  end object;
  pragma id (43);
  pragma key_letter ("objSSL1");

  object Sub_Sub_L2 is

    idH    : preferred referential (R27.idH) integer;

    idSSL2 : integer;


  end object;
  pragma id (44);
  pragma key_letter ("objSSL2");

  object Sub_Sub_L3 is

    idH    : preferred referential (R27.idH) integer;

    idSSL3 : integer;


  end object;
  pragma id (45);
  pragma key_letter ("objSSL3");

  object Sub_Sub_L4 is

    idH    : preferred referential (R27.idH) integer;

    idSSL4 : integer;


  end object;
  pragma id (46);
  pragma key_letter ("objSSL4");

  object Sub_Sub_Sub_L1 is

    idH     : preferred referential (R28.idH) integer;

    idSSSL1 : integer;


  end object;
  pragma id (47);
  pragma key_letter ("objSSSL1");

  object Sub_Sub_Sub_L2 is

    idH     : preferred referential (R28.idH) integer;

    idSSSL2 : integer;


  end object;
  pragma id (48);
  pragma key_letter ("objSSSL2");

  object Sub_Sub_L5 is

    idH    : preferred referential (R29.idH) integer;

    idSSL5 : integer;


  end object;
  pragma id (49);
  pragma key_letter ("objSSL5");

  object Sub_Sub_L6 is

    idH    : preferred referential (R29.idH) integer;

    idSSL6 : integer;


  end object;
  pragma id (50);
  pragma key_letter ("objSSL6");

  object Sub_Sub_L7 is

    idH    : preferred referential (R29.idH) integer;

    idSSL7 : integer;


  end object;
  pragma id (51);
  pragma key_letter ("objSSL7");

  object Sub_Sub_L8 is

    idH    : preferred referential (R30.idH) integer;

    idSSL8 : integer;


  end object;
  pragma id (52);
  pragma key_letter ("objSSL8");

  object Sub_Sub_L9 is

    idH    : preferred referential (R30.idH) integer;

    idSSL9 : integer;


  end object;
  pragma id (53);
  pragma key_letter ("objSSL9");

  object Sub_Sub_L10 is

    idH     : preferred referential (R31.idH) integer;

    idSSL10 : integer;


  end object;
  pragma id (54);
  pragma key_letter ("objSSL10");

  object Sub_Sub_L11 is

    idH     : preferred referential (R31.idH) integer;

    idSSL11 : integer;


  end object;
  pragma id (55);
  pragma key_letter ("objSSL11");

  object Object_K is

    idK : integer;

    idH : referential (R32.has.Sub_Sub_L6.idH) integer;


  end object;
  pragma id (56);
  pragma key_letter ("objK");

end domain;
pragma number (10);
pragma name ("Relationships");
pragma kl ("Relationships");
pragma version (19);
