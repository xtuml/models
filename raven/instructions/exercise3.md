Managing dependencies while editing MASL projects
=================================================

[prev: Convert and import a MASL project](exercise2.md) | [index](README.md) | [next: MASL editing nuances](exercise4.md)

## Purpose

This exercise will teach the student how to properly edit multi-project MASL
applications, making sure all inter-project dependencies are handled. It will
also introduce the student to the proper way to use types in MASL.

## Instructions

#### Preparing the workspace

1. Open a terminal window and navigate to the `~/xtuml` directory.  
2. Run the `bridgepoint.sh` script to launch BridgePoint (or run the BridgePoint
launcher directly with `BridgePoint/eclipse/Launcher.sh`.  
3. Enter `/home/student/xtuml/workspaces/ws-all` in the workspace chooser and
press `Ok`.  

#### Creating types and type references

In xtUML, there is no notion of "type reference". Elements that are able to be
typed -- attributes, parameters, etc. are linked directly to the type that
defines their shape. Because of this limitation, editing types in MASL follows a
specialized idiom to capture the information.

In this example we will create a new type _ColorType_. We will then create an
attribute on the _Peg_ class and link it to this type. Finally, we will create a
domain service _createPegs_ that takes a sequence of _ColorType_ as an argument.

__Creating _ColorType___

1. In the model explorer, navigate to and expand the _Game_ component (green
rectangle) in the _Game_ project.  
  * We want this type to be private to the domain, so we must create a package
under the component to store them.
2. Create a new package under the _Game_ component. Right click, then 'New >
Package'  
3. Enter _types_ for the name and press _Ok_  
4. Now create a new type by right clicking on the newly created package, then
_New > types > User DataType_.  
5. Enter _ColorType_ for the name and press _Ok_  
6. Expand the _Types_ package and double click _ColorType_ to bring up the
description editor  
7. Enter the following description: `<definition>enum( RED, BLUE )</definition>`  
  * MASL user defined types must be defined in the description field between
    _definition_ tags. Do not create xtUML structures and enumeration types for
    MASL structures and enumerations  
  * When entering MASL type definitions, be sure to omit the semicolon. It is
    emitted by the MASL exporter  
8. Select the newly created type. In the _Properties_ view, expand the _Basic_
section.
9. Select the _CoreType_ line and press the _..._ button to bring up the type
chooser.
10. In the type chooser, find _MASLtype_. You can filter the list by typing in
the search box. Select _MASLtype_ and press _Ok_  
  * User defined structures and enumerations when editing in MASL should be
    derived from _MASLtype_  
  * User defined types that name another type (e.g. `type Count is integer;`)
    should be derived from the named type  

__Creating class attribute__

1. Navigate to the _Peg_ class in the model explorer (in the _Game_ package
under the _Game_ component)  
2. Right click on the _Peg_ class, then _New > Attribute_  
3. Enter _color_ for the name and press _Ok_  
4. Right click on the newly created attribute, then _Set Type..._  
5. In the type chooser, select _ColorType_ and press _Ok_  

__Creating _createPegs_ domain service__

1. Navigate to the _functions_ package under the _Game_ component  
2. Right click on the package, then _New > Function_  
3. Enter _createPegs_ for the name, then press _Ok_  
4. Right click on the newly created function, then _New > Parameter_  
5. Enter _colors_ for the name, then press _Ok_  
6. For complex MASL type references, we must create a new xtUML type to
represent the reference. We make all type references public. Navigate to the
_Shared_ package adjacent to the _Game_ component  
7. Right click on the _Shared_ package, then _New > types > User DataType_  
8. Enter "sequence of ColorType" for the name and press _Ok_  
9. Select the new type and in the _Properties_ view _Basic > CoreType_, select
_MASLtype_ with the type chooser as we did before  
10. Navigate back to the newly created function, right click the _colors_
parameter, then _Set Type..._
11. Select the newly created _sequence of ColorType_ and press _Ok_

#### Referencing types and exceptions across domain boundaries

Due to the type idiom for MASL, it is required to create a "type reference" type
within the referring domain when referring to types across domain boundaries.

In this example, we will examine an example of a type reference across domain
boundaries.

1. Navigate to the _functions_ package under the _Logic_ component  
2. Expand the _nextDiscard_ function, and select the _cards_ parameter  
3. Look in the _Properties_ view and notice that the type of this parameter is
_sequence of Game::CardType_. This is a "type reference" type referring to the
_CardType_ created in the _Game_ project  
4. Navigate to the _Shared_ package in the _Logic_ component  
5. Note that _sequence of Game::CardType_ and _Game::CardType_ are both defined
here
6. This same pattern applies to public exceptions  

It is incorrect for a MASL project to ever refer to a type in a different
project. For this reason, it is recommended that analysts model domains with
inter-project references **_disabled_**

#### Creating/maintaining public and private domain services

In xtUML, anything inside a component is hidden from any other element outside
the component that might want to reference it. In order to create public
services and functions in xtUML, we must add the services to the interface named
after the domain.

In this example, we will create a new public domain service _startGame_. For
simplicity, it will not take any arguments.

1. Navigate to the _functions_ package within the _Game_ component  
2. Right click on the package, then _New > Function_  
3. Enter _startGame_ for the name and press _Ok_  
4. Navigate to the _Game_ interface in the _Shared_ package adjacent to the
_Game_ component  
5. Right click on the interface, then _New > Operation_  
6. Enter _startGame_ for the name and press _Ok_
7. You will notice that little warning symbols have appeared across the project
and on the _Cribbage_ project. This is because we have made changes to the
interface definition, and any interface reference to this interface must by
synchronized. To do this, right click on the _Game_ project, then 'Synchronize
references'  

#### Creating terminator services and syncing across projects

Like public domain services, terminator services are represented in xtUML as
interface operations.

In this example, we will create a new terminator service in the _Logic_ domain
called _go_ with no arguments. In the case where the player cannot make a legal
play, he must say "Go".

1. Navigate to the _Shared_ Package within the _Logic_ project. Within this
package, right click the _LogicGameControl_ interface, then _New > Operation_  
2. Enter _go_ for the name and press _Ok_  
3. Note once again the warning symbols on the _Logic_ and _Cribbage_ projects.
Right click the _Logic_ project, then _Synchronize references_  
4. This will only create the terminator service. For completion, a public domain
service in the _Game_ domain should be created  

#### Introducing a domain to an existing MASL project

Because the MASL idiom in xtUML requires some specialized setup, it can be
tricky to create a brand new domain.

In this example, we will create a new domain _Tournament_ and link it to the
project.

1. Right click in the model explorer, then _New > xtUML Project_  
2. Enter _Tournament_ for the name, select the _C Model Compiler (source)_ and
click _Finish_  
3. Open an existing domain model, right click on the _types_ package, then
_Copy_  
4. Right click on the _Tournament_ project, then _Paste_  
5. Create a package called _Tournament_ under the project  
6. Create a package under the new _Tournament_ package called _Shared_  
7. Create a component under the new _Tournament_ package called _Tournament_
(right click, then _New > Components > Component_)  
8. Under the _Shared_ package, create a new interface called _Tournament_ (right
click, then _New > Components > Interface_). This interface will represent all
the public services of this domain  
9. Under the _Tournament_ component, create three packages: _functions_,
_types_, and _Tournament_. These will contain the domain services, private
types, and object definitions respectively.  
10. Double click on the highest _Tournament_ package (containing the
_Tournament_ component) to open the package editor  
11. In the _Components_ section of the palette, select the _Provided Interface_
tool  
12. Use the mouse, to draw a provided interface on the component, first clicking
on the component and then dragging out to the canvas (a single ball-end
interface should appear with a label that says _Unnamed Interface_)  
12. Back in the model explorer, right click _Port 1_ under the _Tournament_
component, then _Rename_  
13. Enter _Tournament_ for the new name  
14. Expand the port, then right click _Unnamed Interface_, then _Formalize..._  
15. Select the _Tournament_ interface and press _Ok_  

We have now created a domain model and are free to populate it with any
implementation we want. Next we must integrate this component with the
_Cribbage_ project  

1. Navigate to the _Cribbage_ package under the _Cribbage_ project.  
2. Create a new component reference in this package (right click, then 'New >
Components > Component Reference'  
3. Right click on the new component reference, then _Assign Component..._  
4. Select the new _Tournament_ component and press _Ok_  
5. Double click the _Cribbage_ package to open the package editor  
6. As we did before, draw a new interface from the _Cribbage_ component to the
canvas, however this time, select _Required Interface_ from the palette  
7. Rename the port to _Tournament_ as we did before  
8. Formalize the interface reference to _Tournament_ as we did before  
9. Connect the matching interfaces on the _Tournament_ component reference and
the _Cribbage_ component by dragging the ball to the cup  

## Recap

* Types  
  * Create public types in the _Shared_ package  
  * Create private types in the _type_ package within the component  
  * Create all "type reference" types in the _Shared_ package  
  * User defined types and "type reference" types should be derived from
    _MASLtype_  
  * User defined types that rename another type should derive from the type
    named  
  * A "type reference" type is required in every domain in which the type is
    referenced  
  * **_Never_** assign a type from a different project  
* Services  
  * Create domain services in the _functions_ package  
  * Create a matching operation in the interface named after the domain for
    public domain services  
  * Create an operation in the terminator interface to add terminator services  
  * Synchronize references on the project to publish changes to other places
    that refer to an interface  
* New domains  
  * Create a new domain in a new project  
  * Copy the system level types package from an existing domain  
  * Follow the pattern of another domain to create sub-packages and the
    component  
  * Create an interface reference on the project component  
  * Create a component reference in the project  
