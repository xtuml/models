domain DuplicateRefAtts is
  object Spec;
  object Element;
  object Item;
  object Node;

  relationship R1 is
    Spec unconditionally defines many Item,
    Item unconditionally is_defined_in one Spec;

  relationship R2 is
    Node conditionally contains many Item,
    Item conditionally is_contained_in one Node;

  relationship R3 is
    Element unconditionally is_contained_in one Node,
    Node conditionally contains many Element;

  relationship R4 is Item is_a ( Node, Element );

  object Spec is
    spec_id : preferred string;
  end object;

  object Item is
    item_id        : preferred string;
    spec_id        : preferred referential ( R1.is_defined_in.Spec.spec_id, R2.is_contained_in.Node.spec_id ) string;
    parent_item_id : referential (R2.is_contained_in.Node.item_id) string;
  end object;

  object Node is
    item_id : preferred referential ( R4.item_id ) string;
    spec_id : preferred referential ( R4.spec_id ) string;
  end object;

  object Element is
    item_id        : preferred referential ( R4.item_id ) string;
    spec_id        : preferred referential ( R4.item_id, R3.is_contained_in.Node.spec_id ) string;
    parent_item_id : referential (R3.is_contained_in.Node.item_id) string;
  end object;

end domain;
