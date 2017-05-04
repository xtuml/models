domain DuplicateDescription is
  object Actor;
  object Appearance;
  object Film;

  relationship R1 is
    Actor conditionally appears_in many Film,
    Film conditionally has_cast_member many Actor
    using Appearance;

  relationship R2 is
    Actor conditionally has_debut one Appearance,
    Appearance conditionally was_debut_for one Actor;

  relationship R3 is
    Appearance conditionally next_appeared_in one Appearance,
    Appearance conditionally previously_appeared_in one Appearance;

  object Actor is
    name            : preferred string;

   //! We really should merge this with name or our debut appearance might be by someone else
   debut_actor_name :  referential ( R2.has_debut.Appearance.actor_name) string;
   debut_film_name : referential ( R2.has_debut.Appearance.film_name) string;
  end object; 

  object Appearance is
    actor_name : preferred referential ( R1.has_cast_member.Actor.name, R3.next_appeared_in.Appearance.actor_name) string;
    film_name  : preferred referential ( R1.appears_in.Film.name) string;
    next_film : referential (R3.next_appeared_in.Appearance.film_name) string;
  end object; 

  object Film is
    name : preferred string;
  end object; 

end domain;
