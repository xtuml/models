## GPS WATCH PROJECT STRUCTURE

The project consists of three executable entities:

1. A Java based GUI
2. A model running in xtUML eXecute along with some Java that handles GUI I/O
3. A compiled program resulting from generated code plus some handwritten C that 
   does the equivalent of the Java code in 2

The project is implemented in both OAL and MASL. The OAL version is supported on
Linux, Windows and macOS. The MASL version is supported on Linux only.
Additionally, the xtUML eXecute application is not supported for the MASL
implementation.

## RUNNING THE PROJECT (OAL version)

#### To run the Watch GUI:

An execution configuration exists in order to launch the GUI. To run the
Watch GUI:

* Open the C/C++ Projects perspective (Window > Open Perspective > Other... >
  C/C++)
* Run > Run Configurations...
* Expand the Java Application item
* Select "GPS_Watch UI"
* Click Run

The GUI is designed to allow applications (xtUML eXecute sessions and generated
code) to connect interchangeably, meaning there is no need to restart the GUI
between various sessions. When a new connection is detected the GUI will simply
drop any existing connection and only service the recently detected connection.

You can now run either the already generated Windows executable, Linux 
executable, macOS executable, or run the model in xtUML eXecute.

#### To run the EXE:

* **Windows:**
  - Expand the Binaries item under the project
  - Right-click on `GPSWatch.exe` and choose Open With > System Editor
* **Linux:**
  - Expand the "Debug_Linux" folder under the project
  - Right-click on `GPSWatch`, select "Run As > Run Configurations"
  - Create a new C/C++ Application Run Configuration for this `GPSWatch`
    * Make sure the C/C++ Application field has "Debug_Linux/GPSWatch"
  - Select Run
* **macOS:**  
  _Note: Due to a [known bug](https://bugs.eclipse.org/bugs/show_bug.cgi?id=519886),
  launching the `GPS_Watch` application using an Eclipse run configuration is
  not supported for macOS._
  - Launch a terminal instance and navigate to the workspace root.
  - Execute `./GPS_Watch/Debug_Mac/GPS_Watch`
* The application will connect to the GUI automatically. Click the START/STOP 
  button on the watch, you will see the watch execute on the GUI and in the
  command prompt console. The MODE button causes GUI changes as well.
* The application is not configured with dynamic memory allocation. It will crash
  once it has ran long enough for the number of Trackpoints to accumulate and 
  exceed the space allocated for them.

#### To run the model in xtUML eXecute:

* Switch to the xtUML Debugging Perspective (Window > Open Perspective >
  Other... > xtUML Debugging)
* Run > Debug Configurations...
* Expand the xtUML eXecute Application item
* Select "GPS_Watch"
* Click Debug
* In Session Explorer, expand GPS_Watch > GPS_Watch > UI::UI::UI >
  UI::UI::UI > UI (package) > UI
* Right-click 'connect', select Execute
* Now the GUI may be used to drive execution.

You will also notice a "GPS_Watch with Initializer" launch configuration here.
This launch does not use the interactive GUI.  Instead, it starts and automated
test case that does its own stimulus and response.

To activate the "Goals" functionality, pause the watch as it is running then:
* In Session Explorer, expand GPS_Watch > GPS_Watch > UI::UI::UI >
  UI::UI::UI > TestCases
* Right-click 'createGoals_1', select Execute.
* Now start the watch again and press the "SET TARGET" button on the watch. 
  Goal indicator arrows will show on the UI.

## RUNNING THE PROJECT (MASL version)

**This project assumes that the MASL compiler is installed in a specific location.
To build and install the MASL model compiler, first clone the `masl` repository
(found at [https://github.com/xtuml/masl](https://github.com/xtuml/masl)) into
`~/git/masl`, then follow the README to build the compiler from source.**

The Watch GUI is common between the MASL and OAL implementations. Instructions
for how to start the GUI, see [above](#to-run-the-watch-gui)

#### To run the EXE:

* Open Run > Run Configurations...
* Expand the C/C++ Application item
* Select "GPS_Watch"
* Click Run
* The application will connect to the GUI automatically. Click the START/STOP 
  button on the watch, you will see the watch execute on the GUI and in the
  command prompt console. The MODE button causes GUI changes as well.

#### To connect Inspector:

* Open a shell instance
* Run the following command to configure the runtime library path:
  ```
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/git/masl/install/lib
  ```
* Run the following command to launch Inspector:
  ```
  $HOME/git/masl/install/bin/masl-inspector -p 1234
  ```
* You can now browse the model with Inspector. You can enable event tracing by
  selecting Trace > Trace Events. To switch between domains (components), click
  the dropdown menu and select another domain. To view instances of an object in
  an instance population, double click on the name of the object in the left
  hand column when the "Objects" tab is selected.

To activate the "Goals" functionality:
* In Inspector, switch to the UI domain by selecting it from the dropdown menu.
* Select the "Services" tab.
* Double-click 'createGoals_1', select Run.
* Now press the "SET TARGET" button on the watch. Goal indicator arrows will
  show on the UI.

## BUILDING THE PROJECT

The project is pre-built for Linux, macOS, and Windows so it is ready to run. Rebuilding
is easy.

If you want to rebuild the project after modifying the model or a marking file:

* If you are building the MASL version, be sure to run right-click > "Export
  MASL Domain" on any domain component that has been modified and right-click >
  "Export MASL Project" on any MASL project package that has been modified.
* Switch to the C/C++ perspective
* Right-click on the project and choose "Build Configurations > Set Active"
  - For Windows: Choose "Debug_Windows"
  - For Linux/macOS: Choose "Debug"
  - This step is not necessary for the MASL version
* Right-click on the project and choose "Build Project" in the context menu

There might be warnings/errors in the project resulting from an unresolved build
path.

The Java code that is used to extend xtUML eXecute depends on a BridgePoint jar
file called `core.jar`. If the path to `core.jar` is wrong you must follow these
steps to resolve it:

* Open the Java perspective: Window > Open Perspective > Java
* Right-click the project and select Build Path > Configure Build Path...
* In the wizard click the Libraries tab
* Select `core.jar` and click Edit...
* Locate `core.jar`:
  ```
  <BridgePoint installation folder>\eclipse_extensions\BridgePoint\eclipse\plugins\org.xtuml.bp.core_<version>\core.jar
  ```
* OK all pop-ups

Have fun!
