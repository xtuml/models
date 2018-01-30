domain T is
object CS;
object SU;

relationship R2 is CS is_a (SU);
object CS is
    csId : preferred unique integer;
    state W();
    state F (ft : in string, fr : in string);
    event fD (ft : in string, fr : in string);
    event mF (fr : in string);
    transition is
      Non_Existent (fD => Cannot_Happen,
                             mF => Cannot_Happen);
      W (fD => F,
           mF => Ignore);
      F (fD => Ignore,
           mF => Ignore);
    end transition;
  end object;
object SU is
    csId : preferred referential (R2.csId) integer;
    state C ();
    state S ();
    state SF (ft : in string, fr : in string);
    state F (fr : in string);
    event bS ();
    transition is
      Non_Existent (bS => Cannot_Happen,
                             CS.fD => Cannot_Happen,
                             CS.mF => Cannot_Happen);
      C (bS => S,
          CS.fD => Ignore,
          CS.mF => Ignore);
      S (bS => Ignore,
          CS.fD => SF,
          CS.mF => F);
      SF (bS => Ignore,
            CS.fD => Ignore,
            CS.mF => Ignore);
      F (bS => Ignore,
          CS.fD => SF,
          CS.mF => Ignore);
    end transition;
  end object;
end domain;
