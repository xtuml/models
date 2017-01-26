domain Logic is
  
  object CribDiscardScenario;
  object PeggingScenario;
  object Scenario;
  
  public service nextPeggingPlay ( cards: in sequence of Game::CardType,
                                   pile_cards: in sequence of Game::CardType );   
  public service nextDiscard ( cards: in sequence of Game::CardType,
                               my_crib: in boolean );   
  
  
  terminator GameControl is
    private service play ( card: in Game::CardType );     
  end terminator;
  
  
  
  relationship R1 is Scenario is_a ( PeggingScenario, CribDiscardScenario );   
  
  
  
  object CribDiscardScenario is
    
    cards: sequence of Game::CardType;     
    my_crib: boolean;     
    scenario_id: preferred referential ( R1.scenario_id ) integer;     
    
    public instance service calculatePlay ();     
    
  end object;
  
  object PeggingScenario is
    
    cards: sequence of Game::CardType;     
    pile_cards: sequence of Game::CardType;     
    scenario_id: preferred referential ( R1.scenario_id ) integer;     
    
    public instance service calculatePlay ();     
    
  end object;
  
  object Scenario is
    
    scenario_id: preferred unique integer;     
    
  end object;
  
  
end domain;
