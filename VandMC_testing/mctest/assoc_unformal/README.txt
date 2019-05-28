This model tests relating and selecting across all of the different
relationship types.  In 2018 persistence testing was added/refreshed.
Turn on persistence by marking (all) classes as persistent in class.mark.
When testing persistence, run the test twice, once to create the nvs.fil and
once to use it for initialization.  Verifier does not simulate persistence.

To run in Verifier, launch assoc_unformal1.
assoc_unformal::Port1:start_test is marked to execute.

Expect:
Simulation started.
Executing the specified initializer.
User invoked interface message: start_test
LogSuccess:  Made it to the end.

Look for any "LogFailure" messages.  If any, the test is  failed.

These init functions are marked for running the generated code.

Run as a local C/C++ app.

Expect:
PASSED - LOG::LogSuccess:  Made it to the end.
