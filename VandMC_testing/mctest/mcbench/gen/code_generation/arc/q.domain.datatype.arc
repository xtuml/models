.//============================================================================
.// This archetype generates an include file containing the domain level
.// structured and enumerated user data types defined in the analysis model.
.//============================================================================
.//
.//
.//
.//============================================================================
.function TE_DT_StructuredDataTypes
  .param inst_ref_set te_dts
  .for each te_dt in te_dts
    .invoke r = TE_DT_StructuredDataType( te_dt )
${r.body}\
  .end for
.end function
.//
.//
.//
.//
.//============================================================================
.function TE_DT_StructuredDataType
  .param inst_ref te_dt
  .select any te_string from instances of TE_STRING
  .select any te_file from instances of TE_FILE
  .select one s_sdt related by te_dt->S_DT[R2021]->S_SDT[R17]
  .if ( not te_dt.generated )
    .assign members = ""
    .assign te_dt.Initial_Value = "{"
    .assign te_dt.generated = true
    .select many s_mbrs related by s_sdt->S_MBR[R44]
    .select many mbr_te_dts related by s_mbrs->S_DT[R45]->S_SDT[R17]->S_DT[R17]->TE_DT[R2021]
    .for each mbr_te_dt in mbr_te_dts
      .invoke r = TE_DT_StructuredDataType( mbr_te_dt )
${r.body}\
    .end for
    .// Find the first member of the structure.
    .select any first_te_mbr from instances of TE_MBR where ( false )
    .for each s_mbr in s_mbrs
      .select one previous_s_mbr related by s_mbr->S_MBR[R46.'succeeds']
      .if ( empty previous_s_mbr )
        .select one first_te_mbr related by s_mbr->TE_MBR[R2047]
        .break for
      .end if
    .end for
    .assign te_mbr = first_te_mbr
    .while ( not_empty te_mbr )
      .select one mbr_te_dt related by te_mbr->TE_DT[R2068]
      .assign members = members + "  ${mbr_te_dt.ExtName} ${te_mbr.GeneratedName}${te_mbr.array_spec};\n"
      .if ( "" == te_mbr.array_spec )
        .assign te_dt.Initial_Value = te_dt.Initial_Value + "${mbr_te_dt.Initial_Value}"
      .else
        .assign te_dt.Initial_Value = te_dt.Initial_Value + "{${mbr_te_dt.Initial_Value}}"
      .end if
      .select one te_mbr related by te_mbr->TE_MBR[R2067.'precedes']
      .if ( not_empty te_mbr )
        .assign te_dt.Initial_Value = te_dt.Initial_Value + ","
      .end if
    .end while
    .assign te_dt.Initial_Value = te_dt.Initial_Value + "}"
    .include "${te_file.arc_path}/t.s_sdt.h"
  .end if
.end function
.//
.//
.//
.//============================================================================
.function TE_DT_EnumerationDataTypes
  .param inst_ref te_dt
  .//
  .select any te_sys from instances of TE_SYS
  .select any te_target from instances of TE_TARGET
  .assign dtowner = te_sys.Name
  .select one te_c related by te_dt->TE_C[R2086]
  .if ( not_empty te_c )
    .assign dtowner = te_c.Name
  .end if
  .if ( te_dt.Owning_Dom_Name == dtowner )
    .assign intvalue = -1
    .if ( te_dt.Value != "-1" )
      .// Avoid calling this when default.
      .invoke temp_int = STRING_TO_INTEGER( te_dt.Value )
      .assign intvalue = temp_int.result
    .end if
    .// find the first enumerator
    .select one s_edt related by te_dt->S_DT[R2021]->S_EDT[R17]
    .select any s_enum from instances of S_ENUM where (false)
    .select any prev_s_enum related by s_edt->S_ENUM[R27]
    .while (not_empty prev_s_enum)
      .assign s_enum = prev_s_enum
      .select one prev_s_enum related by prev_s_enum->S_ENUM[R56.'succeeds']
    .end while
/*
 * Enumerated Data Type:  ${te_dt.Name}
 */
typedef enum {
 ${te_dt.Initial_Value} = ${te_dt.Value},
    .while ( not_empty s_enum )
      .select one te_enum related by s_enum->TE_ENUM[R2027]
 ${te_enum.GeneratedName}\
      .if ( "" != te_enum.Value )
        .invoke temp_int = STRING_TO_INTEGER( te_enum.Value )
        .assign intvalue = temp_int.result
      .else
        .assign intvalue = intvalue + 1
      .end if
 = ${intvalue}\
      .select one s_enum related by s_enum->S_ENUM[R56.'precedes']
      .if  ( not_empty s_enum )
,
      .else

      .end if
    .end while    
} ${te_dt.ExtName};
  .end if
.end function
.//
