//! 	
domain FTE is
  object The_Environment;

  //! This domain based synch service shall return a text string indicating the 
  //! environment under which this system is executing.
  public service Environment_String (This_Environment : out string);
  pragma domain_operation_number (1);

  //! This domain based synch service shall return a number: 
  //! 
  //! 1 for ISIM or
  //! 0 for WACA 
  //! 
  //! defining environment execution.
  public service Environment_Number (Env_Number : out integer);
  pragma domain_operation_number (2);

  //! Establish_The_Environment
  private service Establish_The_Environment (); pragma scenario (1);

  //! Find_The_Environment
  private service Find_The_Environment (); pragma scenario (2);

  //! This data object shall contain the environment information for where this system is executing. Either ISIM or WACA.
  object The_Environment is

    Unique_Identifier : preferred integer;

    //! Where are we 
    Where_Are_We      : string;


  end object;
  pragma id (2);
  pragma key_letter ("ENV");

end domain;
pragma number (22);
pragma name ("Find_The_Environment");
pragma kl ("FTE");
pragma version (1);
