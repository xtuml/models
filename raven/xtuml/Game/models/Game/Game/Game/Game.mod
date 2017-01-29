domain Game is
  object Board;
  object Card;
  object CardInPlay;
  object Deck;
  object Game;
  object Hand;
  object NormalPlay;
  object Peg;
  object Pile;
  object Play;
  object Player;
  object Score;
  object ScoringPlay;
  public type SuitType is enum ( CLUBS, HEARTS, SPADES, DIAMONDS )
  ;
  public type CardType is structure
    value: integer;     
    suit: SuitType;     
  end structure
  ;
    public service play (
        card : in CardType    );
  terminator PlayerLogic is
    private service nextPeggingPlay (
        cards : in sequence of CardType,        pile_cards : in sequence of CardType    );
    private service nextDiscard (
        cards : in sequence of CardType,        my_crib : in boolean    );
  end terminator;
  relationship R2 is Game unconditionally has one Deck,
    Deck unconditionally contains_cards_for one Game;
  relationship R3 is Game unconditionally has many Player,
    Player unconditionally plays one Game;
  relationship R4 is Game unconditionally has one Pile,
    Pile unconditionally contains_cards_for one Game;
  relationship R5 is Board unconditionally holds many Peg,
    Peg unconditionally moves_on one Board;
  relationship R6 is Player unconditionally ranked_by one Score,
    Score unconditionally ranks one Player;
  relationship R7 is Deck conditionally contains many Card,
    Card conditionally located_in one Deck;
  relationship R11 is Card conditionally represented_by one CardInPlay,
    CardInPlay unconditionally represents one Card;
  relationship R13 is Hand conditionally includes many ScoringPlay,
    ScoringPlay conditionally occurs_in one Hand;
  relationship R14 is Pile conditionally includes many ScoringPlay,
    ScoringPlay conditionally occurs_in one Pile;
  relationship R16 is Peg unconditionally moved_by one Score,
    Score unconditionally moves one Peg;
  relationship R12 is Play is_a ( NormalPlay, ScoringPlay );
  relationship R1 is Game unconditionally has one Board,
    Board unconditionally keeps_score_for one Game;
  relationship R9 is Hand conditionally contains many Card,
    Card conditionally located_in one Hand;
  relationship R8 is Pile conditionally contains many Card,
    Card conditionally located_in one Pile;
  relationship R10 is Play unconditionally made_by one Player,
    Player conditionally makes many Play
    using CardInPlay;
  relationship R15 is Score conditionally changed_by many ScoringPlay,
    ScoringPlay unconditionally changes one Score;
  object Board is
    board_id : preferred unique integer;
    game_number :   referential ( R1.keeps_score_for.Game.game_number ) integer;
  end object;
pragma id ( 1 ); 
  object Card is
    value : preferred  integer;
    suit : preferred  SuitType;
    hand_id :   referential ( R9.located_in.Hand.hand_id ) integer;
    pile_id :   referential ( R8.located_in.Pile.pile_id ) integer;
    deck_id :   referential ( R7.located_in.Deck.deck_id ) integer;
  end object;
pragma id ( 2 ); 
  object CardInPlay is
    play_id : preferred  referential ( R10.makes.Play.play_id ) integer;
    player_number : preferred  referential ( R10.made_by.Player.player_number ) integer;
    value :   referential ( R11.represents.Card.value ) integer;
    suit :   referential ( R11.represents.Card.suit ) SuitType;
  end object;
pragma id ( 3 ); 
  object Deck is
    deck_id : preferred unique integer;
    game_number :   referential ( R2.contains_cards_for.Game.game_number ) integer;
  end object;
pragma id ( 4 ); 
  object Game is
    game_number : preferred unique integer;
     state PickingFirstCrib();
     state Dealing();
     state DiscardingToCrib();
     state DiscardingToPile();
     state Scoring();
     state Pegging();
     state EndOfGame();
     event FirstCribPicked();
     event CardsDealt();
     event CribCardsDiscarded();
     event AllCardsDiscarded();
     event ScoringComplete();
     event ScoringPlayMade();
     event MaxScoreReached();
     event ContinueScoring();
     event ContinueDiscarding();
     transition is
      Non_Existent (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      PickingFirstCrib (
        FirstCribPicked => Dealing,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      Dealing (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => DiscardingToCrib,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      DiscardingToCrib (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => DiscardingToPile,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      DiscardingToPile (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Scoring,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Pegging,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      Scoring (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Dealing,
        ScoringPlayMade => Pegging,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
      Pegging (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => EndOfGame,
        ContinueScoring => Scoring,
        ContinueDiscarding => DiscardingToPile      ); 
      EndOfGame (
        FirstCribPicked => Cannot_Happen,
        CardsDealt => Cannot_Happen,
        CribCardsDiscarded => Cannot_Happen,
        AllCardsDiscarded => Cannot_Happen,
        ScoringComplete => Cannot_Happen,
        ScoringPlayMade => Cannot_Happen,
        MaxScoreReached => Cannot_Happen,
        ContinueScoring => Cannot_Happen,
        ContinueDiscarding => Cannot_Happen      ); 
    end transition;
  end object;
pragma id ( 5 ); 
  object Hand is
    hand_id : preferred unique integer;
  end object;
pragma id ( 6 ); 
  object NormalPlay is
    play_id : preferred  referential ( R12.play_id ) integer;
  end object;
pragma id ( 7 ); 
  object Peg is
    peg_id : preferred unique integer;
    board_id :   referential ( R5.moves_on.Board.board_id ) integer;
  end object;
pragma id ( 8 ); 
  object Pile is
    pile_id : preferred unique integer;
    game_number :   referential ( R4.contains_cards_for.Game.game_number ) integer;
  end object;
pragma id ( 9 ); 
  object Play is
    play_id : preferred unique integer;
  end object;
pragma id ( 10 ); 
  object Player is
    player_number : preferred unique integer;
    name :   string;
    game_number :   referential ( R3.plays.Game.game_number ) integer;
  end object;
pragma id ( 11 ); 
  object Score is
    peg_id :   referential ( R16.moves.Peg.peg_id ) integer;
    player_number : preferred  referential ( R6.ranks.Player.player_number ) integer;
  end object;
pragma id ( 12 ); 
  object ScoringPlay is
    pile_id :   referential ( R14.occurs_in.Pile.pile_id ) integer;
    hand_id :   referential ( R13.occurs_in.Hand.hand_id ) integer;
    play_id : preferred  referential ( R12.play_id ) integer;
    player_number :   referential ( R15.changes.Score.player_number ) integer;
  end object;
pragma id ( 13 ); 
end domain;
