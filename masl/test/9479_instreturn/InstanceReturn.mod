domain InstanceReturn is

  object Obj;

  object Obj is 
    id : preferred unique integer;
  end object;

  private service foo() return instance of Obj;

end domain;
