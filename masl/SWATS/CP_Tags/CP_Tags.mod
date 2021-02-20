domain CP_Tags is
  object TCA_CP;
  object CCA_CP;
  object Global_CP;

  public service Create_TCA (Returning_Inst : out instance of TCA_CP);
  pragma domain_operation_number (1);

  public service Create_CCA (Returning_Inst : out instance of CCA_CP);
  pragma domain_operation_number (2);

  public service Create_Global (Returning_Inst : out instance of Global_CP);
  pragma domain_operation_number (3);

  object TCA_CP is

    idTCP : integer;


  end object;
  pragma id (2);
  pragma key_letter ("TCP");

  object CCA_CP is

    idCCP : integer;


  end object;
  pragma id (3);
  pragma key_letter ("CCP");

  object Global_CP is

    idGCP : integer;


  end object;
  pragma id (4);
  pragma key_letter ("GCP");

end domain;
pragma number (41);
pragma name ("Counterpoint Tags");
pragma kl ("CP_Tags");
pragma version (1);
