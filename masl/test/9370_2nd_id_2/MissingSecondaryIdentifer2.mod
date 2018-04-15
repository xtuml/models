domain MissingSecondaryIdentifer2 is
  object Product;
  object Machine;
  object Process;
  object Audit;

  relationship R1 is 
    Machine conditionally currently_processing one Product,
    Product conditionally being_processed_by many Machine
    using Process;

  relationship R2 is
    Machine conditionally has_processed many Product,
    Product conditionally was_processed_by many Machine
    using Audit;

  relationship R3 is
    Audit conditionally auditing one Process,
    Process unconditionally audited_by one Audit;

  object Product is
    product_id : preferred integer;
  end object;

  object Machine is
    machine_id : preferred integer;
  end object;

  object Process is
    process_id : preferred integer;
    product_id : referential (R1.currently_processing.Product.product_id, R3.audited_by.Audit.product_id) integer;
    machine_id : referential (R1.being_processed_by.Machine.machine_id, R3.audited_by.Audit.machine_id) integer;

    identifier is (machine_id);
    identifier is (machine_id,product_id);
  end object;

  object Audit is
    product_id : preferred referential (R2.has_processed.Product.product_id) integer;
    machine_id : preferred referential (R2.was_processed_by.Machine.machine_id) integer;
  end object;  

end domain;
