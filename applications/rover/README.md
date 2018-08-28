# ROVER

### Setup

The main webpage for the challenge problem can be found
[here](https://mdetools.github.io/mdetools18/challengeproblem.html)

* Download the challenge problem materials from here:  
  - Windows: https://s3.amazonaws.com/challengeproblemmichal/Challenge+problem-Windows.zip
  - Linux: https://s3.amazonaws.com/challengeproblemmichal/Challenge+problem-Linux.zip
  - Mac: https://s3.amazonaws.com/challengeproblemmichal/Challenge+problem-Mac.zip

* Unzip the archive into the current directory.

* Move the contents of the unzipped folder into the current project directory.
  Remove the unzipped folder.

On Mac, the `setup.sh` script can be used to do this automatically.

### Running the simulation

* Launch the simulation application:
  - `./Mac/Challenge-Mac.app/Contents/MacOS/Challenge-Mac &` or `./Windows/Challenge-Win64.exe`
  - Select your preferred display settings and select "Play"
* Launch the `UnityObserver` application
  - `java -jar UnityObserver.jar`

* Launch BridgePoint
  - Import the three projects into a workspace (`Rover`, `RComm`, and
    `Navigation`)
  - Select Project > Clean. Clean and rebuild all projects.
  - Switch to the xtUML Debugging perspective and launch Debug Configurations >
    xtUML Debugging > rover
  - Nagivatge to `testNavigation` in the `functions` package contained in `Navigation`
    component reference. Execute `testNavigation`.

* The simulation should begin to move and BridgePoint should print logging
  information to the console.

NOTE: The verifier realized implementation assumes that the `models` repository
is cloned in `~/git` on Mac and `c:/git` on Windows and that the configuration file
`git/models/applications/rover/Settings/config.txt` exists. If you cloned the
repository in a different location, you will have to modify the `homedir`
variable in `RComm.java` to point to the new location. 

### EV3 version

To generate the code for the LEGO Mindstorms EV3, first the reader must set up
MCLM and install EV3RT on the EV3 brick. To generate code, copy the contents of
`Rover/gen/ev3_gen` to `Rover/gen` and build.
