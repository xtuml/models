`corrupt_model_data`
====================

Corrupt Model Data for Integrity Testing

`run_corrupt_integrity_tests.sh` is a script that runs the integrity checker
on each of the model files (.xtuml) recording actual (.actual) results and
comparing to expected (.expected) results.

`MWO_clean.xtuml` is a clean version of the MicrowaveOven.xtuml model data.
This model was produced by exporting MicrowaveOven from BridgePoint with
graphics and OAL turned off.  Then, the `S_SYS_PROXY` was edited to be
simple `S_SYS`.
It should run through the integrity checker with no problems.

`*.expected` are the expected integrity report results.

`*.actual` are the actual integrity report results for a particular run
of the tests.  A .gitignore file is in place to prevent these from being
committed to the repository.

It may be necessary to update these corrupt models in the future when the
metamodel changes or when the persistence version changes.  Recognize that
these models are hand-edited versions of the clean `MWO_clean.xtuml` file,
which is simply an export of MicrowaveOven.  So to update the model data,
diff `MWO_clean.xtuml` with each of the corrupt models and make the same
set of changes to a new version.

`update_expected_results.sh` is a simple script to help vimdiff the
actual and expected when updating the tests.
