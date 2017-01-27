Export a MASL domain
====================

prev: [Modeling with BridgePoint](exercise5.md) | [index](README.md) | next: [Export a MASL project](exercise6-2.md)

## Purpose

This exercise will take the student through the steps to export a MASL model.

## Instructions

In this example, we will export the _Game_ domain, open up the MASL and see some
of our changes.

#### Preparing the workspace

1. Open a terminal window and navigate to the home directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint  
3. Enter `/home/developer/git/models/raven/workspaces/ws-3` in the workspace
chooser and press `Ok`.  

#### Exporting the domain

1. Navigate to the _Game_ component  
2. Right click, then _Export MASL domain_  
3. When the exporter is finished running, a logfile for the export will appear.
This represents the standard error output of the exporter. It can generally be
ignored.  

Now that we have exported a domain, we can see some of our model changes
reflected in the MASL.

1. Open the _Navigator_ view (_Window > Show View > Other..._, then search for
"Navigator")  
2. Navigate to _Game > masl > Game_  
3. Open The `Game.mod` file by double clicking  
4. Note the changes we have made in the MASL model. We will see more when we
look at the MASL diff tool  
