## TESTBENCHING PROJECT STRUCTURE

This project contains two components:

1. test runner - A framework for automatic execution of collections (buckets) 
   of self-checking, model-based test cases.
2. sample test bench - An example of how the test runner is intended to be used.

## USAGE OVERVIEW

### Use Unmodified Test Runner 
The test runner component can be used, unmodified, via reference from your project,
so there is no need to change anything in this project.  You can copy the sample
test bench component and use it as a starting point for your test bench.

### Simulation Configuration
Your simulation configuration will contain at least three component references:  
one for the test runner, one for your test bench, and at least one for your 
application.

### Test Suite Organization
Your test bench may contain any number of test cases, organized into buckets
as you see fit.  Often buckets are organized around functional boundaries, but
in some cases it is convenient to group test cases that can run in succession, 
without requiring much cleanup between each test case, into a single bucket. 
Any test case that requires significant cleanup (such as a complete restart of 
the application or the tool) is best placed in a bucket by itself.


## DETAILED USAGE GUIDE

### Prepare Your Workspace
* Load this project into a workspace that also contains your application model.
* Select the project containing your application model and enable 
  inter-project references for that project.

### Build Your Test Bench
* If you have an existing test bench for your application, you will need to 
  integrate the capabilities from the sample test bench into yours.  One
  approach is:
  * copy the "classes" and "functions" package from the sample test bench 
    component into your existing test bench component
  * add a provided interface to your test bench component, formalizing it
    to test sequencing (defined in this project), and naming it SEQ
  * copy all port activities for SEQ from the sample test bench to your 
    test bench
* Otherwise, copy the entire sample test bench component into a project of 
  your own and then modify it as necessary to test your application.
* Ensure your test bench sprouts ports for:
  * Interacting with your application (replace DUTport_replace_with_your_own
    with ports for communicating with your application).
  * Interacting with the test runner (SEQ on the test bench sample)

### Initialization
Three distinct pieces require initialization:
* Application
* Test bench
* Test runner

The test runner communicates via interface messages with the test bench, which 
interacts with the application through interface messages.  Assuming your 
application requires some initialization, consider surfacing an interface from 
it, enabling the test bench to initialize it.  

The test runner surfaces a function, run(), that when executed, starts the 
process of executing your test suite.  The sequence is roughly:
1. user executes test runner/functions/run()
1. test runner sends a signal, discover, to the test bench
2. test bench executes function, init(), which is responsible for 
   initializing the test bench and the application, after which it
   sends a signal, register, to the test runner

The sample test bench provides a starting point for the function, init(), 
within your test bench.  You must modify it to:
* initialize your test bench
* initialize your application

The final line of this function should send the signal, register, to the 
test runner.  In this signal, specify the maximum duration of each test 
case as the value of guard_timer_duration.  This duration is expressed in 
microseconds.  If your test cases need to run longer than about 33 minutes,
you can specify a duration of 0 to disable the guard timer entirely. 

### Build Your Test Suite
The sample test bench provides two example test cases.  Consider deleting one
of them and modifying the other one so you can focus on making the entire system
work with just a single test case first, before adding additional test cases.

After getting the first test case working, then add additional test cases and 
buckets according to your needs.

In general each test case should do the following:
* establish pre-conditions for the test
* inject stimulus to initiate (and if necessary, continue) the test
* compare expected and actual post-conditions to determine pass/fail disposition

Keep in mind that the classes, functions, and port activities 
copied from the sample test bench into your test bench are under your control, 
so you may modify them as necessary to accomplish the goals of your test suite.

Recall that your test bench communicates with the application as well as the test 
runner.  When the latter prods the test bench to run a test case, that test case 
must interact with the application, through interface messages, to accomplish the
three steps mentioned above.

Next, modify the following operations:
* application test suite::init() - set the name and version of your test suite
* test case::setup() - modify to reflect contents of your test suite; do this every
  time you modify the contents of your test suite

### Create Simulation Configuration
Create a package to contain your simulation configuration.  Assuming your test
bench and application reside within the same project, create this package at
the top level of that project.

Add component references to the package for:
* test runner (defined in this project)
* your test bench
* your application component(s)

Connect the interfaces sprouted by the component references.

### Create Debug Configuration
Create a debug configuration for Verifier (aka xtUML eXecute application),
selecting only the component references within the simulation configuration
described in the previous section.

### Run Your Test Suite
* Invoke Verifier using the debug configuration described above.
* (Optionally) put a breakpoint on the final line of test bucket::bucket done
  so you will know when the test suite has finished (or not) executing.
* Execute test runner/functions/run()