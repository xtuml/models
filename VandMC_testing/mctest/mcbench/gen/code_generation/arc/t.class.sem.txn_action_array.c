.//

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const ${te_sm.action_type} ${te_sm.txn_action_array}[ ${num_te_acts} ] = {
${txn_action_rows}\
  };
