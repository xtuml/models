.//============================================================================
.// Recursively locate the datatype at the base of the UDT type definition 
.// chain. Traverses up through UDTs based on UDTs until we find the underlying
.// S_DT instance (which may actually be EDT, SDT, IRDT or CDT).
.//============================================================================
.function GetBaseTypeForUDT .// s_dt
  .param inst_ref s_udt
  .select one s_dt related by s_udt->S_DT[R18]
  .select one s_udt related by s_dt->S_UDT[R17]
  .if ( not_empty s_udt )
    .invoke r = GetBaseTypeForUDT( s_udt )
    .assign s_dt = r.result
  .end if
  .assign attr_result = s_dt
.end function
.//
.//============================================================================
.//   Get the S_DT and S_CDT object references for a given attribute
.//   (O_ATTR) instance.
.//============================================================================
.function GetAttributeCodeGenType .// te_dt
  .param inst_ref o_attr
  .//
  .select one s_dt related by o_attr->S_DT[R114]
  .select one parent_te_dt related by s_dt->TE_DT[R2021]
  .select one s_udt related by s_dt->S_UDT[R17]
  .if ( not_empty s_udt )
    .invoke r = GetBaseTypeForUDT( s_udt )
    .assign s_dt = r.result
  .end if
  .select one te_dt related by s_dt->TE_DT[R2021]
  .select one s_cdt related by s_dt->S_CDT[R17]
  .//
  .if ( empty s_cdt )
    .select one s_edt related by s_dt->S_EDT[R17]
    .if ( empty s_edt )
      .select one s_sdt related by s_dt->S_SDT[R17]
      .if ( empty s_sdt )
        .select one s_irdt related by s_dt->S_IRDT[R17]
        .if ( empty s_irdt )
          .print "Error in attribute ${o_attr.Name}"
          .print "with data type ${s_dt.Name}"
          .exit 100
        .end if
      .end if
    .else
      .// Enum, use integer type.
      .// CDS Some day we should pass along the enumeration type.
      .select any s_cdt from instances of S_CDT where ( selected.Core_Typ == 2 )
    .end if
  .end if
  .//
  .if ( not_empty s_cdt )
    .if ( 7 == s_cdt.Core_Typ )
      .// s_cdt.Core_Typ is "same_as<Base_Attribute>"
      .select one base_o_attr related by o_attr->O_RATTR[R106]->O_BATTR[R113]->O_ATTR[R106]
      .if ( empty base_o_attr )
        .select one o_obj related by o_attr->O_OBJ[R102]
        .print "\nCould not find O_BATTR for object ${o_obj.Name} (${o_obj.Key_Lett}) attribute ${o_attr.Name} !"
        .print "\nDid you combine a referential and then rename the combined attribute?"
        .exit 101
      .end if
      .// Note: the following is a recursive call to this function
      .invoke r = GetAttributeCodeGenType( base_o_attr )
      .assign te_dt = r.result
    .end if
    .if ( 11 == s_cdt.Core_Typ )
      .// inst<Mapping>
      .// Come up one level from bottoming out CDT, because the
      .// code gen information is in the parent for Mappings.
      .assign te_dt = parent_te_dt
    .end if
  .end if
  .assign attr_result = te_dt
.end function
.//
.//============================================================================
.// Map a user defined data types precision into its corresponding instance
.// of Data Type (S_DT).
.// Note:  Might prefer POSIX type support here, but doubt we can count
.// on most embedded targets thinking this way.  Thus brute force the types.
.//============================================================================
.function MapUserSpecifiedDataTypePrecision .// boolean
  .param inst_ref te_dt
  .param string mapping
  .assign error = false
  .assign type = mapping
  .if ( (type == "uchar_t") or ((type == "u_char") or (type == "unsignedchar")) )
    .assign te_dt.ExtName      = "unsigned char"
  .elif ( (type == "char_t") or (type == "char") )
    .assign te_dt.ExtName      = "char"
  .elif ( type == "signedchar" )
    .assign te_dt.ExtName      = "signed char"
  .elif ( (type == "ushort_t") or ((type == "u_short") or (type == "unsignedshort")) )
    .assign te_dt.ExtName      = "unsigned short"
  .elif ( (type == "short_t") or (type == "short") )
    .assign te_dt.ExtName      = "short"
  .elif ( type == "signedshort" )
    .assign te_dt.ExtName      = "signed short"
  .elif ( (type == "uint_t") or ((type == "u_int") or (type == "unsignedint")) )
    .assign te_dt.ExtName      = "unsigned int"
  .elif ( type == "s1_t" )
    .assign te_dt.ExtName      = "s1_t"
  .elif ( type == "u1_t" )
    .assign te_dt.ExtName      = "u1_t"
  .elif ( type == "s2_t" )
    .assign te_dt.ExtName      = "s2_t"
  .elif ( type == "u2_t" )
    .assign te_dt.ExtName      = "u2_t"
  .elif ( type == "s4_t" )
    .assign te_dt.ExtName      = "s4_t"
  .elif ( type == "u4_t" )
    .assign te_dt.ExtName      = "u4_t"
  .elif ( type == "i_t" )
    .assign te_dt.ExtName      = "i_t"
  .elif ( (type == "int_t") or (type == "int") )
    .assign te_dt.ExtName      = "int"
  .elif ( type == "signedint" )
    .assign te_dt.ExtName      = "signed int"
  .elif ( (type == "ulong_t") or ((type == "u_long") or (type == "unsignedlong")) )
    .assign te_dt.ExtName      = "unsigned long"
  .elif ( (type == "long_t") or (type == "long") )
    .assign te_dt.ExtName      = "long"
  .elif ( type == "signedlong" )
    .assign te_dt.ExtName      = "signed long"
  .elif ( (type == "u_longlong_t") or ((type == "u_longlong_t") or (type == "unsignedlonglong")) )
    .assign te_dt.ExtName      = "unsigned long long"
  .elif ( (type == "longlong_t") or ((type == "longlong") or (type == "signedlonglong")) )
    .assign te_dt.ExtName      = "long long"
    .//
  .elif ( type == "float" )
    .assign te_dt.ExtName      = "float"
  .elif ( type == "r4_t" )
    .assign te_dt.ExtName      = "r4_t"
  .elif ( type == "double" )
    .assign te_dt.ExtName      = "double"
  .elif ( type == "r8_t" )
    .assign te_dt.ExtName      = "r8_t"
    .//
  .elif ( type == "size_t" )
    .assign te_dt.ExtName      = "size_t"
  .elif ( type == "ssize_t" )
    .assign te_dt.ExtName      = "ssize_t"
  .elif ( type == "time_t" )
    .assign te_dt.ExtName      = "time_t"
  .elif ( type == "clock_t" )
    .assign te_dt.ExtName      = "clock_t"
  .elif ( type == "volatile_clock_t" )
    .assign te_dt.ExtName      = "volatile unsigned long"
    .//
  .else
    .assign error = true
  .end if
  .assign attr_result = error
.end function
.//
.// Return the structure type for persistent links.
.function UserSuppliedDataTypeIncludes .// string
  .select any te_file from instances of TE_FILE
  .assign sys_types_file_name = ( te_file.types + "." ) + te_file.hdr_file_ext
  .select many special_te_dts from instances of TE_DT where ( ( selected.Include_File != "" ) and ( selected.Include_File != sys_types_file_name ) )
  .assign s = ""
  .invoke r = T_quote()
  .assign q = r.result
  .for each special_te_dt in special_te_dts
    .assign s = s + "#include " + q + special_te_dt.Include_File + q + "\n"
  .end for
  .assign attr_result = s
.end function
.//
