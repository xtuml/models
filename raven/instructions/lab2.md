Converting and importing a MASL project
=======================================

## Purpose

This exercise will guide the student through the process to convert and import a
MASL project model.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the `~/xtuml` directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint (or run the BridgePoint
launcher directly with `BridgePoint/eclipse/Launcher.sh`.  
3. Enter `/home/student/xtuml/workspaces/ws-domains` in the workspace chooser and
press `Ok`.  

#### Converting the project model

The first step of converting a MASL project model to xtUML is running the
conversion tool from the command line.

1. Open a new terminal window and navigate to the `~/xtuml` directory.  
2. The project we will be converting is located in the
`models/raven/masl/Cribbage` directory. Feel free to browse the source.  
3. To run the conversion tool, we must provide an input directory, an output
directory and specify that we are converting a project with the flag `-p`. The
conversion tool is located in `tools/masl` under the BridgePoint installation.  
    `BridgePoint/tools/masl/masl2xtuml -p models/raven/masl/Cribbage/ -o converted_models`

#### Importing the model into the workspace

Now we must import the converted model into the workspace. This process loads
the xtUML data into the file structure of an xtUML Eclipse project. It also
loads the MASL activity files into the right places in the project. With MASL
projects, the loader must also look for domain models in the workspace to link
up domain references and project terminators which are references to interfaces
defined in domain models.

1. Right click inside the model explorer view and choose "New -> xtUML Project"  
2. Enter the name "Cribbage" for the project and click "Next"  
3. Choose the "C Model Compiler (Source)" from the list and click "Finish"  
4. Right click on the newly created project and choose "Project Preferences"  
5. Check the box for "Allow inter-project model references"  
6. Click "Apply" then "Ok"
7. Right click on the project and choose "Import..."  
8. Scroll to the bottom, in the "xtUML" category, select "xtUML Model" and click
"Next"  
9. Click the "Browse" button, and navigate to `~/xtuml/converted_models/Cribbage`  
10. Select `Cribbage.xtuml` and click "Ok"  
11. Click "Finish"  

#### Reconciling graphics

The converted xtUML models are produced from MASL without any graphics. In a
normal xtUML model, graphical data exists alongside semantic model data. After
we import the converted models, we must create graphics which we can then
manipulate into the arrangement that we like.

1. Right click on the "Cribbage" project in the workspace  
2. Choose "BridgePoint Utilities -> Reconcile Graphics".
