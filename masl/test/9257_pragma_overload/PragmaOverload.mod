domain PragmaOverload is
  public service foo( p : in integer ); pragma filename("foo.integer.svc");
  public service foo( p : in string ); pragma filename("foo.string.svc");
end domain;

