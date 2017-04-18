domain PreferredUniqueReferential is
  object Actor;
  object Appearance;
  object Film;

  relationship R1 is
    Actor unconditionally appears_in many Film,
    Film unconditionally has_cast_member many Actor
    using Appearance;

  relationship R2 is
    Actor unconditionally has_debut one Appearance,
    Appearance conditionally was_debut_for one Actor;

  object Actor is
    id            : preferred unique referential ( R2.has_debut.Appearance.actor_id) integer;
    debut_film_id : referential ( R2.has_debut.Appearance.film_id) integer;
  end object; 

  object Appearance is
    actor_id : preferred referential ( R1.has_cast_member.Actor.id) integer;
    film_id  : preferred referential ( R1.appears_in.Film.id) integer;
  end object; 

  object Film is
    id : preferred integer;
  end object; 

end domain;
