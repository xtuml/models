`corrupt_model_data`
====================

Corrupt Model Data for Integrity Testing

`run_corrupt_integrity_tests.sh` is a script that runs the integrity checker
on each of the model files (.xtuml) recording actual (.actual) results and
comparing to expected (.expected) results.

`MWO_clean.xtuml` is a clean version of the MicrowaveOven.xtuml model data.
It should run through the integrity checker with no problems.

`*.expected` are the expected integrity report results.

`*.actual` are the actual integrity report results for a particular run
of the tests.  A .gitignore file is in place to prevent these from being
committed to the repository.
