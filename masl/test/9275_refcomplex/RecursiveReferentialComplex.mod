domain RecursiveReferentialComplex is

  object Environment_Variable;
  object Environment_Variable_for_Process_Specification;
  object Process;
  object Process_Group;
  object Process_Specification;
  object Process_Specification_for_Program;
  object Program;

  relationship R32 is
    Program unconditionally is_executed_by_processes_specified_by many Process_Specification,
    Process_Specification conditionally specifies_the_execution_of one Program
    using Process_Specification_for_Program;

  relationship R48 is
    Process_Group unconditionally last_started_up_a_process_specified_by one Process_Specification,
    Process_Specification conditionally was_last_used_to_start_a_process_in many Process_Group;

  relationship R49 is
    Process unconditionally is_currently_executing_a_program_specified_by one Process_Specification,
    Process_Specification conditionally specifies_the_current_execution_of_a many Process;

  relationship R55 is
    Process_Specification conditionally cleans_up_a_terminated one Process_Specification,
    Process_Specification conditionally is_cleaned_up_on_termination_by one Process_Specification;

  relationship R57 is
    Process unconditionally is_specified_by one Process_Specification,
    Process_Specification conditionally specifies many Process;

  relationship R110 is
    Process_Specification conditionally has_its_environment_specified_by many Environment_Variable,
    Environment_Variable unconditionally affects_the_environment_of many Process_Specification
    using Environment_Variable_for_Process_Specification;

  relationship R1 is
    Environment_Variable_for_Process_Specification conditionally precedes one Environment_Variable_for_Process_Specification,
    Environment_Variable_for_Process_Specification conditionally follows one Environment_Variable_for_Process_Specification;

  relationship R2 is
    Process_Specification conditionally affected_by_first one Environment_Variable_for_Process_Specification,
    Environment_Variable_for_Process_Specification conditionally is_the_first_to_affect one Process_Specification;

  relationship R3 is
    Program unconditionally is_started_first_by one Process_Specification_for_Program,
    Process_Specification_for_Program conditionally specifies_the_first one Program;

  relationship R4 is
    Process_Specification_for_Program conditionally is_started_before one Process_Specification_for_Program,
    Process_Specification_for_Program conditionally is_started_after one Process_Specification_for_Program;

  object Environment_Variable is
    variable_name : preferred string;
  end object;

  object Environment_Variable_for_Process_Specification is
    variable_name      : preferred referential (R110.has_its_environment_specified_by.Environment_Variable.variable_name) string;
    next_variable_name : referential (R1.precedes.Environment_Variable_for_Process_Specification.variable_name) string;
    proc_spec_id       : preferred referential (R110.affects_the_environment_of.Process_Specification.proc_spec_id, R1.precedes.Environment_Variable_for_Process_Specification.proc_spec_id) integer;
  end object;

  object Process is
    process_id          : preferred integer;
    proc_spec_id        : referential (R49.is_currently_executing_a_program_specified_by.Process_Specification.proc_spec_id) integer;
    actual_proc_spec_id : referential (R57.is_specified_by.Process_Specification.proc_spec_id) integer;
  end object;

  object Process_Group is
    process_group_id : preferred integer;
    proc_spec_id     : referential (R48.last_started_up_a_process_specified_by.Process_Specification.proc_spec_id) integer;
  end object;

  object Process_Specification is
    variable_name         : referential (R2.affected_by_first.Environment_Variable_for_Process_Specification.variable_name) string;
    proc_spec_id          : preferred referential (R2.affected_by_first.Environment_Variable_for_Process_Specification.proc_spec_id) integer;
    cleaning_proc_spec_id : referential (R55.cleans_up_a_terminated.Process_Specification.proc_spec_id) integer;
  end object;

  object Process_Specification_for_Program is
    program_name      : referential (R32.specifies_the_execution_of.Program.program_name) string;
    proc_spec_id      : preferred referential (R32.is_executed_by_processes_specified_by.Process_Specification.proc_spec_id) integer;
    next_proc_spec_id : referential (R4.is_started_before.Process_Specification_for_Program.proc_spec_id) integer;
  end object;

  object Program is
    program_name : preferred string;
    proc_spec_id : referential (R3.is_started_first_by.Process_Specification_for_Program.proc_spec_id) integer;
  end object;

end domain;
