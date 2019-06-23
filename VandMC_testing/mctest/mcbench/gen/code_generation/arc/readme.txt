Installing and using the Component Model Compiler
-------------------------------------------------

HowTo to Change the Model Compiler:

To change the model compiler, edit the archetypes (queries and templates)
in the org.xtuml.bp.mc.c.source_5.2.0/mc3020/arc folder.
sys.arc is the root archetype.  All translation starts from here.
q.* are queries t.* are templates.
Queries read the meta-model to extract customer model information.
Templates govern the shape of the output code.

The names of templates are intended to align closely with artifacts in
the architecture of the generated code.  You can usually find a template
that matches what you see in generated code.
Queries are named to bridge between the xtUML meta-model and the model
of the architecture.
Further segregation of template from query is on-going.



Restrictions:

- Cannot copy arrays and structures.
- Structure fields are not generated in the modeled order.

