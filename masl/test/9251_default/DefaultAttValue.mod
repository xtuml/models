domain DefaultAttValue is

  object Obj;

  object Obj is
    id : preferred integer;
    negative : integer := -1;
    expression : integer := 6*7;
    big_expression : integer := (6*7)/3;
  end object;

end domain;
