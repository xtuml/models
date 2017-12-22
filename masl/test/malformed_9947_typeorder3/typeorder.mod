domain typeorder is
//! TEST 1 - self reference in structure type
  private type BinaryTreeNode is structure
    value      : Dict3;
    parent     : BinaryTreeNode;
    leftChild  : BinaryTreeNode;
    rightChild : BinaryTreeNode;
  end structure;
//! TEST 2 - sequence in named type reference
  private type List is sequence of Node;
//! TEST 3 - array in named type reference
  private type Array is array (10) of Node;
//! TEST 4 - set in named type reference
  private type Set is set of List;
//! TEST 5 - set in named type reference
  private type Bag is bag of CollectionStruct;
//! TEST 6 - dict key in named type reference
  private type Dict1 is dictionary Key of string;
//! TEST 7 - dict value in named type reference
  private type Dict2 is dictionary of Node;
//! TEST 8 - dict key and value in named type reference
  private type Dict3 is dictionary Key of Node;
//! TEST 9 - anonymous sequence in named type reference
  private type AnonSeq is anonymous sequence of List;
//! TEST 10 - collection types in structure
  private type CollectionStruct is structure
    mem1 : sequence (10) of Percent;
    mem2 : array (10) of Node;
    mem3 : set of Node;
    mem4 : bag of CoreTypeStruct;
    mem5 : dictionary Key1 of integer;
    mem6 : dictionary of Node;
    mem7 : dictionary Key2 of Node;
    mem8 : anonymous bag of Node;
  end structure;
//! TEST 11 - type reference with constraint
  private type Percent is real;
//! TEST 12 - structure with core types
  private type CoreTypeStruct is structure
    mem1 : character;
    mem2 : string;
    mem3 : boolean;
    mem4 : byte;
    mem5 : integer;
    mem6 : long_integer;
    mem7 : real;
    mem8 : device;
    mem9 : duration;
    mem10 : timestamp;
    mem11 : timer;
    mem12 : MyType;
  end structure;
//! TEST 13 - structure with scoped type and initial values
  private type LiteralsStruct is structure
    mem1 : character;
    mem2 : string := "levi";
    mem3 : boolean := false;
    mem4 : integer := 100;
    mem5 : real := 0.1;
    mem6 : real := .1;
    mem7 : real := 197.123;
    mem8 : duration := @P1DT2H@;
    mem9 : timestamp := @2004-04-12T13:20:00-05:00@;
    mem10 : MyDom::MyType;
  end structure;
  private type BinaryTreeNode;
  private type MyType is integer;
  private type Node is MyType;
end domain;
