domain R114Crash is

  object Log;
  object ShipLog;
  object StarshipLog;

  object LogEntry;
  object StarshipLogEntry;
  object AlienEncounterLogEntry;
  object PhotonTorpedoLaunchLogEntry;

  relationship R1 is Log                    is_a ( ShipLog );
  relationship R2 is ShipLog                is_a ( StarshipLog );

  relationship R3 is LogEntry               is_a ( StarshipLogEntry );
  relationship R4 is StarshipLogEntry       is_a ( AlienEncounterLogEntry );
  relationship R5 is AlienEncounterLogEntry is_a ( PhotonTorpedoLaunchLogEntry );

  relationship R6 is 
      Log      conditionally   contains     many LogEntry,
      LogEntry unconditionally contained_in one  Log;

  relationship R7 is 
      StarshipLog      conditionally   contains     many StarshipLogEntry,
      StarshipLogEntry unconditionally contained_in one  StarshipLog;

  object Log is
    logId : preferred integer;
  end object;

  object ShipLog is 
    logId : preferred referential (R1.logId) integer;
  end object;

  object LogEntry is
    logId   : preferred referential (R6.contained_in.Log.logId) integer;
    entryId : preferred integer;
  end object;

  object StarshipLogEntry is
    logId   : preferred referential (R3.logId, R7.contained_in.StarshipLog.logId) integer;
    entryId : preferred referential (R3.entryId) integer;
  end object;

  object AlienEncounterLogEntry is
    logId   : preferred referential (R4.logId) integer;
    entryId : preferred referential (R4.entryId) integer;
  end object;

  object PhotonTorpedoLaunchLogEntry is
    logId   : preferred referential (R5.logId) integer;
    entryId : preferred referential (R5.entryId) integer;
  end object;

  object StarshipLog is 
    logId : preferred referential (R2.logId) integer;
  end object;

end domain;
