Life International in 1962

How many solutions are there?  Run all the way and count them.
  There is exactly 1 solution.
Can I reduce the constraints and still have only one solution?  Comment out 1 by 1 and run exhaustive.
  'The Brit lives in the red house.'  commenting this out gives 6 solutions
  'The Swede keeps dogs'  commenting this out gives at least 2 solutions
  'The Dane drinks tea'  commenting this out gives at least 2 solutions
  'the green house is on the left of the white house'
  'the green house's owner drinks coffee'
  'the person who smokes Pall Mall rears birds'
  'the owner of the yellow house smokes Dunhill'
  'the man living in the center house drinks milk'
  'the Norwegian lives in the first house'
  'the man who smokes blends lives next to the one who keeps cats'
  'the man who keeps horses lives next to the man who smokes Dunhill'
  'the owner who smokes BlueMaster drinks beer'
  'the German smokes Prince'
  'the Norwegian lives next to the blue house'
  'the man who smokes blend has a neighbor who drinks water'  still a single solution!
  I commented out each constraint rule one at a time and reran the exhaustive search...
  I found that I eliminate one constraint (and only one of them) and still produce a unique solution.
  This, 'the man who smokes blend has a neighbor who drinks water', can be eliminated.  The others are required.
Can I use constraints (relations) to reduce the search space?
  Some, yes, some, no.
  'The Brit lives in the red house.'  Yes.  4 do this easily reducing search space to 4! * 4! * 4! * 4! * 5! = 40M
  'The person who smokes Pall Mall rears birds.'  Not so easy.
  There should be a way to explore the association and multiplicity and dynamically build the permutation.
  This would like involve a model compiler that queried the model and instance data.
  There is a meta-core level recursive query against the Association subsystem.
