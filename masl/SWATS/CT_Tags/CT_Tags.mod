domain CT_Tags is
  object CCA_A;
  object CCA_B;
  object TCA_A;
  object TCA_B;
  object Global_A;
  object CCA_C;
  object Global_B;
  object TCA_C;
  object Results;
  object Report_Data;
  object Global_Super;
  object TCA_SubA;
  object CCA_SubB;
  object Global_SubC;
  object TCA_Super;
  object TCA_SubD;
  object CCA_SubE;
  object Global_SubF;
  object CCA_Super;
  object TCA_SubG;
  object CCA_SubH;
  object Global_SubI;
  object TCA_D;
  object TCA_E;
  object TCA_F;
  object Test_Data;
  object TCA_CP;
  object CCA_CP;
  object Global_CP;

  public service TCA_Add_One (Input_Val  : in  integer,
                              Return_Val : out integer); pragma tca ("");
  pragma domain_operation_number (1);

  public service CCA_Add_One (Input_Val  : in  integer,
                              Return_Val : out integer); pragma cca ("");
  pragma domain_operation_number (2);

  public service Global_Add_One (Input_Val  : in  integer,
                                 Return_Val : out integer);
  pragma domain_operation_number (3);

  terminator Report_Results is
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


  terminator Navigate_TCA is
    public service Navigate_TCA (TCA_IH     : in  instance of TCA_CP,
                                 Return_Val : out integer);
    pragma terminator_operation_number(1);

    public service Create_And_Link_TCA (TCA_IH : in  instance of TCA_CP,
                                        Result : out integer);
    pragma terminator_operation_number(2);

    public service Unlink_TCA (TCA_IH     : in  instance of TCA_CP,
                               Return_Val : out integer);
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("Nav_TCA");


  terminator Navigate_Global is
    public service Create_And_Link_Glob (Glob_IH    : in  instance of Global_CP,
                                         Return_Val : out integer);
    pragma terminator_operation_number(1);

    public service Navigate_Glob (Glob_IH    : in  instance of Global_CP,
                                  Return_Val : out integer);
    pragma terminator_operation_number(2);

    public service Unlink_Glob (Glob_IH    : in  instance of Global_CP,
                                Return_Val : out integer);
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("Nav_Glob");


  terminator Navigate_CCA is
    public service Create_And_Link_CCA (CCA_IH     : in  instance of CCA_CP,
                                        Return_Val : out integer);
    pragma terminator_operation_number(1);

    public service Navigate_CCA (CCA_IH     : in  instance of CCA_CP,
                                 Return_Val : out integer);
    pragma terminator_operation_number(2);

    public service Unlink_CCA (CCA_IH     : in  instance of CCA_CP,
                               Return_Val : out integer);
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("Nav_CCA");


  terminator Add_One is
    public service TCA_Add (Input_Int  : in  integer,
                            Output_Int : out integer);
    pragma terminator_operation_number(1);

    public service Global_Add (Input_Int  : in  integer,
                               Output_Int : out integer);
    pragma terminator_operation_number(2);

    public service CCA_Add (Input_int  : in  integer,
                            Output_Int : out integer);
    pragma terminator_operation_number(3);

  end terminator;
  pragma key_letter ("AO");


  //! Start_Domain_Tests
  private service Start_Domain_Tests (); pragma scenario (4);

  //! TCA_Tests
  private service TCA_Tests (); pragma scenario (1); pragma tca ("");

  //! Get_Totals
  private service Get_Totals (); pragma scenario (6);

  //! Finish_Domain_Tests
  private service Finish_Domain_Tests (); pragma scenario (5);

  //! CCA_Tests
  private service CCA_Tests (); pragma scenario (2); pragma cca ("");

  //! TCA_Events
  private service TCA_Events (); pragma scenario (3); pragma tca ("");

  //! CCA_Events
  private service CCA_Events (); pragma scenario (7); pragma cca ("");

  relationship R1 is CCA_A unconditionally has one CCA_B,
                     CCA_B unconditionally has one CCA_A;
 pragma Class_A ("CCA_A");
 pragma Class_B ("CCA_B");

  relationship R2 is TCA_A unconditionally has one TCA_B,
                     TCA_B unconditionally has one TCA_A;
 pragma Class_A ("TCA_A");
 pragma Class_B ("TCA_B");

  relationship R3 is Global_A unconditionally has one CCA_C,
                     CCA_C unconditionally has one Global_A;
 pragma Class_A ("Global_A");
 pragma Class_B ("CCA_C");

  relationship R4 is TCA_C unconditionally has one Global_B,
                     Global_B unconditionally has one TCA_C;
 pragma Class_A ("TCA_C");
 pragma Class_B ("Global_B");

  relationship R8 is TCA_SubA unconditionally has one TCA_D,
                     TCA_D unconditionally has one TCA_SubA;
 pragma Class_A ("TCA_SubA");
 pragma Class_B ("TCA_D");

  relationship R9 is CCA_SubB unconditionally has one TCA_E,
                     TCA_E unconditionally has one CCA_SubB;
 pragma Class_A ("CCA_SubB");
 pragma Class_B ("TCA_E");

  relationship R10 is Global_SubC unconditionally has one TCA_F,
                      TCA_F unconditionally has one Global_SubC;
 pragma Class_A ("Global_SubC");
 pragma Class_B ("TCA_F");

  relationship R11 is TCA_F unconditionally has one TCA_E,
                      TCA_E unconditionally has one TCA_F;
 pragma Class_A ("TCA_F");
 pragma Class_B ("TCA_E");

  relationship R12 is TCA_E unconditionally has one TCA_D,
                      TCA_D unconditionally has one TCA_E;
 pragma Class_A ("TCA_E");
 pragma Class_B ("TCA_D");

  relationship R13 is Global_B unconditionally has one Global_A,
                      Global_A unconditionally has one Global_B;
 pragma Class_A ("Global_B");
 pragma Class_B ("Global_A");

  relationship R5 is Global_Super is_a (Global_SubC,
                                        TCA_SubA,
                                        CCA_SubB);

  relationship R6 is TCA_Super is_a (Global_SubF,
                                     TCA_SubD,
                                     CCA_SubE);

  relationship R7 is CCA_Super is_a (TCA_SubG,
                                     Global_SubI,
                                     CCA_SubH);

  object CCA_A is

    idCA     : integer;

    CARef    : integer;

    CAPassed : boolean;

    CALinked : boolean;


    public service Add_One (Input_No     : in  integer,
                            Returning_No : out integer);
    pragma operation_number (1);

    state Idle (Test : in  integer);
    pragma state_number (1);

    state Link_Global_Super_To_CCA_Sub (Test : in  integer);
    pragma state_number (2);

    state Increment_Ref (Test : in  integer);
    pragma state_number (3);

    event Link_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Fired (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (                Link_SuperSub => Cannot_Happen,
                                    Fired         => Cannot_Happen);
      Idle (                        Link_SuperSub => Link_Global_Super_To_CCA_Sub,
                                    Fired         => Increment_Ref);
      Link_Global_Super_To_CCA_Sub (Link_SuperSub => Idle,
                                    Fired         => Ignore);
      Increment_Ref (               Link_SuperSub => Ignore,
                                    Fired         => Idle);
    end transition;

  end object;
  pragma id (2);
  pragma key_letter ("CCAA");
  pragma cca ("");

  object CCA_B is

    idCB : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Link_To_Global (Test : in  integer);
    pragma state_number (2);

    state Unlink_From_Global (Test : in  integer);
    pragma state_number (3);

    event Link_To_Global (Test : in  integer);
    pragma event_number (1);

    event Unlink_From_Global (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (      Link_To_Global     => Cannot_Happen,
                          Unlink_From_Global => Cannot_Happen);
      Idle (              Link_To_Global     => Link_To_Global,
                          Unlink_From_Global => Unlink_From_Global);
      Link_To_Global (    Link_To_Global     => Idle,
                          Unlink_From_Global => Ignore);
      Unlink_From_Global (Link_To_Global     => Idle,
                          Unlink_From_Global => Idle);
    end transition;

  end object;
  pragma id (3);
  pragma key_letter ("CCAB");
  pragma cca ("");

  object TCA_A is

    idTA : integer;


    public service Add_One (Input_No     : in  integer,
                            Returning_No : out integer);
    pragma operation_number (1);

    state Idle (Test : in  integer);
    pragma state_number (1);

    state Link_To_Global (Test : in  integer);
    pragma state_number (2);

    state Unlink_From_Global (Test : in  integer);
    pragma state_number (3);

    event Link_To_Global (Test : in  integer);
    pragma event_number (1);

    event Unlink_from_Global (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (      Link_To_Global     => Cannot_Happen,
                          Unlink_from_Global => Cannot_Happen);
      Idle (              Link_To_Global     => Link_To_Global,
                          Unlink_from_Global => Unlink_From_Global);
      Link_To_Global (    Link_To_Global     => Idle,
                          Unlink_from_Global => Idle);
      Unlink_From_Global (Link_To_Global     => Idle,
                          Unlink_from_Global => Idle);
    end transition;

  end object;
  pragma id (4);
  pragma key_letter ("TCAA");
  pragma tca ("");

  object TCA_B is

    idTB : integer;


  end object;
  pragma id (5);
  pragma key_letter ("TCAB");
  pragma tca ("");

  object Global_A is

    idGA : integer;


    public service Add_One (Input_Value  : in  integer,
                            Output_Value : out integer);
    pragma operation_number (1);

  end object;
  pragma id (6);
  pragma key_letter ("GA");

  object CCA_C is

    idCC : integer;


  end object;
  pragma id (7);
  pragma key_letter ("CCAC");
  pragma cca ("");

  object Global_B is

    idGB : integer;


  end object;
  pragma id (8);
  pragma key_letter ("GB");

  object TCA_C is

    idTC : integer;


  end object;
  pragma id (9);
  pragma key_letter ("TCAC");
  pragma tca ("");

  object Results is

    CCATotal : integer;

    TCATotal : integer;

    CCAFlag  : boolean;

    TCAFlag  : boolean;

    idRes    : preferred integer;

    ResRef   : integer;


  end object;
  pragma id (10);
  pragma key_letter ("RES");

  object Report_Data is

    Reported_Domain_Number : preferred integer;


  end object;
  pragma id (11);
  pragma key_letter ("REPORT");

  object Global_Super is

    idGS       : integer;

    GSRef      : integer;

    CCAFlag    : boolean;

    TCAFlag    : boolean;

    GlobalFlag : boolean;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    event Poly_Fired (Test : in  integer);
    pragma event_number (1);

    event Finished (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (Poly_Fired => Cannot_Happen,
                    Finished   => Cannot_Happen);
      Idle (        Poly_Fired => Start,
                    Finished   => Ignore);
      Start (       Poly_Fired => Idle,
                    Finished   => Idle);
    end transition;

  end object;
  pragma id (12);
  pragma key_letter ("GS");

  object TCA_SubA is

    idTSA : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Unlink_Global_From_TCA (Test : in  integer);
    pragma state_number (3);

    state Set_Flag (Test : in  integer);
    pragma state_number (4);

    terminal state Delete_Instances (Test : in  integer);
    pragma state_number (5);

    event Unlink_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Delete_Instances (Test : in  integer);
    pragma event_number (2);

    event Finished (Test : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (          Global_Super.Poly_Fired => Cannot_Happen,
                              Unlink_SuperSub         => Cannot_Happen,
                              Delete_Instances        => Cannot_Happen,
                              Finished                => Cannot_Happen,
                              Global_Super.Finished   => Cannot_Happen);
      Idle (                  Global_Super.Poly_Fired => Set_Flag,
                              Unlink_SuperSub         => Unlink_Global_From_TCA,
                              Delete_Instances        => Delete_Instances,
                              Finished                => Idle,
                              Global_Super.Finished   => Ignore);
      Unlink_Global_From_TCA (Global_Super.Poly_Fired => Ignore,
                              Unlink_SuperSub         => Ignore,
                              Delete_Instances        => Ignore,
                              Finished                => Idle,
                              Global_Super.Finished   => Ignore);
      Set_Flag (              Global_Super.Poly_Fired => Ignore,
                              Unlink_SuperSub         => Ignore,
                              Delete_Instances        => Ignore,
                              Finished                => Idle,
                              Global_Super.Finished   => Ignore);
      Delete_Instances (      Global_Super.Poly_Fired => Cannot_Happen,
                              Unlink_SuperSub         => Cannot_Happen,
                              Delete_Instances        => Cannot_Happen,
                              Finished                => Cannot_Happen,
                              Global_Super.Finished   => Cannot_Happen);
    end transition;

  end object;
  pragma id (13);
  pragma key_letter ("TSA");
  pragma tca ("");

  object CCA_SubB is

    idCSB : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Unlink_Global_Super_From_CCA_Sub (Test : in  integer);
    pragma state_number (3);

    state Set_Flag (Test : in  integer);
    pragma state_number (4);

    terminal state Delete_Instances (Test : in  integer);
    pragma state_number (5);

    event Unlink_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Delete_Instances (Test : in  integer);
    pragma event_number (2);

    event Finished (Test : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent (                    Global_Super.Poly_Fired => Cannot_Happen,
                                        Unlink_SuperSub         => Cannot_Happen,
                                        Delete_Instances        => Cannot_Happen,
                                        Finished                => Cannot_Happen,
                                        Global_Super.Finished   => Cannot_Happen);
      Idle (                            Global_Super.Poly_Fired => Set_Flag,
                                        Unlink_SuperSub         => Unlink_Global_Super_From_CCA_Sub,
                                        Delete_Instances        => Delete_Instances,
                                        Finished                => Idle,
                                        Global_Super.Finished   => Ignore);
      Unlink_Global_Super_From_CCA_Sub (Global_Super.Poly_Fired => Ignore,
                                        Unlink_SuperSub         => Ignore,
                                        Delete_Instances        => Ignore,
                                        Finished                => Idle,
                                        Global_Super.Finished   => Ignore);
      Set_Flag (                        Global_Super.Poly_Fired => Ignore,
                                        Unlink_SuperSub         => Ignore,
                                        Delete_Instances        => Ignore,
                                        Finished                => Idle,
                                        Global_Super.Finished   => Ignore);
      Delete_Instances (                Global_Super.Poly_Fired => Cannot_Happen,
                                        Unlink_SuperSub         => Cannot_Happen,
                                        Delete_Instances        => Cannot_Happen,
                                        Finished                => Cannot_Happen,
                                        Global_Super.Finished   => Cannot_Happen);
    end transition;

  end object;
  pragma id (14);
  pragma key_letter ("CSB");
  pragma cca ("");

  object Global_SubC is

    idGSC : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Unlink_Global_Super_from_Global_Sub (Test : in  integer);
    pragma state_number (3);

    state Set_Flag (Test : in  integer);
    pragma state_number (4);

    terminal state Delete_Instances (Test : in  integer);
    pragma state_number (5);

    state Link_Global_Super_to_Global_Sub (Test : in  integer);
    pragma state_number (6);

    event Unlink_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Delete_Instances (Test : in  integer);
    pragma event_number (2);

    event Finished (Test : in  integer);
    pragma event_number (3);

    event Link_SuperSub (Test : in  integer);
    pragma event_number (4);

    transition is
      Non_Existent (                       Global_Super.Poly_Fired => Cannot_Happen,
                                           Unlink_SuperSub         => Cannot_Happen,
                                           Delete_Instances        => Cannot_Happen,
                                           Finished                => Cannot_Happen,
                                           Link_SuperSub           => Cannot_Happen,
                                           Global_Super.Finished   => Cannot_Happen);
      Idle (                               Global_Super.Poly_Fired => Set_Flag,
                                           Unlink_SuperSub         => Unlink_Global_Super_from_Global_Sub,
                                           Delete_Instances        => Delete_Instances,
                                           Finished                => Idle,
                                           Link_SuperSub           => Link_Global_Super_to_Global_Sub,
                                           Global_Super.Finished   => Ignore);
      Unlink_Global_Super_from_Global_Sub (Global_Super.Poly_Fired => Ignore,
                                           Unlink_SuperSub         => Ignore,
                                           Delete_Instances        => Ignore,
                                           Finished                => Idle,
                                           Link_SuperSub           => Ignore,
                                           Global_Super.Finished   => Ignore);
      Set_Flag (                           Global_Super.Poly_Fired => Ignore,
                                           Unlink_SuperSub         => Ignore,
                                           Delete_Instances        => Ignore,
                                           Finished                => Idle,
                                           Link_SuperSub           => Ignore,
                                           Global_Super.Finished   => Ignore);
      Delete_Instances (                   Global_Super.Poly_Fired => Cannot_Happen,
                                           Unlink_SuperSub         => Cannot_Happen,
                                           Delete_Instances        => Cannot_Happen,
                                           Finished                => Cannot_Happen,
                                           Link_SuperSub           => Cannot_Happen,
                                           Global_Super.Finished   => Cannot_Happen);
      Link_Global_Super_to_Global_Sub (    Global_Super.Poly_Fired => Ignore,
                                           Unlink_SuperSub         => Ignore,
                                           Delete_Instances        => Ignore,
                                           Finished                => Idle,
                                           Link_SuperSub           => Ignore,
                                           Global_Super.Finished   => Ignore);
    end transition;

  end object;
  pragma id (15);
  pragma key_letter ("GSC");

  object TCA_Super is

    idTS    : integer;

    TCAFlag : boolean;

    TSRef   : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    state Check_Result (Test : in  integer);
    pragma state_number (4);

    event Fired (Test : in  integer);
    pragma event_number (1);

    event Finished (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (Fired    => Cannot_Happen,
                    Finished => Cannot_Happen);
      Idle (        Fired    => Start,
                    Finished => Idle);
      Start (       Fired    => Idle,
                    Finished => Check_Result);
      Check_Result (Fired    => Idle,
                    Finished => Idle);
    end transition;

  end object;
  pragma id (16);
  pragma key_letter ("TS");
  pragma tca ("");

  object TCA_SubD is

    idTSD  : integer;

    TSDRef : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Set_Flag (Test : in  integer);
    pragma state_number (3);

    state Unlink (Test : in  integer);
    pragma state_number (4);

    event Finished (Test : in  integer);
    pragma event_number (1);

    event Unlink_SuperSub (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (TCA_Super.Fired    => Cannot_Happen,
                    Finished           => Cannot_Happen,
                    Unlink_SuperSub    => Cannot_Happen,
                    TCA_Super.Finished => Cannot_Happen);
      Idle (        TCA_Super.Fired    => Set_Flag,
                    Finished           => Idle,
                    Unlink_SuperSub    => Unlink,
                    TCA_Super.Finished => Idle);
      Set_Flag (    TCA_Super.Fired    => Idle,
                    Finished           => Idle,
                    Unlink_SuperSub    => Unlink,
                    TCA_Super.Finished => Idle);
      Unlink (      TCA_Super.Fired    => Set_Flag,
                    Finished           => Idle,
                    Unlink_SuperSub    => Idle,
                    TCA_Super.Finished => Idle);
    end transition;

  end object;
  pragma id (17);
  pragma key_letter ("TSD");
  pragma tca ("");

  object CCA_SubE is

    idCSE     : integer;

    CSERef    : integer;

    CSELinked : boolean;

    CSEPassed : boolean;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Link_CCA_Super_CCA_Sub (Test : in  integer);
    pragma state_number (2);

    state Start (Test : in  integer);
    pragma state_number (3);

    event Link_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Start (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (          TCA_Super.Fired    => Cannot_Happen,
                              TCA_Super.Finished => Cannot_Happen,
                              Link_SuperSub      => Cannot_Happen,
                              Start              => Cannot_Happen);
      Idle (                  TCA_Super.Fired    => Ignore,
                              TCA_Super.Finished => Ignore,
                              Link_SuperSub      => Link_CCA_Super_CCA_Sub,
                              Start              => Start);
      Link_CCA_Super_CCA_Sub (TCA_Super.Fired    => Ignore,
                              TCA_Super.Finished => Ignore,
                              Link_SuperSub      => Idle,
                              Start              => Start);
      Start (                 TCA_Super.Fired    => Ignore,
                              TCA_Super.Finished => Ignore,
                              Link_SuperSub      => Link_CCA_Super_CCA_Sub,
                              Start              => Idle);
    end transition;

  end object;
  pragma id (18);
  pragma key_letter ("CSE");
  pragma cca ("");

  object Global_SubF is

    idGSF      : integer;

    GlobalFlag : boolean;


    state Idle (Test : in  integer);
    pragma state_number (5);

    event Finished ();
    pragma event_number (1);

    transition is
      Non_Existent (TCA_Super.Fired    => Cannot_Happen,
                    TCA_Super.Finished => Cannot_Happen,
                    Finished           => Cannot_Happen);
      Idle (        TCA_Super.Fired    => Idle,
                    TCA_Super.Finished => Ignore,
                    Finished           => Ignore);
    end transition;

  end object;
  pragma id (19);
  pragma key_letter ("GSF");

  object CCA_Super is

    idCS       : integer;

    CSRef      : integer;

    CCAFlag    : boolean;

    GlobalFlag : boolean;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    state Check (Test : in  integer);
    pragma state_number (3);

    event C_Fired (Test : in  integer);
    pragma event_number (1);

    event Finished (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (C_Fired  => Cannot_Happen,
                    Finished => Cannot_Happen);
      Idle (        C_Fired  => Start,
                    Finished => Ignore);
      Start (       C_Fired  => Idle,
                    Finished => Check);
      Check (       C_Fired  => Idle,
                    Finished => Idle);
    end transition;

  end object;
  pragma id (20);
  pragma key_letter ("CS");
  pragma cca ("");

  object TCA_SubG is

    idTSG : integer;


  end object;
  pragma id (21);
  pragma key_letter ("TSG");
  pragma tca ("");

  object CCA_SubH is

    idCSH : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Set_Flag (Test : in  integer);
    pragma state_number (2);

    state Unlink_SuperSub (Test : in  integer);
    pragma state_number (3);

    event Unlink_SuperSub (Test : in  integer);
    pragma event_number (1);

    event Finished (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (   CCA_Super.C_Fired  => Cannot_Happen,
                       CCA_Super.Finished => Cannot_Happen,
                       Unlink_SuperSub    => Cannot_Happen,
                       Finished           => Cannot_Happen);
      Idle (           CCA_Super.C_Fired  => Set_Flag,
                       CCA_Super.Finished => Idle,
                       Unlink_SuperSub    => Unlink_SuperSub,
                       Finished           => Ignore);
      Set_Flag (       CCA_Super.C_Fired  => Idle,
                       CCA_Super.Finished => Idle,
                       Unlink_SuperSub    => Unlink_SuperSub,
                       Finished           => Idle);
      Unlink_SuperSub (CCA_Super.C_Fired  => Set_Flag,
                       CCA_Super.Finished => Idle,
                       Unlink_SuperSub    => Idle,
                       Finished           => Ignore);
    end transition;

  end object;
  pragma id (22);
  pragma key_letter ("CSH");
  pragma cca ("");

  object Global_SubI is

    idGSI      : integer;

    GlobalFlag : boolean;


    state Idle (Test : in  integer);
    pragma state_number (2);

    event Finished ();
    pragma event_number (1);

    transition is
      Non_Existent (CCA_Super.C_Fired  => Cannot_Happen,
                    CCA_Super.Finished => Cannot_Happen,
                    Finished           => Cannot_Happen);
      Idle (        CCA_Super.C_Fired  => Idle,
                    CCA_Super.Finished => Ignore,
                    Finished           => Ignore);
    end transition;

  end object;
  pragma id (23);
  pragma key_letter ("GSI");

  object TCA_D is

    idTD     : integer;

    TDRef    : integer;

    TDPassed : boolean;

    TDLinked : boolean;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    state Link_Global_Super_to_TCA_Sub (Test : in  integer);
    pragma state_number (3);

    event Fired (Test : in  integer);
    pragma event_number (1);

    event Link_SuperSub (Test : in  integer);
    pragma event_number (2);

    transition is
      Non_Existent (                Fired         => Cannot_Happen,
                                    Link_SuperSub => Cannot_Happen);
      Idle (                        Fired         => Start,
                                    Link_SuperSub => Link_Global_Super_to_TCA_Sub);
      Start (                       Fired         => Idle,
                                    Link_SuperSub => Ignore);
      Link_Global_Super_to_TCA_Sub (Fired         => Ignore,
                                    Link_SuperSub => Idle);
    end transition;

  end object;
  pragma id (24);
  pragma key_letter ("ObjTD");
  pragma tca ("");

  object TCA_E is

    idTE     : integer;

    TERef    : integer;

    TELinked : boolean;

    TEPassed : boolean;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    state Link_SuperSub (Test : in  integer);
    pragma state_number (3);

    event Fired (Test : in  integer);
    pragma event_number (1);

    event Link_SuperSub (Test : in  integer);
    pragma event_number (2);

    event Finished (Test : in  integer);
    pragma event_number (3);

    transition is
      Non_Existent ( Fired         => Cannot_Happen,
                     Link_SuperSub => Cannot_Happen,
                     Finished      => Cannot_Happen);
      Idle (         Fired         => Start,
                     Link_SuperSub => Link_SuperSub,
                     Finished      => Ignore);
      Start (        Fired         => Start,
                     Link_SuperSub => Ignore,
                     Finished      => Idle);
      Link_SuperSub (Fired         => Ignore,
                     Link_SuperSub => Link_SuperSub,
                     Finished      => Idle);
    end transition;

  end object;
  pragma id (25);
  pragma key_letter ("ObjTE");
  pragma tca ("");

  object TCA_F is

    idTF  : integer;

    TFRef : integer;


    state Idle (Test : in  integer);
    pragma state_number (1);

    state Start (Test : in  integer);
    pragma state_number (2);

    event Fired (Test : in  integer);
    pragma event_number (1);

    transition is
      Non_Existent (Fired => Cannot_Happen);
      Idle (        Fired => Start);
      Start (       Fired => Idle);
    end transition;

  end object;
  pragma id (26);
  pragma key_letter ("ObjTF");
  pragma tca ("");

  object Test_Data is

    Current_Test_Number : integer;


  end object;
  pragma id (27);
  pragma key_letter ("TD");

  object TCA_CP is

    idTCP : integer;


  end object;
  pragma id (28);
  pragma key_letter ("TCP");
  pragma tca ("");

  object CCA_CP is

    idCCP : integer;


  end object;
  pragma id (29);
  pragma key_letter ("CCP");
  pragma cca ("");

  object Global_CP is

    idGCP : integer;


  end object;
  pragma id (30);
  pragma key_letter ("GCP");

end domain;
pragma number (38);
pragma name ("CCA_TCA_Tagging");
pragma kl ("CT_Tags");
pragma version (3);
