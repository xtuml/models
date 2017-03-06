domain SecondaryIdentifier is
  object Parent;
  object Child;

  relationship R1 is
    Child unconditionally has_parent one Parent,
    Parent conditionally has_child many Child;

  object Parent is
    id : preferred integer;
    id2 : integer;

    identifier is ( id, id2 );
  end object;

  object Child is
    id : preferred integer;
    p_id1 : referential ( R1.has_parent.Parent.id1) integer;
    p_id2 : referential ( R1.has_parent.Parent.id2) integer;
  end object;

end domain;
