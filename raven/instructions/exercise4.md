MASL editing nuances
====================

prev: [Managing dependencies](exercise3.md) | [index](README.md) | next: [Modeling with BridgePoint](exercise5.md)

## Purpose

This exercise will walk the student through several special situations in MASL
editing. The student will come away knowing the major pitfalls of editing MASL
models with BridgePoint and how to avoid/manage them.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the home directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint  
3. Enter `/home/developer/git/models/raven/workspaces/ws-3` in the workspace
chooser and press `Ok`.  

#### Marking elements with pragmas

Modelers can apply marks (in MASL `pragma` is used) to model elements through
the BridgePoint marking editor.  In this example, we will add the mark _number_
to the _Game_ domain.

1. Right click on the _Game_ project  
2. Select _Manage Project Markings_  
3. In the "Element Type" dropdown menu, choose "Component"  
4. In the "Model Element" dropdown menu, choose "Game::Game"  
5. Enter "1" in the value field for the "number" feature  
6. Click "OK"  

This corresponds to adding "pragma number(1);" to the _Game_ domain.

_Discussion point: Marking data separated from model data_

#### Editing MASL activities

BridgePoint allows modelers to edit in multiple action language dialects,
including OAL and MASL. Model elements containing action language have a
property which defines their dialect.  BridgePoint allows modelers to specify
through a preference which dialect will be the default for new model elements
(See _Window > Preferences > xtUML > Action Language_). In this example, we will
open and edit the _play_ function.

1. Navigate to the _functions_ package under the _Game_ component  
2. Double click the _play_ function  
3. Add your statements and save  

_Discussion point: Xtext editor_

While modeling, it is desirable for new activities to be in the MASL dialect.
To make sure that the MASL is the dialect used, we must set the preference for
our default dialect.

1. Click _Window > Preferences_  
2. Scroll to the bottom and expand the _xtUML_ category  
3. Select _Action Language_  
4. Select the _MASL_ radio button in the _Default action language dialect_
section, click _Apply_ and _Ok_  

At the moment, activity signatures are not to be edited through the textual
editor. In the future we would like to see bidirectional syncing between text
and structure. At the moment "structure is king" and the text is expected to
match.

Editing, adding, or deleting signatures can cause the loader to fail to load the
action language properly. We have added a safety feature to prevent action
language from being lost.

1. Navigate to the _functions_ package under the _Game_ component  
2. Double click the _play_ function  
3. In `functions.masl`, add "new_param: in integer" to the signature of the
_play_ function and save  

At this point, the model has reloaded and a function in the package with the
signature "void play(CardType, integer)" has not been found. If the model is
written now, the action language in the _play_ function will be overwritten with
nothing.

4. Right click on the _functions_ package, then _New > Function_  
5. Give the function a name and press _OK_  

You will see an error message appear. This is advising you that there was a load
problem and you must fix your action language to prevent things from getting
overwritten.

6. Read the message and press _OK_ to dismiss  
7. Remove "newparam: in integer" from the signature of _play_ and save  
8. Add a function to the package. It will succeed with no errors  

#### Adding documentation comments

Documentation comments allow a modeler to add descriptions on model elements
that will be output in the textual MASL. In this example, we will add a
description to the _Scenario_ class in the _Logic_ domain.

1. Navigate to the _Scenario_ class under the _Logic_ domain  
2. Right click, then _Open With > Description Editor_  
3. Add the text "Scenario object description" and a newline and save  

_Due to a known bug, there must be a newline after the description_

We will see the results of this when we export the domain  

