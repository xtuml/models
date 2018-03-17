//
// UK Crown Copyright (c) 2009. All Rights Reserved
//

domain Logger is

  type Priority is enum ( Fatal, Critical, Error, Warning, Notice, Information, Debug, Trace );

  public service log         ( priority : in Priority, message : in anonymous string );
  public service log         ( priority : in Priority, logger : in anonymous string,  message : in anonymous string );

  public service trace       ( message : in anonymous string );
  public service debug       ( message : in anonymous string );
  public service information ( message : in anonymous string );
  public service notice      ( message : in anonymous string );
  public service warning     ( message : in anonymous string );
  public service error       ( message : in anonymous string );
  public service critical    ( message : in anonymous string );
  public service fatal       ( message : in anonymous string );

  public service trace       ( logger : in anonymous string, message : in anonymous string );
  public service debug       ( logger : in anonymous string, message : in anonymous string );
  public service information ( logger : in anonymous string, message : in anonymous string );
  public service notice      ( logger : in anonymous string, message : in anonymous string );
  public service warning     ( logger : in anonymous string, message : in anonymous string );
  public service error       ( logger : in anonymous string, message : in anonymous string );
  public service critical    ( logger : in anonymous string, message : in anonymous string );
  public service fatal       ( logger : in anonymous string, message : in anonymous string );

  public service setLogLevel( priority : in Priority );
  public service setLogLevel( logger : in anonymous string, priority : in Priority );
  public service printLoggers();


end domain;

