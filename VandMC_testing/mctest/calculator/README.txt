This model models a calculator connected to a keypad.
It exercises/demonstrates inter-component communication.
The idea comes from an article on Hierarchical State Machines written by Miro Samek.
It is a practical working model.

To run in Verifier, launch calculator.
keypad::test cases::testcase1 is marked to be run on message start_test.

Another test can be run by running function 'testcase2,3,4'.

Expect (testcase1):
User invoked function: testcase1
LogInfo:  Calculator received key code from keypad.
LogInteger:  1
LogInfo:  Calculator received key code from keypad.
LogInteger:  10
LogInfo:  Calculator received key code from keypad.
LogInteger:  2
LogInfo:  Calculator received key code from keypad.
LogInteger:  10
LogReal:  3.0 result

Look for any "LogFailure" messages.  If any, the test has failed.

This init function is marked for running the generated code.

Build and Run as a Local C/C++ application.

Expect:
Calculator received key code from keypad.
1
Calculator received key code from keypad.
10
Calculator received key code from keypad.
2
Calculator received key code from keypad.
10
result, 3.000000