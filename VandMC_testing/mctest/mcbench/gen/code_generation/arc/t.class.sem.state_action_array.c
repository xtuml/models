.//

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const ${te_sm.action_type} ${te_sm.action_array}[ ${state_space} ] = {
    .// Element zero is unused.
    (${te_sm.action_type}) 0,
${state_action_rows}\
  };
