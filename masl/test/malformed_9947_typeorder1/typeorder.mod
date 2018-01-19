domain typeorder is
  //! cyclic reference
  private type sun is mon;
  private type mon is tue;
  private type tue is wed;
  private type wed is thu;
  private type thu is fri;
  private type fri is sat;
  private type sat is sun;
  //! c depends on myinteger which is not defined yet
  private type c is myinteger;
  private type calendar;
  private type calendar is sequence of week;
  private type week is sequence of calendar;
  private type positive is myinteger;
  private type a is myinteger;
  private type d is myinteger;
  private type myinteger is integer;
  private type mystring is string;
  private type b is myinteger;
  public type node is structure
    nested: sequence of node;
  end structure;
  //! forward references down here to be sure they do not help round trip
  public type node;
  private type sun;
end domain;

