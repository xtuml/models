domain InstanceInit is
  object Obj;

  private service test ( obj : in instance of Obj );

  object Obj is
    id : preferred integer;
  end object;
end domain;
