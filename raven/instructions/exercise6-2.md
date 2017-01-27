Export a MASL project
=====================

prev: [Export a MASL domain](exercise6-1.md) | [index](README.md) | next: [MASL diff tool and formatter](exercise7.md)

## Purpose

This exercise will take the student through the steps to export a MASL project.

## Instructions

In this example, we will export the _Cribbage_ project, open up the MASL and see
some of our changes.

#### Preparing the workspace

1. Open a terminal window and navigate to the home directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint  
3. Enter `/home/developer/git/models/raven/workspaces/ws-3` in the workspace
chooser and press `Ok`.  

#### Exporting the project

1. Navigate to the _Cribbage_ package in the _Cribbage_ project  
2. Right click the package, then _Export MASL project_  
3. When the exporter is finished running, a logfile for the export will appear.
This represents the standard error output of the exporter. It can generally be
ignored.  

Now that we have exported the project, we can see some of our model changes
reflected in the MASL.

1. Open the _Navigator_ view (_Window > Show View > Other..._, then search for
"Navigator")  
2. Navigate to _Cribbage > masl > Cribbage_  
3. Open The `Cribbage.prj` file by right clicking, then _Open With > Text Editor_  
4. Note the changes we have made in the MASL project. We will see more when we
look at the MASL diff tool  
