This is strictly a test model of various OAL expressions with
a focus on compound expressions.

To run in Verifier, launch ex2_verify.  ex2::instrumentation::start_test is
marked to be executed.

Expect:
...
LogInfo:  Test Complete
1:Driver disposed.
[with only LogSuccess and no LogFailure)

Look for any "LogFailure" messages.  If any, the test has failed.

These initialization functions are marked for running the generated code.

Build and Run as a Local C/C++ application.

Expect:
...
PASSED - LOG::LogSuccess:  Test Compund Expressions - Cobine Real and Integer Data Types
..\src\ex2_TCE_class.c #  4771: Transition complete:  TCE State [12] Combinine Real and Integer Data Types
..\src\ex2_DR_class.c #   235: Transition started:  DR State [2] Idle
LOG::LogInfo:  Test Complete
..\src\ex2_DR_class.c #   238: Transition complete:  DR State [5] Test Complete
