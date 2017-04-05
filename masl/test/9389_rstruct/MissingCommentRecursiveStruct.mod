domain MissingCommentRecursiveStruct is

  public type Node;

  //! A tree of nodes
  public type Node is structure
    value : string;
    children : sequence of Node;
  end structure;

  public type InnerContainer is string;

  //! A container
  public type Container is structure
   child : InnerContainer;
  end structure;

end domain;
