.//
.function oal_v_val_test
.select many v_lbos from instances of V_LBO
.select many te_vals related by v_lbos->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "boolean is ${te_val.buffer}"
.end for
.select many v_lrls from instances of V_LRL
.select many te_vals related by v_lrls->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "real is ${te_val.buffer}"
.end for
.select many v_lsts from instances of V_LST
.select many te_vals related by v_lsts->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "string is ${te_val.buffer}"
.end for
.select many v_lins from instances of V_LIN
.select many te_vals related by v_lins->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "integer is ${te_val.buffer}"
.end for
.select many v_lens from instances of V_LEN
.select many te_vals related by v_lens->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "enumerator is ${te_val.buffer}"
.end for
.select many v_tvls from instances of V_TVL
.select many te_vals related by v_tvls->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "transient is ${te_val.buffer}"
.end for
.select many v_irfs from instances of V_IRF
.select many te_vals related by v_irfs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "instance reference value is ${te_val.buffer}"
.end for
.select many v_avls from instances of V_AVL
.select many te_vals related by v_avls->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "attribute value is ${te_val.buffer}"
.end for
.select many v_slrs from instances of V_SLR
.select many te_vals related by v_slrs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "selected reference value is ${te_val.buffer}"
.end for
.select many v_isrs from instances of V_ISR
.select many te_vals related by v_isrs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "instance set reference value is ${te_val.buffer}"
.end for
.select many v_edvs from instances of V_EDV
.select many te_vals related by v_edvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "event datum value is ${te_val.buffer}"
.end for
.select many v_pvls from instances of V_PVL
.select many te_vals related by v_pvls->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "parameter value is ${te_val.buffer}"
.end for
.select many v_unys from instances of V_UNY
.select many te_vals related by v_unys->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "unary oped value is ${te_val.buffer}"
.end for
.select many v_bins from instances of V_BIN
.select many te_vals related by v_bins->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "binary oped value is ${te_val.buffer}"
.end for
.select many v_brvs from instances of V_BRV
.select many te_vals related by v_brvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "bridge value is ${te_val.buffer}"
.end for
.select many v_trvs from instances of V_TRV
.select many te_vals related by v_trvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "operation value is ${te_val.buffer}"
.end for
.select many v_fnvs from instances of V_FNV
.select many te_vals related by v_fnvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "function value is ${te_val.buffer}"
.end for
.select many v_mvls from instances of V_MVL
.select many te_vals related by v_mvls->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "member value is ${te_val.buffer}"
.end for
.select many v_aers from instances of V_AER
.select many te_vals related by v_aers->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "array element reference value is ${te_val.buffer}"
.end for
.select many v_alvs from instances of V_ALV
.select many te_vals related by v_alvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "array length reference value is ${te_val.buffer}"
.end for
.select many v_msvs from instances of V_MSV
.select many te_vals related by v_msvs->V_VAL[R801]->TE_VAL[R2040]
.for each te_val in te_vals
  .print "message value is ${te_val.buffer}"
.end for
.end function
.//
