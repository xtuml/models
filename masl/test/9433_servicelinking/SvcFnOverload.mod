domain SvcFnOverload is
  public service foo() return boolean;
  public service foo();
  
  public service test();
end domain;

