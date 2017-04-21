domain ScheduledEvents is
  object Test;

  public service test();

  object Test is
    id : preferred unique integer;
    timerId : timer;

    state Exists();
    event SomethingHappened();

    transition is
      Non_Existent ( SomethingHappened => Cannot_Happen );
      Exists       ( SomethingHappened => Exists );
    end transition;
  end object;
end domain;