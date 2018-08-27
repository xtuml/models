---

This work is licensed under the Creative Commons CC0 License

---

# Update sumo application
### xtUML Project Implementation Note

### 1. Abstract

The sumo robot application has not been used in a long time. The model itself is
so old that it cannot even display in the current version of BridgePoint. The
application must be updated. Additionally, since the last time it was used, EV3
has become the preferred platform for LEGO robotics teaching. A new robot design
must be chosen and the application must be updated to run on the new platform.
The Java based simulator should be revisited and polished as well.

### 2. Document References

<a id="2.1"></a>2.1 [BridgePoint DEI #10349](https://support.onefact.net/issues/10349)  
<a id="2.2"></a>2.2 [MCLM (Model Compiler LEGO Mindstorms)](https://github.com/xtuml/modelsjp/wiki)  
<a id="2.3"></a>2.3 [BridgePoint with MCLM](https://s3.amazonaws.com/xtuml-releases/lego-build/buildfiles.html)  
<a id="2.4"></a>2.4 [mc repository on MCLM branch](https://github.com/xtuml/mc/tree/10343_MCLM)  

### 3. Background

None.

### 4. Requirements

4.1 The sumo robot application shall be upgraded to be editable with the current
version of BridgePoint (6.15).  
4.2 The application shall be updated to work with the EV3 platform and MCLM [[2.2]](#2.2).  
4.3 A sumo robot design for the EV3 platform with a light sensor and two
independent front bumpers shall be produced along with building instructions.  
4.4 The sumo robot simulator shall be updated and refreshed as needed.  
4.5 The simulator and hardware environments as well as the application shall
support touch and release events for each front bumper.  

### 5. Work Required

5.1 Sumo application updates

5.1.1 BridgePoint 4.2.0 was used as an intermediate version of BridgePoint to
load the current model and upgrade to generic packages. After this, the model
was imported into the current BridgePoint (6.15.0). Some packaging and naming
was rearranged and then "Load and Persist" was performed to assure that all
model data is up to the latest persistence version.

5.1.2 A new component "EV3" was introduced to model the EV3 platform. The shared
data types and EEs from the "MCLMShared" project in the `modelsjp` repository
was leveraged by this component. The "MCLMShared" project was copied into the
`models` repository to assure that the shared elements will always be available
to the application.

5.1.3 The "NXT" component was renamed to "Simulator" and updated to support
touch and release bumper events.

5.2 Sumo simulation updates

The simulator was updated to reflect the new EV3 robot design. The shapes that
were used to form the body, wheels, and bumpers of the robot in the physics
simulation were updated to be proportional to the EV3 version of the robot. Some
world parameters were tweaked to better reflect the real world behavior of the
robots. The graphics were updated to the EV3 version of the robot and were color
coded (green for modeled behavior, blue for CPU opponent).

5.3 New robot design

A new sumo design was created for the EV3 robotics kit. Instructions were
created by taking sequential pictures of the build process and making commentary
where appropriate.

### 6. Implementation Comments

6.1 A recent nightly build of BridgePoint with MCLM built in was used when
modeling and generating code. The build used can be found at [[2.3]](#2.3),
however this may not be a permanent location for this build of BridgePoint. The
schema and archetypes for MCLM can be found at [[2.4]](#2.4) and may be
installed into any recent build of BridgePoint manually.

### 7. Test

7.1 The application was run using Verifier and the Java simulator on both macOS
and Windows.  
7.2 Code was generated and run on the EV3 robot (using MCLM to generate code).  
7.3 Code was generated on both macOS and Windows and compared for equality.  

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/models  
Branch: 10349_sumo  

<pre>

 applications/lego/MCLMShared/.project                                                                                                                                  |   12 +
 applications/lego/MCLMShared/models/MCLMShared/Datatypes/Datatypes.xtuml                                                                                               |  309 ++++++++++++
 applications/lego/MCLMShared/models/MCLMShared/External Entities/External Entities.xtuml                                                                               | 1580 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 applications/lego/MCLMShared/models/MCLMShared/MCLMShared.xtuml                                                                                                        |   80 ++++
 applications/{sumo => lego}/Sumo Simulator/.classpath                                                                                                                  |   16 +-
 applications/lego/Sumo Simulator/.gitignore                                                                                                                            |    1 +
 applications/lego/Sumo Simulator/.launches/Sumo Simulator.launch                                                                                                       |   12 +
 applications/{sumo => lego}/Sumo Simulator/.project                                                                                                                    |    0
 applications/{sumo => lego}/Sumo Simulator/phys2d-060408.jar                                                                                                           |  Bin
 applications/{sumo => lego}/Sumo Simulator/src/lib/SumoRing.java                                                                                                       |   13 +-
 applications/{sumo => lego}/Sumo Simulator/src/lib/SumoRobot.java                                                                                                      |  153 +++---
 applications/{sumo => lego}/Sumo Simulator/src/lib/SumoSimulatorProxy.java                                                                                             |    0
 applications/lego/Sumo Simulator/src/lib/img/sumo_blue.png                                                                                                             |  Bin 0 -> 10340 bytes
 applications/lego/Sumo Simulator/src/lib/img/sumo_green.png                                                                                                            |  Bin 0 -> 10510 bytes
 applications/lego/Sumo/.classpath                                                                                                                                      |    7 +
 applications/{sumo => lego}/Sumo/.externalToolBuilders/Model Compiler.launch                                                                                           |    8 +-
 applications/lego/Sumo/.gitignore                                                                                                                                      |    2 +
 applications/lego/Sumo/.launches/sumo.launch                                                                                                                           |   10 +
 applications/lego/Sumo/.project                                                                                                                                        |   33 ++
 applications/lego/Sumo/.settings/com.mentor.nucleus.bp.ui.project.preferences.prefs                                                                                    |    4 +
 applications/lego/Sumo/gen/.gitignore                                                                                                                                  |    1 +
 applications/lego/Sumo/gen/EV3B_bridge.c                                                                                                                               |  263 +++++++++++
 applications/lego/Sumo/gen/EV3TCH2_bridge.c                                                                                                                            |   21 +
 applications/lego/Sumo/gen/EV3_CONFIG_bridge.c                                                                                                                         |  116 +++++
 applications/lego/Sumo/gen/LOG_bridge.c                                                                                                                                |   90 ++++
 applications/lego/Sumo/gen/Makefile.inc                                                                                                                                |    1 +
 applications/lego/Sumo/gen/Sumo_sys_types.h                                                                                                                            |  485 +++++++++++++++++++
 applications/lego/Sumo/gen/app.c                                                                                                                                       |   20 +
 applications/lego/Sumo/gen/app.cfg                                                                                                                                     |   55 +++
 applications/{sumo => lego}/Sumo/gen/bridge.mark                                                                                                                       |    3 -
 applications/{sumo => lego}/Sumo/gen/class.mark                                                                                                                        |    3 -
 applications/{sumo => lego}/Sumo/gen/datatype.mark                                                                                                                     |    3 -
 applications/{sumo => lego}/Sumo/gen/domain.mark                                                                                                                       |    8 +-
 applications/{sumo => lego}/Sumo/gen/event.mark                                                                                                                        |    3 -
 applications/lego/Sumo/gen/sumo_bt_bridge.py                                                                                                                           |   33 ++
 applications/{sumo => lego}/Sumo/gen/system.mark                                                                                                                       |   25 +-
 applications/{sumo/Sumo Simulator/src => lego/Sumo/javasrc}/lib/Go.java                                                                                                |    0
 applications/{sumo/Sumo Simulator/src => lego/Sumo/javasrc}/lib/SetName.java                                                                                           |    0
 applications/{sumo/Sumo Simulator/src => lego/Sumo/javasrc}/lib/SignalData.java                                                                                        |    0
 applications/{sumo/Sumo Simulator/src => lego/Sumo/javasrc}/lib/SumoSimBridge.java                                                                                     |   15 +-
 applications/{sumo/Sumo Simulator/src => lego/Sumo/javasrc}/lib/Turn.java                                                                                              |    0
 applications/lego/Sumo/models/Sumo/EEs/EEs.xtuml                                                                                                                       |  777 +++++++++++++++++++++++++++++++
 applications/{sumo => lego}/Sumo/models/Sumo/IO DTs/IO DTs.xtuml                                                                                                       |   60 +--
 applications/lego/Sumo/models/Sumo/Library/EV3/EEs/EEs.xtuml                                                                                                           |  155 ++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3.xtuml                                                                                                               |  456 ++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/EV3.xtuml                                                                                                           | 1084 ++++++++++++++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/button/InstanceStateMachine/InstanceStateMachine.xtuml                                                              | 1263 +++++++++++++++++++++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/button/button.xtuml                                                                                                 |   75 +++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/chassis/InstanceStateMachine/InstanceStateMachine.xtuml                                                             |  794 +++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/chassis/chassis.xtuml                                                                                               |   50 ++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/light sensor/InstanceStateMachine/InstanceStateMachine.xtuml                                                        | 1278 ++++++++++++++++++++++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/light sensor/light sensor.xtuml                                                                                     |   50 ++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/robot/InstanceStateMachine/InstanceStateMachine.xtuml                                                               | 3182 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/robot/robot.xtuml                                                                                                   |   86 ++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/threshhold/threshhold.xtuml                                                                                         |   75 +++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/touch sensor/InstanceStateMachine/InstanceStateMachine.xtuml                                                        | 1262 +++++++++++++++++++++++++++++++++++++++++++++++++
 applications/lego/Sumo/models/Sumo/Library/EV3/EV3/touch sensor/touch sensor.xtuml                                                                                     |   68 +++
 applications/lego/Sumo/models/Sumo/Library/EV3/Functions/Functions.xtuml                                                                                               |  126 +++++
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Library.xtuml                                                                                                     |  174 ++++++-
 applications/{sumo/Sumo/models/Sumo/Library/NXT => lego/Sumo/models/Sumo/Library/Simulator}/Datatypes/Datatypes.xtuml                                                  |   66 +--
 applications/lego/Sumo/models/Sumo/Library/Simulator/External Entities/External Entities.xtuml                                                                         |  278 +++++++++++
 applications/{sumo/Sumo/models/Sumo/Library/NXT => lego/Sumo/models/Sumo/Library/Simulator}/Functions/Functions.xtuml                                                  |   67 +--
 applications/{sumo/Sumo/models/Sumo/Library/NXT/NXT.xtuml => lego/Sumo/models/Sumo/Library/Simulator/Simulator.xtuml}                                                  |  523 +++++++--------------
 applications/{sumo/Sumo/models/Sumo/Library/NXT/NXT/NXT.xtuml => lego/Sumo/models/Sumo/Library/Simulator/Simulator/Simulator.xtuml}                                    |   56 ++-
 applications/{sumo/Sumo/models/Sumo/Library/NXT/NXT => lego/Sumo/models/Sumo/Library/Simulator/Simulator}/SumoSimulatorProxy/ClassStateMachine/ClassStateMachine.xtuml |  449 +++++++++++++++++-
 applications/{sumo/Sumo/models/Sumo/Library/NXT/NXT => lego/Sumo/models/Sumo/Library/Simulator/Simulator}/SumoSimulatorProxy/SumoSimulatorProxy.xtuml                  |   58 +--
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Test/Datatypes/Datatypes.xtuml                                                                                    |   66 +--
 applications/lego/Sumo/models/Sumo/Library/Test/Functions/Functions.xtuml                                                                                              |   74 +++
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Test/Test.xtuml                                                                                                   |  485 ++++++-------------
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Test/Test/Test.xtuml                                                                                              |   54 ++-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Test/Test/TestCase1/InstanceStateMachine/InstanceStateMachine.xtuml                                               |   49 +-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/Test/Test/TestCase1/TestCase1.xtuml                                                                               |   26 +-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/Datatypes/Datatypes.xtuml                                                                                    |   66 +--
 applications/lego/Sumo/models/Sumo/Library/sumo/Functions/Functions.xtuml                                                                                              |   74 +++
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo.xtuml                                                                                                   |  514 +++++++-------------
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/drive/drive.xtuml                                                                                       |   46 +-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/navigate/InstanceStateMachine/InstanceStateMachine.xtuml                                                |  183 +++++++-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/navigate/navigate.xtuml                                                                                 |   37 +-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/steering/InstanceStateMachine/InstanceStateMachine.xtuml                                                |   69 ++-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/steering/steering.xtuml                                                                                 |   26 +-
 applications/{sumo => lego}/Sumo/models/Sumo/Library/sumo/sumo/sumo.xtuml                                                                                              |  290 ++++++------
 applications/{sumo => lego}/Sumo/models/Sumo/RobotInterface/RobotInterface.xtuml                                                                                       |   28 +-
 applications/{sumo => lego}/Sumo/models/Sumo/RobotInterface/platform/platform.xtuml                                                                                    |   93 ++--
 applications/{sumo => lego}/Sumo/models/Sumo/StartupSequence/StartupSequence.xtuml                                                                                     |  197 +++++---
 applications/{sumo => lego}/Sumo/models/Sumo/Sumo.xtuml                                                                                                                |  113 +++--
 applications/lego/Sumo/models/Sumo/SumoRobotEV3/SumoRobotEV3.xtuml                                                                                                     |  450 ++++++++++++++++++
 applications/{sumo/Sumo/models/Sumo/SumoRobot/SumoRobot.xtuml => lego/Sumo/models/Sumo/SumoRobotSimulator/SumoRobotSimulator.xtuml}                                    |  103 ++--
 applications/{sumo => lego}/Sumo/models/Sumo/TestCases/TestCases.xtuml                                                                                                 |   91 +++-
 applications/sumo/Sumo Simulator/src/lib/img/logo.png                                                                                                                  |  Bin 6398 -> 0 bytes
 applications/sumo/Sumo Simulator/src/lib/img/sumo.png                                                                                                                  |  Bin 13629 -> 0 bytes
 applications/sumo/Sumo Simulator/src/lib/img/sumo1.png                                                                                                                 |  Bin 13582 -> 0 bytes
 applications/sumo/Sumo/.cdtproject                                                                                                                                     |   56 ---
 applications/sumo/Sumo/.cproject                                                                                                                                       |  145 ------
 applications/sumo/Sumo/.externalToolBuilders/Rxe Upload [Builder].launch                                                                                               |    9 -
 applications/sumo/Sumo/.externalToolBuilders/com.mentor.nucleus.bp.mc.xmiexport.XMIExportBuilder.launch                                                                |    6 -
 applications/sumo/Sumo/.project                                                                                                                                        |  128 -----
 applications/sumo/Sumo/Makefile                                                                                                                                        |    9 -
 applications/sumo/Sumo/bin/lib/Go.class                                                                                                                                |  Bin 975 -> 0 bytes
 applications/sumo/Sumo/bin/lib/SetName.class                                                                                                                           |  Bin 987 -> 0 bytes
 applications/sumo/Sumo/bin/lib/SignalData.class                                                                                                                        |  Bin 2619 -> 0 bytes
 applications/sumo/Sumo/bin/lib/SumoSimBridge$SimConnection.class                                                                                                       |  Bin 3556 -> 0 bytes
 applications/sumo/Sumo/bin/lib/SumoSimBridge.class                                                                                                                     |  Bin 1628 -> 0 bytes
 applications/sumo/Sumo/bin/lib/Turn.class                                                                                                                              |  Bin 983 -> 0 bytes
 applications/sumo/Sumo/gen/NXT_dom_init.c                                                                                                                              |  225 ---------
 applications/sumo/Sumo/gen/NXT_ports.c                                                                                                                                 |  145 ------
 applications/sumo/Sumo/gen/TIM_bridge.c                                                                                                                                |  620 ------------------------
 applications/sumo/Sumo/img/splash.bmp                                                                                                                                  |  Bin 1086 -> 0 bytes
 applications/sumo/Sumo/models/Sumo/Datatypes/Datatypes.xtuml                                                                                                           |  673 ---------------------------
 applications/sumo/Sumo/models/Sumo/Library/NXT/External Entities/External Entities.xtuml                                                                               |  691 ---------------------------
 applications/sumo/Sumo/models/Sumo/Library/Test/External Entities/External Entities.xtuml                                                                              |  736 -----------------------------
 applications/sumo/Sumo/models/Sumo/Library/Test/Functions/Functions.xtuml                                                                                              |   63 ---
 applications/sumo/Sumo/models/Sumo/Library/sumo/External Entities/External Entities.xtuml                                                                              |  465 ------------------
 applications/sumo/Sumo/models/Sumo/Library/sumo/Functions/Functions.xtuml                                                                                              |   63 ---
 applications/sumo/Sumo/sumo.oil                                                                                                                                        |   93 ----
 doc/notes/10349_sumo_int.md                                                                                                                                            |  286 ++++++++++++
 115 files changed, 17417 insertions(+), 6027 deletions(-)

</pre>

Fork/Repository: leviathan747/xtuml.github.io  
Branch: 10349_sumo  

<pre>

 sumo/img/01.jpg | Bin 0 -> 969907 bytes
 sumo/img/02.jpg | Bin 0 -> 962296 bytes
 sumo/img/03.jpg | Bin 0 -> 822738 bytes
 sumo/img/04.jpg | Bin 0 -> 1033697 bytes
 sumo/img/05.jpg | Bin 0 -> 849383 bytes
 sumo/img/06.jpg | Bin 0 -> 991359 bytes
 sumo/img/07.jpg | Bin 0 -> 958017 bytes
 sumo/img/08.jpg | Bin 0 -> 932921 bytes
 sumo/img/09.jpg | Bin 0 -> 977202 bytes
 sumo/img/10.jpg | Bin 0 -> 995544 bytes
 sumo/img/11.jpg | Bin 0 -> 964209 bytes
 sumo/img/12.jpg | Bin 0 -> 783890 bytes
 sumo/img/13.jpg | Bin 0 -> 964327 bytes
 sumo/img/14.jpg | Bin 0 -> 1217704 bytes
 sumo/img/15.jpg | Bin 0 -> 1091889 bytes
 sumo/img/16.jpg | Bin 0 -> 921022 bytes
 sumo/img/17.jpg | Bin 0 -> 1075717 bytes
 sumo/img/18.jpg | Bin 0 -> 1085412 bytes
 sumo/img/19.jpg | Bin 0 -> 993875 bytes
 sumo/img/20.jpg | Bin 0 -> 1192799 bytes
 sumo/img/21.jpg | Bin 0 -> 977872 bytes
 sumo/img/22.jpg | Bin 0 -> 792782 bytes
 sumo/img/23.jpg | Bin 0 -> 1033501 bytes
 sumo/img/24.jpg | Bin 0 -> 1016290 bytes
 sumo/img/25.jpg | Bin 0 -> 1019966 bytes
 sumo/img/26.jpg | Bin 0 -> 833774 bytes
 sumo/img/27.jpg | Bin 0 -> 657403 bytes
 sumo/img/28.jpg | Bin 0 -> 1047056 bytes
 sumo/img/29.jpg | Bin 0 -> 1092382 bytes
 sumo/img/30.jpg | Bin 0 -> 700997 bytes
 sumo/img/31.jpg | Bin 0 -> 1106771 bytes
 sumo/img/32.jpg | Bin 0 -> 1027696 bytes
 sumo/img/33.jpg | Bin 0 -> 1054713 bytes
 sumo/img/34.jpg | Bin 0 -> 996282 bytes
 sumo/img/35.jpg | Bin 0 -> 1083321 bytes
 sumo/img/36.jpg | Bin 0 -> 1002288 bytes
 sumo/img/37.jpg | Bin 0 -> 1316332 bytes
 sumo/img/38.jpg | Bin 0 -> 894621 bytes
 sumo/img/39.jpg | Bin 0 -> 1061926 bytes
 sumo/img/40.jpg | Bin 0 -> 1029471 bytes
 sumo/img/41.jpg | Bin 0 -> 967164 bytes
 sumo/img/42.jpg | Bin 0 -> 1217642 bytes
 sumo/img/43.jpg | Bin 0 -> 768523 bytes
 sumo/img/44.jpg | Bin 0 -> 993221 bytes
 sumo/img/45.jpg | Bin 0 -> 683097 bytes
 sumo/img/46.jpg | Bin 0 -> 857301 bytes
 sumo/img/47.jpg | Bin 0 -> 1008562 bytes
 sumo/img/48.jpg | Bin 0 -> 727518 bytes
 sumo/img/49.jpg | Bin 0 -> 997686 bytes
 sumo/img/50.jpg | Bin 0 -> 556774 bytes
 sumo/img/51.jpg | Bin 0 -> 377570 bytes
 sumo/img/52.jpg | Bin 0 -> 431587 bytes
 sumo/img/53.jpg | Bin 0 -> 297532 bytes
 sumo/img/54.jpg | Bin 0 -> 703142 bytes
 sumo/img/55.jpg | Bin 0 -> 408364 bytes
 sumo/img/56.jpg | Bin 0 -> 269771 bytes
 sumo/img/57.jpg | Bin 0 -> 454746 bytes
 sumo/img/58.jpg | Bin 0 -> 520670 bytes
 sumo/img/59.jpg | Bin 0 -> 407651 bytes
 sumo/img/60.jpg | Bin 0 -> 459332 bytes
 sumo/img/61.jpg | Bin 0 -> 409855 bytes
 sumo/img/62.jpg | Bin 0 -> 310414 bytes
 sumo/img/63.jpg | Bin 0 -> 380242 bytes
 sumo/img/64.jpg | Bin 0 -> 665546 bytes
 sumo/index.md   | 105 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 65 files changed, 105 insertions(+)

</pre>

### End

