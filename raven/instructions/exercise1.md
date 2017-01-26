Converting and importing a MASL domain
======================================

## Purpose

This exercise will guide the student through the process to convert and import a
MASL domain model.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the home directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint  
3. Enter `/home/developer/git/models/raven/workspaces/ws-1` in the workspace
chooser and press `Ok`.  

#### Converting the domain model

The first step of converting a MASL model to xtUML is running the conversion
tool from the command line.

1. Open a new terminal window and navigate to the `~/xtuml` directory.  
2. The model we will be converting is located in the
`~/git/models/raven/masl/Game` directory. Feel free to browse the source.  

3. To run the conversion tool, we must provide an input directory, an output
directory and specify that we are converting a domain with the flag `-d`. The
conversion tool is located in `tools/mc/bin` under the BridgePoint
installation.  
    `l586/tools/mc/bin/masl2xtuml -d ~/git/models/raven/masl/Game/ -o
    converted_models`

#### Importing the model into the workspace

Now we must import the converted model into the workspace. This process loads
the xtUML data into the file structure of an xtUML Eclipse project.

1. Right click inside the model explorer view and choose "New > xtUML Project"  
2. Enter the name "Game" for the project and click "Next"  
3. Choose the "None" from the list and click "Finish"  
4. Right click on the newly created project and choose "Import..."  
5. Scroll to the bottom, in the "xtUML" category, select "xtUML Model" and click
"Next"  
6. Click the "Browse" button, and navigate to `~/xtuml/converted_models/Game`  
7. Select `Game.xtuml` and click "Ok"  
8. Click "Finish"  

#### Browse the model

Now you can browse the model. Navigate to the _Game_ component. Open the _Game_
package.  Note that graphics are created, but must be rearanged by the user.

