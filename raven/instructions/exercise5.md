Modeling with BridgePoint  
=========================

[prev: MASL editing nuances](exercise4.md) | [index](README.md) | [next: Export a MASL domain](exercise6.md)

## Purpose

This exercise will guide the student through some of the more difficult parts of
modeling using BridgePoint. The student will learn the subtleties of objects and
associations, state modeling and terminators.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the `~/xtuml` directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint (or run the BridgePoint
launcher directly with `BridgePoint/eclipse/Launcher.sh`.  
3. Enter `/home/student/xtuml/workspaces/ws-all` in the workspace chooser and
press `Ok`.  

#### Modeling classes and associations

In this example, we will add a new class _Crib_ to the _Game_ domain. We will
give the new class an identifier, and create and formalize relationships to
_Card_ and _Game_.

1. Navigate to the _Game_ package under the _Game_ domain, double click to open
the package editor  
2. In the palette on the right, select _Class_ in the _Classes_ category  
3. Draw a class on the canvas in a convenient location and give the class the
name "Crib"  
4. Right click on the newly created class, then _New > Attribute_ and enter
"crib_id" for the name  
5. Expand the _Crib_ class in the model explorer and use the type chooser to set
the type of the new attribute to "MASLunique"  
6. Right click on the new attribute, then _Add to Identifier..._, select _1_ and
press _Finish_  
7. Add key letters to this class by double clicking to bring up the description
editor and entering "pragma key_letter("CB");" and saving  
8. Now in the _Classes_ category of the palette, select the _Association_ tool  
9. Draw an association between _Crib_ and _Game_ and between _Crib_ and _Card_  
10. Use the mouse and the bend points to reposition the lines to your liking  
11. Select the relationship between _Crib_ and _Game_. We will now change the
properties of this relationship using the _Properties_ view  
12. Expand the _Class As Simple Participant > Crib_ section. In this case, we
want an unconditional 1-to-1 relationship, so we just must update the text
phrases  
13. Enter "has" for the _Text Phrase_  
14. Expand the _Class As Simple Participant > Game_ section. Enter
"contains_cards_for" for the _Text Phrase_. It is important that the phrase
contains no spaces  
15. Now, to formalize the relationship, right click on the relationship on the
canvas and click _Formalize..._  
16. In this case, we want the _Crib_ class to be the formalizer. Choose the
_Game_ class as the participant, and click _Next_  
17. Choose identifier _1_ as the identifier to formalize with and click
_Finish_.  Note the referential attribute that appears in the _Crib_ class with
the relationship number  
18. Follow the same process to update and formalize the relationship between
_Crib_ and _Card_, except in this situation we want conditional one on the
_Crib_ side and conditional many on the _Card_ side. Card must be the formalizer
because it is the _many_ side of the relationship  

_**Important note:** The "Formalize..." menu option will not appear unless at
least one of the classes has an attribute added to an identifier. If the option
does not appear, first check if you have added your identifying attribute to an
identifier_  

#### Modeling state machines

In this example, we will add dynamic behavior to the _Peg_ object through a
state machine. We will add two states _Moving_ and _Stationary_ and events that
will transition them.

1. Navigate to the _Peg_ class. Right click, then _New > Instance State Machine_  
2. Double click the newly created state machine to bring up the state diagram
editor  
3. Select the _State_ tool in the palette and draw two states. Name one
"Stationary" and the other "Moving"  
4. Now to add events to transition these states, right click on the state
machine, then _New > Event_. Enter "PlayerScored" for the name and press _Ok_  
5. Add a parameter to this event by right clicking, then _New > Parameter_.
Enter "points" for the name and press _Ok_  
6. Add another event called "MoveDone"  
7. In the palette, select the transition tool. Draw two transitions between the
states, one in each direction  
8. Right click the transition from _Stationary_ to _Moving_, then _Assign
Event..._. Select "PlayerScored" and press _Finish_  
9. Assign the "MoveDone" event to the other transition  
10. At the bottom left of the canvas, click the _State Event Matrix_ tab. This
view can also be used to edit state machines as a table  

_**Important note:** In xtUML, states do not have signatures as events do.
However, xtUML adheres to the "same data" rule, meaning all events transitioning
to a given state must share the same signature. Therefore, a MASL activity on an
xtUML state must be defined with the same signature as the events that transition
to that state._

#### Adding a terminator

The MASL idiom makes adding terminators to a domain a somewhat tricky process.
Naming conventions here are important for export and must be strictly followed.

In this example, we will assume that the _Logic_ domain depends on a _Math_
domain for complex statistical calculations. We will create a new terminator
called "MathFunctions" to provide these services.

1. Navigate to the _Shared_ package under the _Logic_ domain  
2. Right click, then _New > Components > Interface_. Enter "LogicMathFunctions"
for the name, and press _Ok_. The name **_must_** follow the convention "_\<domain
name>\<terminator name>_"  
3. Double click on the highest _Logic_ package (right under the project) to open
the package editor  
4. Use the _Required Interface_ tool in the _Components_ category and draw an
interface on the _Logic_ component  
5. In the model explorer, rename the new port to "MathFunctions". Again, the
naming convention is important. For the port, follow the convention
"_\<terminator name>_"  
6. Expand the port, right click on the interface and formalize to the newly
created _LogicMathFunctions_ interface  
7. Note that the _Cribbage_ project has the warning symbol on it. This is
because a component reference in that project refers to the _Logic_ component.
We must synchronize to update the component reference in the _Cribbage_ project.
Right click the _Logic_ project, then _Synchronize references_  

At this point, the terminator has been created, however in order to be able to
add terminator activities in the project, we must add the provided interface to
the project component.

1. Navigate to the _Cribbage_ package in the _Cribbage_ component. Double click
to open the package editor  
2. Select the _Provided Interface_ tool from the _Components_ category and draw
a provided interface on the _Cribbage_ component  
3. In the model explorer, rename then new port "LogicMathFunctions". The naming
here also follows the convention "_\<domain name>\<terminator name>_"  
4. Formalize the interface to the "LogicMathFunctions" interface in the _Logic_
component  
5. Drag the ball to the cup to connect the terminator in the project to the
terminator in the domain  
