//! This Domain is for testing the timer features of the software architecture.
domain TT is
  object Basic_Timer;
  object Deleting_Timer;
  object Report_Data;
  object Resetting_Timer;
  object Test;
  object Test_Scheduler;
  object Time_Remaining;
  object Unsupported;

  public type Timer_ID is integer;

  //! Used to define the granularity of Time
  public type Time_Unit is enum (MICROSECOND = 1,
                                 MILLISECOND = 2,
                                 SECOND      = 3,
                                 MINUTE      = 4,
                                 HOUR        = 5,
                                 DAY         = 6);

  private type integer_array is structure
    array_element : integer;
  end structure;

  public service create_report_data ();
  pragma domain_operation_number (1);

  public service delete_report_data ();
  pragma domain_operation_number (2);

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


  terminator Timer is
    public service Set_Timer (Timer_ID       : in  Timer_ID,
                              Time_Remaining : in  integer,
                              Granularity    : in  Time_Unit,
                              Event_ID       : in  event,
                              Instance_ID    : in  instance);

    public service Reset_Timer (Timer_ID : in  Timer_ID);

    public service Set_Absolute_Timer (Timer_ID    : in  Timer_ID,
                                       Actual_Date : in  timestamp,
                                       Actual_Time : in  duration,
                                       Event_ID    : in  event,
                                       Instance_ID : in  instance);

  end terminator;
  pragma key_letter ("TIM");


  terminator Where_Are_We is
    public service What_Env (Env_Text : out string);
    pragma terminator_operation_number(1);

  end terminator;
  pragma key_letter ("WAW");


  //! start timer tests
  private service start_timer_tests (); pragma scenario (1);

  relationship R1 is Test_Scheduler unconditionally runs_first one Test,
                     Test conditionally is_run_by one Test_Scheduler;
 pragma Class_A ("Test_Scheduler");
 pragma Class_B ("Test");

  relationship R3 is Test_Scheduler unconditionally uses one Report_Data,
                     Report_Data unconditionally is_used_by one Test_Scheduler;
 pragma Class_A ("Test_Scheduler");
 pragma Class_B ("Report_Data");

  relationship R4 is Test unconditionally follows one Test,
                     Test conditionally is_followed_by one Test;
 pragma Class_A ("Test");
 pragma Class_B ("Test");

  relationship R2 is Test is_a (Time_Remaining,
                                Resetting_Timer,
                                Deleting_Timer,
                                Unsupported,
                                Basic_Timer);

  object Report_Data is

    id                     : preferred integer;

    Reported_Domain_Number : integer;


  end object;
  pragma id (6);
  pragma key_letter ("RD");

  object Test is

    id           : preferred integer;

    next_test_id : referential (R4.follows.Test.id) integer;


    event execute_test ();
    pragma event_number (1);

    event finish ();
    pragma event_number (2);

  end object;
  pragma id (2);
  pragma key_letter ("T");

  object Test_Scheduler is

    id                  : preferred integer;

    initial_test_id     : referential (R1.runs_first.Test.id) integer;

    report_data_id      : referential (R3.uses.Report_Data.id) integer;

    current_test_number : integer;


    state idle ();
    pragma state_number (1);

    state perform_subsequent_tests (test_instance : in  instance of Test);
    pragma state_number (2);

    terminal state finished ();
    pragma state_number (4);

    state setup ();
    pragma state_number (5);

    state perform_first_test (test_instance : in  instance of Test);
    pragma state_number (9);

    event ready ();
    pragma event_number (1);

    event test_complete (test_instance : in  instance of Test);
    pragma event_number (2);

    event setup_complete (test_instance : in  instance of Test);
    pragma event_number (3);

    event all_tests_complete ();
    pragma event_number (4);

    transition is
      Non_Existent (            ready              => Cannot_Happen,
                                test_complete      => Cannot_Happen,
                                setup_complete     => Cannot_Happen,
                                all_tests_complete => Cannot_Happen);
      idle (                    ready              => setup,
                                test_complete      => Cannot_Happen,
                                setup_complete     => Cannot_Happen,
                                all_tests_complete => Cannot_Happen);
      perform_subsequent_tests (ready              => Cannot_Happen,
                                test_complete      => perform_subsequent_tests,
                                setup_complete     => Cannot_Happen,
                                all_tests_complete => finished);
      finished (                ready              => Cannot_Happen,
                                test_complete      => Cannot_Happen,
                                setup_complete     => Cannot_Happen,
                                all_tests_complete => Cannot_Happen);
      setup (                   ready              => Cannot_Happen,
                                test_complete      => Cannot_Happen,
                                setup_complete     => perform_first_test,
                                all_tests_complete => Cannot_Happen);
      perform_first_test (      ready              => Cannot_Happen,
                                test_complete      => perform_subsequent_tests,
                                setup_complete     => Cannot_Happen,
                                all_tests_complete => Cannot_Happen);
    end transition;

  end object;
  pragma id (3);
  pragma key_letter ("TS");

  object Time_Remaining is

    id           : preferred integer;

    test_id      : referential (R2.id) integer;

    timer_id_one : integer;

    timer_id_two : integer;



    identifier is (test_id);

    state idle ();
    pragma state_number (1);

    state setup ();
    pragma state_number (2);

    terminal state deletion ();
    pragma state_number (3);

    state executing_part_one ();
    pragma state_number (4);

    state starting_part_two ();
    pragma state_number (6);

    state executing_part_two ();
    pragma state_number (8);

    state failed_part_one ();
    pragma state_number (9);

    state failed_part_two ();
    pragma state_number (10);

    state passed_part_one ();
    pragma state_number (12);

    state passed_part_two ();
    pragma state_number (13);

    state starting_part_three ();
    pragma state_number (14);

    state executing_part_three ();
    pragma state_number (15);

    state failed_part_three ();
    pragma state_number (16);

    state passed_part_three ();
    pragma state_number (17);

    state complete ();
    pragma state_number (18);

    event timer_one_fired ();
    pragma event_number (1);

    event setup_complete ();
    pragma event_number (2);

    event failure ();
    pragma event_number (3);

    event success ();
    pragma event_number (4);

    event proceed ();
    pragma event_number (5);

    event timer_two_fired ();
    pragma event_number (6);

    event test_complete ();
    pragma event_number (8);

    event part_one_complete ();
    pragma event_number (9);

    event part_two_complete ();
    pragma event_number (10);

    transition is
      Non_Existent (        Test.execute_test => Cannot_Happen,
                            Test.finish       => Cannot_Happen,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      idle (                Test.execute_test => setup,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      setup (               Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => executing_part_one,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      deletion (            Test.execute_test => Cannot_Happen,
                            Test.finish       => Cannot_Happen,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      executing_part_one (  Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => failed_part_one,
                            success           => passed_part_one,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      starting_part_two (   Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => executing_part_two,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      executing_part_two (  Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => failed_part_two,
                            success           => passed_part_two,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      failed_part_one (     Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => starting_part_two,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      failed_part_two (     Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => starting_part_three,
                            timer_one_fired   => Cannot_Happen);
      passed_part_one (     Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => starting_part_two,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      passed_part_two (     Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => starting_part_three,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      starting_part_three ( Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => executing_part_three,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      executing_part_three (Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => failed_part_three,
                            success           => passed_part_three,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      failed_part_three (   Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => complete,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      passed_part_three (   Test.execute_test => Ignore,
                            Test.finish       => Ignore,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => complete,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
      complete (            Test.execute_test => Ignore,
                            Test.finish       => deletion,
                            setup_complete    => Cannot_Happen,
                            failure           => Cannot_Happen,
                            success           => Cannot_Happen,
                            proceed           => Cannot_Happen,
                            timer_two_fired   => Cannot_Happen,
                            test_complete     => Cannot_Happen,
                            part_one_complete => Cannot_Happen,
                            part_two_complete => Cannot_Happen,
                            timer_one_fired   => Cannot_Happen);
    end transition;

  end object;
  pragma id (9);
  pragma key_letter ("TR");

  object Unsupported is

    id      : preferred integer;

    test_id : referential (R2.id) integer;



    identifier is (test_id);

    public service log_unsupported_tests ();
    pragma operation_number (1);

    state idle ();
    pragma state_number (1);

    state complete ();
    pragma state_number (2);

    state log_test_results ();
    pragma state_number (3);

    terminal state deletion ();
    pragma state_number (4);

    event test_complete ();
    pragma event_number (1);

    transition is
      Non_Existent (    test_complete     => Cannot_Happen,
                        Test.execute_test => Cannot_Happen,
                        Test.finish       => Cannot_Happen);
      idle (            test_complete     => Cannot_Happen,
                        Test.execute_test => log_test_results,
                        Test.finish       => Ignore);
      complete (        test_complete     => Cannot_Happen,
                        Test.execute_test => Ignore,
                        Test.finish       => deletion);
      log_test_results (test_complete     => complete,
                        Test.execute_test => Ignore,
                        Test.finish       => Ignore);
      deletion (        test_complete     => Cannot_Happen,
                        Test.execute_test => Cannot_Happen,
                        Test.finish       => Cannot_Happen);
    end transition;

  end object;
  pragma id (5);
  pragma key_letter ("U");

  object Basic_Timer is

    id           : preferred integer;

    test_id      : referential (R2.id) integer;

    timer_id_one : integer;



    identifier is (test_id);

    state idle ();
    pragma state_number (1);

    state executing_part_one ();
    pragma state_number (2);

    state complete ();
    pragma state_number (3);

    state executing_part_two ();
    pragma state_number (4);

    state test_passed ();
    pragma state_number (5);

    state setup ();
    pragma state_number (8);

    terminal state deletion ();
    pragma state_number (9);

    event timer_fired ();
    pragma event_number (1);

    event test_complete ();
    pragma event_number (2);

    event setup_complete ();
    pragma event_number (3);

    transition is
      Non_Existent (      Test.execute_test => Cannot_Happen,
                          timer_fired       => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Cannot_Happen);
      idle (              Test.execute_test => setup,
                          timer_fired       => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Ignore);
      executing_part_one (Test.execute_test => Ignore,
                          timer_fired       => executing_part_two,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Ignore);
      complete (          Test.execute_test => Ignore,
                          timer_fired       => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => deletion);
      executing_part_two (Test.execute_test => Ignore,
                          timer_fired       => test_passed,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Ignore);
      test_passed (       Test.execute_test => Ignore,
                          timer_fired       => Cannot_Happen,
                          test_complete     => complete,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Ignore);
      setup (             Test.execute_test => Ignore,
                          timer_fired       => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          setup_complete    => executing_part_one,
                          Test.finish       => Ignore);
      deletion (          Test.execute_test => Cannot_Happen,
                          timer_fired       => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          Test.finish       => Cannot_Happen);
    end transition;

  end object;
  pragma id (4);
  pragma key_letter ("BT");

  object Deleting_Timer is

    id           : preferred integer;

    test_id      : referential (R2.id) integer;

    timer_id_one : integer;

    timer_id_two : integer;



    identifier is (test_id);

    state idle ();
    pragma state_number (1);

    state executing_part_one ();
    pragma state_number (2);

    state failed_part_one ();
    pragma state_number (4);

    state executing_part_two ();
    pragma state_number (5);

    state failed_part_two ();
    pragma state_number (6);

    state setup ();
    pragma state_number (9);

    state complete ();
    pragma state_number (10);

    state passed_part_three ();
    pragma state_number (12);

    terminal state deletion ();
    pragma state_number (13);

    event timer_one_fired ();
    pragma event_number (1);

    event timer_two_fired ();
    pragma event_number (2);

    event part_one_complete ();
    pragma event_number (3);

    event part_two_complete ();
    pragma event_number (4);

    event setup_complete ();
    pragma event_number (5);

    event test_complete ();
    pragma event_number (6);

    transition is
      Non_Existent (      timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Cannot_Happen,
                          Test.finish       => Cannot_Happen);
      idle (              timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => setup,
                          Test.finish       => Ignore);
      executing_part_one (timer_one_fired   => executing_part_two,
                          timer_two_fired   => failed_part_one,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      failed_part_one (   timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => executing_part_two,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      executing_part_two (timer_one_fired   => passed_part_three,
                          timer_two_fired   => failed_part_two,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      failed_part_two (   timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => passed_part_three,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      setup (             timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => executing_part_one,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      complete (          timer_one_fired   => Ignore,
                          timer_two_fired   => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => deletion);
      passed_part_three ( timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => complete,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore);
      deletion (          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen,
                          setup_complete    => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Cannot_Happen,
                          Test.finish       => Cannot_Happen);
    end transition;

  end object;
  pragma id (7);
  pragma key_letter ("DT");

  object Resetting_Timer is

    id           : preferred integer;

    test_id      : referential (R2.id) integer;

    timer_id_one : integer;

    timer_id_two : integer;



    identifier is (test_id);

    state idle ();
    pragma state_number (1);

    state setup ();
    pragma state_number (2);

    state executing_part_one ();
    pragma state_number (3);

    state test_passed ();
    pragma state_number (4);

    state part_one_failed ();
    pragma state_number (5);

    state complete ();
    pragma state_number (6);

    state executing_part_two ();
    pragma state_number (8);

    state part_two_failed ();
    pragma state_number (9);

    terminal state deletion ();
    pragma state_number (10);

    event setup_complete ();
    pragma event_number (1);

    event timer_one_fired ();
    pragma event_number (2);

    event timer_two_fired ();
    pragma event_number (3);

    event test_complete ();
    pragma event_number (4);

    event part_one_complete ();
    pragma event_number (5);

    event part_two_complete ();
    pragma event_number (6);

    transition is
      Non_Existent (      setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Cannot_Happen,
                          Test.finish       => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      idle (              setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => setup,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      setup (             setup_complete    => executing_part_one,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      executing_part_one (setup_complete    => Cannot_Happen,
                          timer_one_fired   => executing_part_two,
                          timer_two_fired   => part_one_failed,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      test_passed (       setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => complete,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      part_one_failed (   setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => executing_part_two,
                          part_two_complete => Cannot_Happen);
      complete (          setup_complete    => Cannot_Happen,
                          timer_one_fired   => Ignore,
                          timer_two_fired   => Ignore,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => deletion,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      executing_part_two (setup_complete    => Cannot_Happen,
                          timer_one_fired   => part_two_failed,
                          timer_two_fired   => test_passed,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
      part_two_failed (   setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Ignore,
                          Test.finish       => Ignore,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => test_passed);
      deletion (          setup_complete    => Cannot_Happen,
                          timer_one_fired   => Cannot_Happen,
                          timer_two_fired   => Cannot_Happen,
                          test_complete     => Cannot_Happen,
                          Test.execute_test => Cannot_Happen,
                          Test.finish       => Cannot_Happen,
                          part_one_complete => Cannot_Happen,
                          part_two_complete => Cannot_Happen);
    end transition;

  end object;
  pragma id (8);
  pragma key_letter ("RT");

end domain;
pragma number (36);
pragma name ("Test_Timers");
pragma kl ("TT");
pragma version (7);
