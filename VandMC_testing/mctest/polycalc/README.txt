This model tests polymorphic events and sub/super hierarchies.

To run in Verifier, launch polycalc.
polycalc::testing:start_test is marked to be executed.

Another test can be run by running fuction 'deeptest'.

Expect (test):
User invoked interface message: start_test
LogInteger:  6
LogSuccess:  test passed
LogInteger:  6
LogSuccess:  test passed
LogSuccess:  done with test 1
LogSuccess:  test passed for garden
LogSuccess:  test passed for garden
LogSuccess:  test passed for garden
LogSuccess:  done with test 2
LogSuccess:  finished with all tests

Expect (deeptest):
User invoked function: deeptest
LogInfo:  deep test started
LogInfo:  dvd mounting
LogSuccess:  location mount complete
LogInfo:  deinstalling (received remove event)
LogSuccess:  removal complete
LogSuccess:  deep test passed

Look for any "LogFailure" messages.  If any, the test has failed.

These init functions are marked for running the generated code.

Build and Run as a Local C/C++ application.

Expect:
6
test passed
6
test passed
done with test 1
test passed for garden
test passed for garden
test passed for garden
done with test 2
finished with all tests
