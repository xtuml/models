domain Logic is
  
  object Scenario;
  object CribDiscardScenario;
  object PeggingScenario;
  
  public service nextPeggingPlay ( cards: in sequence of Game::CardType,
                                   pile_cards: in sequence of Game::CardType );   
  public service nextDiscard ( cards: in sequence of Game::CardType,
                               my_crib: in boolean );   
  
  
  terminator GameControl is
    private service play ( card: in Game::CardType );     
  end terminator;
  pragma key_letter("GC");
  
  
  
  relationship R1 is Scenario is_a ( CribDiscardScenario, PeggingScenario );   
  
  
  
  object Scenario is
    
    scenario_id: preferred unique integer;     
    
    public instance deferred ( R1 ) service calculatePlay ();     
    
  end object;
  pragma key_letter("S");
  
  object CribDiscardScenario is
    
    cards: sequence of Game::CardType;     
    my_crib: boolean;     
    scenario_id: preferred referential ( R1.scenario_id ) integer;     
    
    public instance service calculatePlay ();     
    
  end object;
  pragma key_letter("DS");
  
  object PeggingScenario is
    
    cards: sequence of Game::CardType;     
    pile_cards: sequence of Game::CardType;     
    scenario_id: preferred referential ( R1.scenario_id ) integer;     
    
    public instance service calculatePlay ();     
    
  end object;
  pragma key_letter("PS");
  
  
end domain;
