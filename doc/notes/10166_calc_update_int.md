---

This work is licensed under the Creative Commons CC0 License

---

# MASL calculator updates
### xtUML Project Implementation Note

### 1. Abstract

There are several updates to be made to the MASL calculator model. It is a bit
out of date since things have changed in BridgePoint since the model was
introduced.

- Add the project dependencies on calculator. Remove copied in .int files from
  under the `models/` folder  
- Project setup  
- MASL compiler support  

### 2. Document References

<a id="2.1"></a>2.1 [#10166 MASL calculator updates](https://support.onefact.net/issues/10166)  
<a id="2.2"></a>2.2 [#9021 Improve mechanism for inter-domain references - Ensure .int (interface) files are provided to MASL editor](https://support.onefact.net/issues/9021)  
<a id="2.3"></a>2.3 [Calculator model (master)](https://github.com/xtuml/models/tree/master/masl/calculator)  
<a id="2.4"></a>2.4 [Calculator model (leviathan747/10166_calc_update)](https://github.com/leviathan747/models/tree/10166_calc_update/masl/calculator)  
<a id="2.5"></a>2.5 [#10169 MASL compiler issues](https://support.onefact.net/issues/10169)  

### 3. Background

The MASL calculator model was introduced in January 2018. At that time, we did
not have enough information to be able to use the MASL compiler properly. There
have also been several recent changes to the MASL support in BridgePoint (in
particular dependency management [[2.2]](#2.2) ) which change the way the model
must be setup.

### 4. Requirements

4.1 Update the calculator model to use the new dependency manager introduced in
[[2.2]](#2.2)  
4.2 Clean up the projects.  
4.3 Configure projects to build with the MASL compiler.  
4.4 Update the README with newest instructions to build and run the projects.  

### 5. Work Required

5.1 Update the `calculator` project to use the new dependency manager with
`.dependencies`. Remove the copied `.int` files.  
5.2 Remove the `calc_test` domain. This domain did not serve much of a purpose
other than stubbing out the `keypad` domain before the UI worked.  
5.3 Rename the `calc` domain to `ALU`. It was terrible having a domain called
`calc` and a project called `calculator`.  
5.4 Modify `sequence of integer` type in `ALU` to have `MASLType` as its core
type. This is the idiom for type reference types.  
5.5 Add print statements to all terminator services. This allows a user to see
the service get called when a domain is being run standalone.  
5.6 Move the old test functions from `calc_test` into `ALU` and added a test
schedule to run them. Add expected results.  
5.7 Set up `keypad`, `ALU` and `calculator` to build with CMake and the MASL
compiler. Configured launch configurations for the generated executables.  
5.8 Update `README.md` with new instructions.  

### 6. Implementation Comments

6.1 Currently this project depends on a version of the MASL compiler that is not
promoted to master yet. Some changes have been made but they are still in
progress and have not gone through the full review process. There is a note in
the `README.md` that explains this. Once those changes are complete, the README
should be updated. An issue is raised to track these changes [[2.5]](#2.5).  

6.2 Reviewers should note that the vast size of the changeset here is mostly due
to the fact that `calc` was renamed to `ALU`. This touches almost every file in
that particular project and many in `calculator` as well.  

### 7. Unit Test

7.1 Step through the build and run instructions in the `README.md` at
[[2.4]](#2.4)  

### 8. User Documentation

None

### 9. Code Changes

Fork/Repository: leviathan747/models  
Branch: 10166_calc_update  

<pre>

 doc/notes/10166_calc_update_int.md                                                                                                      |  90 ++++++++++++++++
 masl/calculator/ALU/.cproject                                                                                                           |  91 ++++++++++++++++
 masl/calculator/ALU/.externalToolBuilders/MASL compiler ALU.launch                                                                      |  13 +++
 masl/calculator/ALU/.gitignore                                                                                                          |   9 ++
 masl/calculator/ALU/.launches/ALU.launch                                                                                                |  23 ++++
 masl/calculator/ALU/.launches/ALU_test.launch                                                                                           |  23 ++++
 masl/calculator/ALU/.project                                                                                                            |  44 ++++++++
 masl/calculator/ALU/CMakeLists.txt                                                                                                      |  20 ++++
 masl/calculator/ALU/gen/.gitignore                                                                                                      |   1 +
 masl/calculator/ALU/gen/application.mark                                                                                                |  13 +++
 masl/calculator/ALU/gen/expected_results.txt                                                                                            |  30 ++++++
 masl/calculator/{calc => ALU}/gen/features.mark                                                                                         |   0
 masl/calculator/ALU/gen/generate-masl.sh                                                                                                |   6 ++
 masl/calculator/ALU/gen/test.sch                                                                                                        |   9 ++
 masl/calculator/ALU/masl/.gitignore                                                                                                     |   1 +
 masl/calculator/{calculator/models/calculator/calculator/calculator/calc.int => ALU/masl/ALU/ALU.int}                                   |   2 +-
 masl/calculator/{calc/masl/calc/calc.mod => ALU/masl/ALU/ALU.mod}                                                                       |  28 ++---
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/CALC_init.svc                                                                          |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_clearDisplay.svc                                                                  |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_displaying_error.al                                                               |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_displaying_memory_value.al                                                        |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_evaluating.al                                                                     |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_receiving_fractional_part.al                                                      |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_receiving_whole_part.al                                                           |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/DISP_toggling_sign.al                                                                  |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/MEM_reset.svc                                                                          |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/MEM_store.svc                                                                          |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/OP_evaluate.svc                                                                        |   2 +-
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/clear.svc                                                                              |   2 +-
 masl/calculator/ALU/masl/ALU/disp_error.tr                                                                                              |   4 +
 masl/calculator/ALU/masl/ALU/disp_result.tr                                                                                             |   4 +
 masl/calculator/{calc/masl/calc => ALU/masl/ALU}/key.svc                                                                                |   2 +-
 masl/calculator/ALU/masl/ALU/testcase1.scn                                                                                              |  11 ++
 masl/calculator/ALU/masl/ALU/testcase2.scn                                                                                              |  14 +++
 masl/calculator/ALU/masl/ALU/testcase3.scn                                                                                              |  15 +++
 masl/calculator/ALU/masl/ALU/testcase4.scn                                                                                              |  12 +++
 masl/calculator/{calc/models/calc/calc.xtuml => ALU/models/ALU/ALU.xtuml}                                                               |   8 +-
 masl/calculator/{calc/models/calc/calc/calc.xtuml => ALU/models/ALU/ALU/ALU.xtuml}                                                      |  16 +--
 masl/calculator/{calc/models/calc/calc/calc/calc.int => ALU/models/ALU/ALU/ALU/ALU.int}                                                 |   2 +-
 masl/calculator/{calc/models/calc/calc/calc/calc.masl => ALU/models/ALU/ALU/ALU/ALU.masl}                                               |   8 +-
 masl/calculator/{calc/models/calc/calc/calc/calc.mod => ALU/models/ALU/ALU/ALU/ALU.mod}                                                 |  30 ++++--
 masl/calculator/{calc/models/calc/calc/calc/calc.xtuml => ALU/models/ALU/ALU/ALU/ALU.xtuml}                                             |  60 +++++++----
 masl/calculator/{calc/models/calc/calc/calc/calc/calc.xtuml => ALU/models/ALU/ALU/ALU/ALU/ALU.xtuml}                                    |  28 ++---
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Calculator/Calculator.masl                              |   2 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Calculator/Calculator.xtuml                             |   4 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Display/Display.masl                                    |   2 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Display/Display.xtuml                                   |   8 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Display/InstanceStateMachine/InstanceStateMachine.masl  |  12 +--
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Display/InstanceStateMachine/InstanceStateMachine.xtuml |  52 ++++-----
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Memory/Memory.masl                                      |   4 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Memory/Memory.xtuml                                     |   8 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Operation/Operation.masl                                |   2 +-
 masl/calculator/{calc/models/calc/calc/calc/calc => ALU/models/ALU/ALU/ALU/ALU}/Operation/Operation.xtuml                               |  10 +-
 masl/calculator/{calc/models/calc/calc/calc => ALU/models/ALU/ALU/ALU}/functions/functions.masl                                         |   4 +-
 masl/calculator/{calc/models/calc/calc/calc => ALU/models/ALU/ALU/ALU}/functions/functions.xtuml                                        |  10 +-
 masl/calculator/ALU/models/ALU/ALU/ALU/testcases/testcases.masl                                                                         |  64 +++++++++++
 masl/calculator/{calc_test/models/calc_test/calc_test/calc_test => ALU/models/ALU/ALU/ALU}/testcases/testcases.xtuml                    |  52 ++++-----
 masl/calculator/{calc/models/calc/calc/Shared/calc/calc.xtuml => ALU/models/ALU/ALU/Shared/ALU/ALU.xtuml}                               |   2 +-
 masl/calculator/{calc/models/calc/calc => ALU/models/ALU/ALU}/Shared/Shared.xtuml                                                       |  25 +++--
 masl/calculator/{calc/models/calc/calc => ALU/models/ALU/ALU}/Shared/disp/disp.xtuml                                                    |   0
 masl/calculator/{calc/models/calc => ALU/models/ALU}/types/types.xtuml                                                                  |  48 ++++-----
 masl/calculator/README.md                                                                                                               | 279 ++++++++++++------------------------------------
 masl/calculator/calc/.gitignore                                                                                                         |   2 -
 masl/calculator/calc/.project                                                                                                           |  18 ----
 masl/calculator/calc/gen/application.mark                                                                                               |   5 -
 masl/calculator/calc/masl/calc/calc.int                                                                                                 |  14 ---
 masl/calculator/calc/masl/calc/disp_error.tr                                                                                            |   4 -
 masl/calculator/calc/masl/calc/disp_result.tr                                                                                           |   4 -
 masl/calculator/calc/masl/export.log                                                                                                    |   7 --
 masl/calculator/calc_test/.gitignore                                                                                                    |   2 -
 masl/calculator/calc_test/.project                                                                                                      |  18 ----
 masl/calculator/calc_test/gen/application.mark                                                                                          |   5 -
 masl/calculator/calc_test/gen/features.mark                                                                                             |   5 -
 masl/calculator/calc_test/masl/calc_test/calc_test.int                                                                                  |  14 ---
 masl/calculator/calc_test/masl/calc_test/calc_test.mod                                                                                  |  18 ----
 masl/calculator/calc_test/masl/calc_test/error.svc                                                                                      |   4 -
 masl/calculator/calc_test/masl/calc_test/keyIO_clear.tr                                                                                 |   4 -
 masl/calculator/calc_test/masl/calc_test/keyIO_key.tr                                                                                   |   4 -
 masl/calculator/calc_test/masl/calc_test/result.svc                                                                                     |   4 -
 masl/calculator/calc_test/masl/calc_test/testcase1.scn                                                                                  |  10 --
 masl/calculator/calc_test/masl/calc_test/testcase2.scn                                                                                  |  13 ---
 masl/calculator/calc_test/masl/calc_test/testcase3.scn                                                                                  |  14 ---
 masl/calculator/calc_test/masl/calc_test/testcase4.scn                                                                                  |  11 --
 masl/calculator/calc_test/masl/export.log                                                                                               |   7 --
 masl/calculator/calc_test/models/calc_test/calc_test.xtuml                                                                              |  80 --------------
 masl/calculator/calc_test/models/calc_test/calc_test/Shared/Shared.xtuml                                                                | 102 ------------------
 masl/calculator/calc_test/models/calc_test/calc_test/Shared/calc_test/calc_test.xtuml                                                   |  67 ------------
 masl/calculator/calc_test/models/calc_test/calc_test/Shared/keyIO/keyIO.xtuml                                                           |  58 ----------
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test.xtuml                                                                    | 304 ----------------------------------------------------
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/calc_test.int                                                            |  13 ---
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/calc_test.masl                                                           |  14 ---
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/calc_test.mod                                                            |  25 -----
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/calc_test.xtuml                                                          | 452 ------------------------------------------------------------------------------
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/functions/functions.masl                                                 |  14 ---
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/functions/functions.xtuml                                                | 107 -------------------
 masl/calculator/calc_test/models/calc_test/calc_test/calc_test/testcases/testcases.masl                                                 |  60 -----------
 masl/calculator/calc_test/models/calc_test/types/types.xtuml                                                                            | 907 ------------------------------------------------------------------------------------------------------------------------------------------------------------
 masl/calculator/calculator/.cproject                                                                                                    |  91 ++++++++++++++++
 masl/calculator/calculator/.dependencies                                                                                                |   2 +
 masl/calculator/calculator/.externalToolBuilders/MASL compiler calculator.launch                                                        |  15 +++
 masl/calculator/calculator/.gitignore                                                                                                   |   9 +-
 masl/calculator/calculator/.launches/calculator.launch                                                                                  |  23 ++++
 masl/calculator/calculator/.project                                                                                                     |  26 +++++
 masl/calculator/calculator/CMakeLists.txt                                                                                               |  22 ++++
 masl/calculator/calculator/gen/.gitignore                                                                                               |   1 +
 masl/calculator/calculator/gen/copy_ints.sh                                                                                             |   4 -
 masl/calculator/calculator/gen/custom.cmake                                                                                             |   4 +
 masl/calculator/calculator/gen/generate-masl.sh                                                                                         |  14 +++
 masl/calculator/calculator/masl/.gitignore                                                                                              |   1 +
 masl/calculator/calculator/masl/calculator/ALU_disp_error.tr                                                                            |   4 +
 masl/calculator/calculator/masl/calculator/ALU_disp_result.tr                                                                           |   4 +
 masl/calculator/calculator/masl/calculator/calc_disp_error.tr                                                                           |   5 -
 masl/calculator/calculator/masl/calculator/calc_disp_result.tr                                                                          |   5 -
 masl/calculator/calculator/masl/calculator/calc_test_keyIO_clear.tr                                                                     |   4 -
 masl/calculator/calculator/masl/calculator/calc_test_keyIO_key.tr                                                                       |   4 -
 masl/calculator/calculator/masl/calculator/calculator.prj                                                                               |   9 +-
 masl/calculator/calculator/masl/calculator/keypad_keyIO_clear.tr                                                                        |   2 +-
 masl/calculator/calculator/masl/calculator/keypad_keyIO_key.tr                                                                          |   2 +-
 masl/calculator/calculator/masl/export.log                                                                                              |   7 --
 masl/calculator/calculator/models/calculator/calculator/calculator.prj                                                                  |  10 +-
 masl/calculator/calculator/models/calculator/calculator/calculator.xtuml                                                                | 720 +++++++++-------------------------------------------------------------------------------------------------------------------
 masl/calculator/calculator/models/calculator/calculator/calculator/calc_test.int                                                        |  14 ---
 masl/calculator/calculator/models/calculator/calculator/calculator/calculator.masl                                                      |  24 +----
 masl/calculator/calculator/models/calculator/calculator/calculator/calculator.xtuml                                                     | 346 +++---------------------------------------------------------
 masl/calculator/calculator/models/calculator/calculator/calculator/keypad.int                                                           |  14 ---
 masl/calculator/keypad/.cproject                                                                                                        |  91 ++++++++++++++++
 masl/calculator/keypad/.externalToolBuilders/MASL compiler keypad.launch                                                                |  13 +++
 masl/calculator/keypad/.gitignore                                                                                                       |  11 +-
 masl/calculator/keypad/.launches/keypad.launch                                                                                          |  23 ++++
 masl/calculator/keypad/.project                                                                                                         |  26 +++++
 masl/calculator/keypad/CMakeLists.txt                                                                                                   |  20 ++++
 masl/calculator/keypad/gen/.gitignore                                                                                                   |   1 +
 masl/calculator/keypad/gen/custom.cmake                                                                                                 |   2 +
 masl/calculator/keypad/gen/generate-masl.sh                                                                                             |   6 ++
 masl/calculator/keypad/{masl/keypad/custom => gen}/keypad_services.cc                                                                   |   0
 masl/calculator/keypad/masl/.gitignore                                                                                                  |   1 +
 masl/calculator/keypad/masl/export.log                                                                                                  |   7 --
 masl/calculator/keypad/masl/keypad/custom/custom.cmake                                                                                  |   2 -
 masl/calculator/keypad/masl/keypad/keyIO_clear.tr                                                                                       |   2 +-
 masl/calculator/keypad/masl/keypad/keyIO_key.tr                                                                                         |   2 +-
 masl/calculator/keypad/masl/keypad/keypad.int                                                                                           |   6 ++
 masl/calculator/keypad/masl/keypad/keypad.mod                                                                                           |  14 ++-
 masl/calculator/keypad/models/keypad/keypad/keypad/functions/functions.masl                                                             |  28 -----
 masl/calculator/keypad/models/keypad/keypad/keypad/functions/functions.xtuml                                                            |  24 +++--
 masl/calculator/keypad/models/keypad/keypad/keypad/keypad.int                                                                           |   6 ++
 masl/calculator/keypad/models/keypad/keypad/keypad/keypad.masl                                                                          |   4 +-
 masl/calculator/keypad/models/keypad/keypad/keypad/keypad.mod                                                                           |  12 +++
 147 files changed, 1348 insertions(+), 3958 deletions(-)

</pre>

### End

