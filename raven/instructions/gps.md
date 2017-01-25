GPS Watch Demo
==============

## Purpose

This demo will help to familiarize the student with the BridgePoint environment
while also demonstrate some of the powerful capabilities of xtUML and
BridgePoint.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the home directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint  
3. Enter `/home/developer/git/models/raven/workspaces/ws-gps` in the workspace
chooser and press `Ok`.  
4. On the BridgePoint Welcome screen click "Quick Start" then "Example
Application - GPS Watch"
    * If the welcome screen does not appear, navigate to Help -> Welcome
5. This will import the GPS Watch project into your workspace, open up the help
contents in Firefox, and open a README file for the project.

#### Running the user interface

This application is made up of a Java graphical user interface connected to a
binary executable with a socket. The first step of running the application is to
run the Java UI.

1. Open the Java perspective (Window > Open Perspective > Other... > Java)   
2. Run > Run Configurations...  
3. Expand the Java Application item  
4. Select "GPS Watch UI"  
5. Click Run  

#### Running the application in xtUML eXecute (Verifier)

Now we can run the backend application as an interpreted xtUML model before we
ever generate code!

1. Switch to the xtUML Debugging Perspective (Window > Open Perspective > Other... > xtUML Debugging)  
2. Run > Debug Configurations...  
3. Expand the xtUML eXecute Application item  
4. Select "GPS Watch"  
5. Click Debug  
6. In Session Explorer, expand GPS Watch > System > GPS Watch::Library::UI > GPS Watch::Library::UI > UI (package) > UI  
7. Right-click 'connect', select Execute  
8. Now the GUI may be used to drive execution.  

#### Generating code and compiling the application

Once we have finished debugging our application in BridgePoint, we can generate
code for our target and compile it. We will be generating C source code.

1. Switch to the C/C++ perspective  
2. Right click the project and choose "Properties"  
3. In the "Builders" section, uncheck all except "Model Compiler Pre-Build" and
"Model Compiler"  
4. Right click the project and choose "Build Project"
5. When code generation is complete, open a new terminal window and navigate to
the `src` directory under the project in the workspace  
    `cd ~/git/models/raven/workspaces/ws-gps/Gps\ Watch/src`
6. Compile the project with the following command:  
    `gcc *.c -o gps -lpthread -lm`
7. Make sure that the Java GUI is running, then execute `./gps`. You should see
the application connect to the GUI.
