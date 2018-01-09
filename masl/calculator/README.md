calculator
==========

## Introduction

This model is a MASL example model based on the calculator model found in
`models/VandMC_testing/mctest/calculator/`. It is a simple four function
calculator that does all left-associative operations -- that is evaluating the
following expression:
```
1 + 2 * 7 =
```
would result in `21` and _not_ `15` (with an intermediate result of `3` shown
when the `*` key was pressed). This emulates a simple desktop calculator that
stores a single value in memory at a time and operates on it in combination with
the value entered on the display.

## Project setup

This project consists of three MASL domains and one MASL project. The three
domains are wired together in the `calculator` project.

#### `calc`

The `calc` domain contains the brains of the calculator application. It receives
`keypress` and `clear` signals and outputs result values and errors when
applicable.

#### `keypad`

The `keypad` domain provides UI for the `calc` domain. It receives `result` and
`error` signals to display to the user and produces keypress and clear events
for the `calc` domain.

A simple java GUI is provided for the keypad domain. The source for this GUI can
be found in `keypad/javasrc`. Additionally, an Eclipse launch configuration for
the GUI is included in `keypad/.launches`, so if the `keypad` project is
imported into an Eclipse workspace, the launch configuration will be available
to run the GUI.

The `keypad` domain employs realized code to interact with the GUI and send
messages to the `calc` domain. This realized code can be found in
`keypad/masl/keypad/custom/keypad_services.cc`. This will be explained in more
detail in the section on generating and building the project.

#### `calc_test`

The `calc_test` domain tests the `calc` domain. It has the same terminators and
public services as `keypad` and simply contains test case functions to exercise
the calculator.

## Building the MASL compiler

_NOTE: The MASL architecture is only supported on Linux. For this step, you must
switch to a Linux environment if Mac is your typical environment._

To build the MASL model compiler, first clone the `masl` repository (found at
[https://github.com/xtuml/masl](https://github.com/xtuml/masl)). Follow the
instructions in the `README` (_not_ `README.md`) file to build MASL. This will
take about 10 minutes (rough estimate).

**Bonus:** Follow the instructions to run the petrol station model in inspector.

## Generating and building the calculator project

### Generate the projects

First, generate MASL from each domain and project. For domains, right click on
the component definition and click "Export MASL Domain". For the calculator
project, right click on the package containing the project component
`calculator` and click "Export MASL Project".

#### Notes on `keypad` generated MASL

The `keypad` domain has some customization for using realized code, so work must
be done after exporting the domain. In the `keypad/masl/keypad` directory do the
following:

1. Delete files `connect.svc`, `error.svc`, `getPendingEvent.svc`, and
   `result.svc`. These are all implemented as realized C++, so they must not be
   present.  
2. The realized code in `keypad/masl/keypad/custom` will have been deleted by
   the exporter. It can be restored using
   `git checkout keypad/masl/keypad/custom`.  
3. In `keypad/masl/keypad/keypad.mod`, replace `private service getPendingEvent
   () return calcevent;` with `private function getPendingEvent () return
   calcevent;`. In BridgePoint, the `function` keyword was deprecated, however
   the version of the MASL model compiler that we have still requires it for
   services that return a value.  

_NOTE: Since the model is in revision control, if no changes have been made to
the keypad model, these hand edits should result in a clean repository._

### Set up the project as an example in the MASL repository

_NOTE: We are not clear on how to use the MASL model compiler yet. Because of
this, these instructions are subject to change when we get more information
about MASL project setup. The current strategy is to build the model with the
compiler itself as an example model (like petrol station)._

#### Step 0

Clean the `masl` repository: `git clean -dxf`

#### Step 1

In the `masl` repository, create a new subdirectory in `exmaples/` called
`calculator/`. Inside that directory create subdirectories `calc_OOA/`,
`calc_test_OOA/`, `keypad_OOA/` and `calculator/`.

#### Step 2

Create a file in `examples/calculator/` called `CMakeLists.txt`. Open this file
in an editor and paste in the following contents:
```
project(Calculator VERSION 0.1)

include(Masl)

set(MaslExportTarget ${PROJECT_NAME})

add_masl_domain(calc_OOA/calc.mod)
add_masl_domain(keypad_OOA/keypad.mod)
add_masl_domain(calc_test_OOA/calc_test.mod)
add_masl_project(calculator/calculator.prj)

generate_masl()

include(CMakePackageConfigHelpers)

write_basic_package_version_file (
  ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
  VERSION       ${PROJECT_VERSION}
  COMPATIBILITY ExactVersion
)

export( EXPORT ${PROJECT_NAME}Targets
        NAMESPACE ${PROJECT_NAME}:: )

install(
  EXPORT      ${PROJECT_NAME}Targets
  FILE        ${PROJECT_NAME}Config.cmake
  NAMESPACE   ${PROJECT_NAME}::
  DESTINATION ${INSTALL_LIB_DIR}/cmake/${PROJECT_NAME}
  )

install(
  FILES
              ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake
  DESTINATION ${INSTALL_LIB_DIR}/cmake/${PROJECT_NAME}
  )
```

At this point, your directory structure should look something like this:
```
▸ core-cpp/         
▸ core-java/        
▾ examples/         
  ▾ calculator/     
    ▸ calc_OOA/     
    ▸ calc_test_OOA/
    ▸ calculator/   
    ▸ keypad_OOA/   
      CMakeLists.txt
  ▸ petrol/         
  ▸ utils/          
▸ inspector/        
  CMakeLists.txt    
  README            
  README.md         
```

#### Step 3

Open `CMakeLists.txt` (at the root of the `masl` repository). Add this line
at the end of the file:
```
add_subdirectory(examples/calculator)
```

#### Step 4

You can also comment out (with `#` symbol) the two lines before like this:
```
#add_subdirectory(examples/petrol)
#add_subdirectory(examples/utils)
add_subdirectory(examples/calculator)
```
This optional step will prevent the petrol station example and the utility
domains from being built, but it cuts down build time significantly.

#### Step 5

Copy the MASL files from your BridgePoint projects into their respective
directories in `examples/calculator/`. A script can be employed to do this step
very easily (see example script in step 6).

#### Step 6

Move the `.int` file from each of the three domain directories into the
`examples/calculator/calculator` directory. This is another scriptable step.

Here is an example script that can be used to do steps 5 and 6:
```
#!/bin/bash

SRC=   # replace with path to your `models/masl/calculator` directory
DST=   # replace with path to your `examples/calculator` directory

# remove old code
rm -rf $DST/calc_OOA/*
rm -rf $DST/calc_test_OOA/*
rm -rf $DST/calculator/*
rm -rf $DST/keypad_OOA/*

# copy in new code
cp -r $SRC/calc/masl/calc/* $DST/calc_OOA
cp -r $SRC/calc_test/masl/calc_test/* $DST/calc_test_OOA
cp -r $SRC/calculator/masl/calculator/* $DST/calculator
cp -r $SRC/keypad/masl/keypad/* $DST/keypad_OOA

# move int files
find $DST/*_OOA -name *.int -exec mv {} $DST/calculator \;
```

### Build MASL and the example project

Generate and build MASL again:
```
cmake . -G Ninja -DCMAKE_INSTALL_PREFIX=${PWD}/install
ninja install
```

## Running the calculator example

### Launch the UI

Launch a Linux installation of BridgePoint and import `keypad` into a workspace.
Launch the UI by going to "Run Configurations > Java Application > KeypadUI" and
selecting "Run"

_Important: The Java UI must be running before the `calculator_transient`
process. This is because the UI waits for socket connections from the
`calculator_transient` process. If the `calculator_transient` process is
started first, it will try to connect and fail._

### Run the `calculator_transient` process

From the `masl` repository, launch the calculator process:
```
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib:${PWD}/install/lib
install/bin/calculator_transient -util Inspector -inspector-port 1234
```

### Launch the inspector and initialize the connection to the UI

From another shell in the `masl` directory:
```
install/bin/masl-inspector -p 1234 -s examples/calculator
```

### Use the calculator

You can now use the calculator via the UI. You can also run test cases through
the scenarios in the "calc_test" domain.

