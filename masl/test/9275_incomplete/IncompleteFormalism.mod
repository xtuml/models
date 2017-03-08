domain IncompleteFormalism is
  object Node;

  relationship R1 is
    Node conditionally has_child many Node,
    Node conditionally has_parent one Node;

  object Node is
    nodeId      : preferred integer;
    treeId      : preferred referential ( R1.has_parent.Node.treeId) integer;
    parentNodeId : referential ( R1.has_parent.Node.nodeId) integer;
  end object; 

end domain;
