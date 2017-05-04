domain TerminatorPragmas is

  public service s(); pragma p(true);

  terminator t is
    public service s(); pragma p(true);
  end terminator;

end domain;
