.function SortAscendingByNumbAttr
  .param inst_ref_set item_set
  .//
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set2 = item_set
  .for each item1 in item_set
    .for each item2 in item_set2
      .if ( item1.Numb != item2.Numb )
        .if ( item2.Numb > item1.Numb )
          .assign item2.Order = item2.Order + 1
        .end if
      .end if
    .end for
  .end for
.end function
.//
.//
.// template function
.//
.function class_model_data
  .param inst_ref c
  .param inst_ref_set as
  .//
  .assign key_word_assign = ".assign"
  .assign key_word_invoke = ".invoke"
  .assign key_word_function = ".function"
  .assign key_word_endfunction = ".end function"
  .assign key_word_select = ".select"
  .//
  .if ( not_empty as )
${key_word_function} model_class_$_{c.Name}
    .// The following generates a call inside the model function.
    .// This allows access to other data components from within the class.
    .if ( "" != "${c.Descrip:access}" )
  ${key_word_invoke} $_{c.Descrip:access} = model_class_$_{c.Descrip:access}()
    .end if
    .//
    .for each a in as
      .select one dt related by a->S_DT[R114]
      .if ( "string" == dt.Name )
  ${key_word_assign} attr_${a.Name} = "${a.Descrip:default}"
      .elif ( ( "boolean" == dt.Name ) or ( "integer" == dt.Name ) )
        .if ( "" != "${a.Descrip:default}" )
  ${key_word_assign} attr_${a.Name} = ${a.Descrip:default}
        .end if
      .elif ( "unique_id" == dt.Name )
        .if ( "" != "${a.Descrip:default}" )
  ${key_word_select} any $l{a.Descrip:default} from instances of $u{a.Descrip:default} where ( false )
  ${key_word_assign} attr_${a.Name} = $l{a.Descrip:default}
        .end if
      .end if
    .end for
${key_word_endfunction}
  .end if
.end function
.//
.// query
.//
.select any ep_pkg from instances of EP_PKG where ( selected.Name == "Translation Extensions" )
.select many cs related by ep_pkg->PE_PE[R8000]->O_OBJ[R8001] where ( selected.Numb > 2035 )
.invoke SortAscendingByNumbAttr( cs )
.assign count = cardinality cs
.assign number = 0
.while ( number < count )
  .for each c in cs
    .if ( c.Order == number )
      .select many as related by c->O_ATTR[R102]
      .invoke model = class_model_data( c, as )
      .//
      .// render
      .//
${model.body}
      .//
      .break for
    .end if
  .end for
.end while
.//
.emit to file "../../../src/model.mc3020.arc"
.//
