domain FormalismWrongRefAtt is

  object Operation;
  object File;
  object Identifier;
  object Task;

  relationship R1 is
    Operation unconditionally groups many Task,
    Task unconditionally requested_on_behalf_of one Operation;

  relationship R2 is 
    Task conditionally operates_on one Identifier,
    Identifier conditionally identifies_details_for many Task;

  relationship R3 is 
    Identifier conditionally jointly_identifies many File,
    File conditionally identified_by one Identifier;

  relationship R4 is
    Operation conditionally has_unique many Identifier,
    Identifier unconditionally connected_to one Operation;

  relationship R5 is
    Task conditionally has_unordered many File,
    File conditionally is_unordered_for one Task;

  object Operation is
    op_id : preferred string;
  end object;

  object File is
    file_id           : preferred string;
    id_id             : referential (R3.identified_by.Identifier.id_id) string;
    op_id             : referential (R3.identified_by.Identifier.op_id) string;
    unordered_task_id : referential (R5.is_unordered_for.Task.task_id) string;
    unordered_op_id   : referential (R5.is_unordered_for.Task.op_id) string;
  end object;

  object Identifier is
    id_id : preferred string;
    op_id : preferred referential (R4.connected_to.Operation.op_id) string;      
  end object;

  object Task is
    task_id : preferred string;
    op_id   : preferred referential (R1.requested_on_behalf_of.Operation.op_id, R2.operates_on.Identifier.op_id) string;
    id_id   : referential (R2.operates_on.Identifier.id_id) string;
  end object;    

end domain;
