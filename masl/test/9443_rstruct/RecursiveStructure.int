domain RecursiveStructure is
  public type Component;
  public type Device;

  public type Device is structure
    components: sequence of Component;
  end structure;

  public type Component is structure
    subDevices   : sequence of Device;
    subComponents : sequence of Component;
  end structure;

  public service test();

end domain;

