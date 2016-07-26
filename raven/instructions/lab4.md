MASL editing nuances
====================

## Purpose

This exercise will walk the student through several special situations in MASL
editing. The student will come away knowing the major pitfalls of editing MASL
models with BridgePoint and how to avoid/manage them.

## Instructions

#### Marking elements with pragmas

Model elements can be marked with pragmas through text in the description. In
this example, we will add the pragma _number_ to the _Game_ domain

1. Navigate to the _Game_ component  
2. Right click, then _Open With > Description Editor_  
3. Enter the text "pragma number(1);" and save  

Some markable elements share a single xtUML element. For example, to mark an
identifier, an analyst must mark its containing class with special tags. To mark
the second or third identifier, wrap your pragma list in
"<identifier2></identifier2>" or "<identifier3></identifier3>" tags. An
exhaustive list of mappings and pragma locations can be found in the "Pragma
Mapping" document.

#### Editing MASL activities

BridgePoint allows modelers to edit in two different action language dialects,
OAL and MASL. BridgePoint allows modelers to specify through a preference which
editor should open if an element contains no actions, or both OAL and MASL
actions. In this example, we will open and edit the _play_ function.

1. Navigate to the _functions_ package under the _Game_ component  
2. Right click the _play_ function, then _Open With > MASL Editor_  
3. Add your statements and save  

While modeling, it is desirable to double click to open activities instead of
right clicking and choosing the MASL editor. To make sure that the MASL editor
will always appear, we must set the preference for our default editor.

1. Click _Window > Preferences_  
2. Scroll to the bottom and expand the _xtUML_ category  
3. Select _Default Activity Editor_  
4. Select the _MASL Editor_ radio button, click _Apply_ and _Ok_  

In xtUML, MASL activities are stored in files and are named and located based on
a convention. If an analyst moves, renames, or deletes a MASL activity, the base
file must also be moved. The convention is based on the activity signature, so
even if a parameter is added, the base file must be updated. In this example, we
will add a parameter to the _play_ function and then resolve the file issue.

1. Navigate to the _play_ function under the _Game_ component  
2. Right click, then _New > Parameter_ to add a new attribute "player_number"  
3. Double click to open the MASL editor. You will notice that there are no
actions (this is not right!)  
4. Close the MASL editor  
5. Open the _Navigator_ view by clicking _Window > Show View > Other..._  
6. Search for "Navigator", select it and press _Ok_  
7. In _Navigator_, expand _Game > models > Game > Game > Game > functions_  
8. You will notice the activity file here: "void_play_CardType_integer.masl".
9. Rename the original file ("void_play_CardType.masl") to match the new
signature ("void_play_CardType_integer.masl").
10. Now in the model explorer, double click the function again. You will see the
text restored. Be sure to update the signature in the textual MASL as well  

#### Adding documentation comments

Documentation comments allow a modeler to add descriptions on model elements
that will be output in the textual MASL. In this example, we will add a
description to the _Scenario_ class in the _Logic_ domain.

1. Navigate to the _Scenario_ class under the _Logic_ domain  
2. Right click, then _Open With > Description Editor_  
3. Add the text "Scenario object description" on a line above the pragma and
save  

We will see the results of this when we export the domain  

#### Editing deferred operations

Deferred operations allow an analyst to declare an abstract operation in a
supertype and leave the implementation to the subtypes. To accomplish this, we
must simply not include actions for the supertype activity. We will observe this
in the _calculatePlay_ operation on the _Scenario_ object and its subtypes.

1. Navigate to and expand the _Scenario_ object  
2. Double click on the _calculatePlay_ operation. Observe that there are no
actions  
3. Navigate to and double click on the _calculatePlay_ operations of
_PeggingScenario_ and _CribDiscardScenario_. Note that these two contain
actions.
4. For the curious student: find these activities in the _Navigator_ view. You
will find that there is no activity file for the supertype

#### Unique ID type

If an analyst needs a unique identifier type for an attribute, he must use the
_MASLunique_ type.

1. Navigate to the _Deck_ object in the _Game_ domain  
2. Select the _deck_id_ attribute
3. In the _Properties_ view, note that the type is _MASLunique_. This type
translates to "unique integer" in textual MASL  
