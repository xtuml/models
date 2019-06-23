.//

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const ${te_sm.state_names_array}[ ${state_space} ] = {
    .// Element zero is unused.
    "",
${state_names}\
  };
