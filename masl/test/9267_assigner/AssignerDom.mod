domain AssignerDom is
  
  object Obj;

  object Obj is
    id: preferred unique integer;

    assigner start state state1();
    assigner state state2();
    assigner event event1();

    assigner transition is
      state1 ( event1 => state2 );
      state2 ( event1 => state1 );
    end transition;
  end object;

end domain;
