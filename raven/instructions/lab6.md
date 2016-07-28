Export a MASL domain
====================

## Purpose

This exercise will take the student through the steps to export a MASL model.

## Instructions

In this example, we will export the _Game_ domain, open up the MASL and see some
of our changes.

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
3. Open The `Game.mod` file by right clicking, then _Open With > Text Editor_  
4. Note the changes we have made in the MASL model. We will see more when we
look at the MASL diff tool  
