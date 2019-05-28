calculator
==========

## Introduction

This model is a MASL example model based loosely on the calculator model found
in `models/VandMC_testing/mctest/calculator/`. It is a simple four function
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

This project consists of two MASL domains and one MASL project. The two domains
are wired together in the `calculator` project.

#### `ALU`

The `ALU` domain contains the brains of the calculator application. It receives
`keypress` and `clear` signals and outputs result values and errors when
applicable.

#### `keypad`

The `keypad` domain provides UI for the `ALU` domain. It receives `result` and
`error` signals to display to the user and produces keypress and clear events
for the `ALU` domain.

A simple Java GUI is provided for the keypad domain. The source for this GUI can
be found in `keypad/javasrc`. Additionally, an Eclipse launch configuration for
the GUI is included in `keypad/.launches`, so if the `keypad` project is
imported into an Eclipse workspace, the launch configuration will be available
to run the GUI.

The `keypad` domain employs realized code to interact with the GUI and send
messages to the `ALU` domain. This realized code can be found in
`keypad/gen/keypad_services.cc`. This will be explained in more detail in the
section on generating and building the project.

## Building the MASL compiler

_NOTE: The MASL architecture is only supported on Linux. For this step, you must
switch to a Linux environment if Mac is your normal development environment._

To build the MASL model compiler, first clone the `masl` repository (found at
[https://github.com/xtuml/masl](https://github.com/xtuml/masl)). This project
assumes that the repository will be cloned into `~/git/masl`.

Follow the instructions in the `README.md` file to build MASL. This will take
about 10 minutes (rough estimate).

**Bonus:** Follow the instructions to run the petrol station model in Inspector.

## Building the calculator project

- Import `keypad`, `ALU` and `calculator` into a workspace.  
- Open the C/C++ perspective.  
- Select "Project > Build All".  

## Running the calculator example

### Launch the UI

Launch the UI by going to "Run Configurations > Java Application > KeypadUI" and
selecting "Run". The `keypad` project must be built to run the UI.

_Important: The Java UI must be running before the `calculator` process. This is
because the UI waits for socket connections from the `calculator` process. If
the `calculator` process is started first, it will try to connect and fail._

### Run the `calculator` process

Launch the UI by going to "Run Configurations > C/C++ Application > calculator"
and selecting "Run".

You can now use the calculator via the UI.

### Other run configurations

You can run both the `keypad` and the `ALU` domains independently of one another
using the `keypad` and `ALU` launch configurations (remember to launch the UI
first if you use the `keypad` process). Additionally, a set of four test cases
can be run by launching the `ALU_test` launch configuration.

### MASL Inspector

The launches are configured to be listening for the MASL Inspector on port 1234.
To connect the Inspector open a shell and execute the following:

```
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/git/masl/install/lib
$HOME/git/masl/install/bin/masl-inspector -p 1234
```

## Modifying and rebuilding the project

When changes are made to the MASL domains and project, first run the "Export
MASL Domain" or "Export MASL Project" utility and then rebuild the project with
"Project > Build Project".

