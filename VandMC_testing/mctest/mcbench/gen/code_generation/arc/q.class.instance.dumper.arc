.//============================================================================
.// Description:
.// This query/transformation archetype file generates an instance dumper
.// in RSL format.
.//============================================================================
.//
.//
.function TE_CLASS_instance_dumper
  .assign dollarcurly = "$${"
..print "dumping class instances into SQL format..."
  .select any ep_pkg from instances of EP_PKG where ( selected.Name == "ooaofooa" )
  .select many ep_pkgs related by ep_pkg->PE_PE[R8000]->EP_PKG[R8001] where ( ( ( ( selected.Name != "Value" ) and ( selected.Name != "Body" ) ) and ( ( selected.Name != "Event" ) and ( selected.Name != "Selection" ) ) ) and ( ( ( selected.Name != "Instance Access" ) and ( selected.Name != "Relate and Unrelate" ) ) and ( selected.Name != "Translation OAL" ) ) )
  .invoke SortSetAlphabeticallyByNameAttr( ep_pkgs )
  .assign count = cardinality ep_pkgs
  .assign number = 0
  .while ( number < count )
    .for each ep_pkg in ep_pkgs
      .if ( ep_pkg.Order == number )
..print "${ep_pkg.Name}"
        .select many o_objs related by ep_pkg->PE_PE[R8000]->O_OBJ[R8001] where ( ( selected.Key_Lett != "TE_VAL" ) and ( selected.Key_Lett != "TE_VAR" ) )
        .invoke SortSetAscendingByAttr_Numb( o_objs )
        .assign o_obj_count = cardinality o_objs
        .assign o_obj_number = 0
        .while ( o_obj_number < o_obj_count )
          .for each o_obj in o_objs
            .if ( o_obj.Order == o_obj_number )
..select many $l{o_obj.Key_Lett}s from instances of ${o_obj.Key_Lett}
..for each $l{o_obj.Key_Lett} in $l{o_obj.Key_Lett}s
INSERT INTO ${o_obj.Key_Lett} VALUES (\
              .select one o_attr related by o_obj->O_ATTR[R102] where ( selected.PAttr_ID == 00 )
              .assign delimiter = ""
              .while ( not_empty o_attr )
                .if ( "${o_attr.Descrip:Persistent}" != "false" )
                  .assign attributename = o_attr.Name
                  .invoke r = GetAttributeCodeGenType( o_attr )
                  .assign te_dt = r.result
                  .if ( "string" == te_dt.Name )
                    .if ( ( "Action_Semantics_internal" == attributename ) or ( "Descrip" == attributename ) )
${delimiter} ''\\
                    .else
${delimiter} '$${$l{o_obj.Key_Lett}.${attributename}}'\
                    .end if
                  .elif ( "unique_id" == te_dt.Name )
\\
  ..if ( "un-initialized" == "$${$l{o_obj.Key_Lett}.${attributename}}" )
${delimiter} 0\\
  ..else
${delimiter} ${dollarcurly}$l{o_obj.Key_Lett}.${attributename}}\\
  ..end if
                  .else
${delimiter} ${dollarcurly}$l{o_obj.Key_Lett}.${attributename}}\
                  .end if
                  .assign delimiter = ","
                .end if
                .select one o_attr related by o_attr->O_ATTR[R103.'precedes']
              .end while
 );
..end for
              .break for
            .end if
          .end for
          .assign o_obj_number = o_obj_number + 1
        .end while
        .break for
      .end if
    .end for
    .assign number = number + 1
  .end while
..emit to file "_system.sql"
..exit 508
.end function
.//
.//============================================================================
.//   Sort the instances in the instance set <item_set> in ascending numeric
.// order, based on the value of the Numb (integer) attribute value of
.// each instance. The Order (integer) attribute value of each instance will
.// be set to contain a value relative to Numb, indicating the position
.// the instance has in the ordered set.
.//   This function is definately *slow*, but will work with any objects
.// which contain integer attributes <Numb> and <Order>.
.//============================================================================
.function SortSetAscendingByAttr_Numb
  .param inst_ref_set item_set
  .//
  .// Clear the Order attribute of all set members.
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .// simple pseudo bubble sort
  .assign item_set_copy = item_set
  .for each item in item_set
    .for each item_copy in item_set_copy
      .if ( item_copy.Numb > item.Numb )
        .assign item_copy.Order = item_copy.Order + 1
      .end if
    .end for
  .end for
.end function
.//
.//============================================================================
.// Given a set of instances, sets the attribute Order to
.// a value corresponding to the alphabetical order its Name attribute
.// is in the set
.//
.// <item_set> - from instances of anything with Name and Order attributes
.//============================================================================
.function SortSetAlphabeticallyByNameAttr
  .param inst_ref_set item_set
  .//
  .// Clear the Order attribute of all set members.
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set_copy = item_set
  .for each item in item_set
    .for each item_copy in item_set_copy
      .if ( item_copy.Name > item.Name )
        .assign item_copy.Order = item_copy.Order + 1
      .end if
    .end for
  .end for
.end function
.//
