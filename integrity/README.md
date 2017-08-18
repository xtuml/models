`run_integrity_tests.sh`
========================

Clean Model Data for Integrity Testing

`run_integrity_tests.sh < integrity_tests` is a script that runs the
integrity checker on models specified in the `integrity_tests` file.
A single expected output file (`expected_results.txt`) is compared to
the single output file (`integrity_report.txt`) and differences reported.

`integrity_tests` is the input file listing the models to interrogate.

`expected_results.txt` is the expected output from the integrity checks.

`integrity_report.txt` is the default produced output file.  It is included
in a .gitignore file to prevent it from being committed to the repository.
