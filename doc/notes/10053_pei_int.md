---

This work is licensed under the Creative Commons CC0 License

---

# PEI Model to MASL
### xtUML Project Implementation Note

### 1. Abstract

Convert the PEI model to MASL.

### 2. Document References

<a id="2.1"></a>2.1 [#10053 PEI Model to MASL](https://support.onefact.net/issues/10053)  
<a id="2.2"></a>2.2 [OAL to MASL conversion document](https://docs.google.com/document/d/1vFTDOYbyc9yaUUA_QC52sDAtri9ANCglKsnS8gpKT00/edit)  
<a id="2.3"></a>2.3 [#8020 assoc_unformal manual test failure](https://support.onefact.net/issues/8020)  

### 3. Background

The PEI model is a model which is able to test the many permutations of
associations between classes in xtUML.

### 4. Requirements

4.1 A MASL and an OAL version of the PEI model shall be produced.  
4.2 The OAL and MASL versions of the model shall co-exist in the same location
in the repository in separate branches.  
4.3 The versions shall be structurally identical.  
4.3.1 Differences in the two versions of the model shall be limited to action
language differences and supporting Eclipse project files.  
4.4 The two versions of the model shall both be translatable and executable on
their respective architectures.  
4.4.1 The execution behavior of both versions shall be the same.  

### 5. Work Required

5.1 Convert the OAL model to a form which is compatible with the MASL idiom. The
steps in [[2.2]](#2.2) were followed.

5.2 Create a new branch for the MASL version of the model. Replace all OAL
actions with MASL actions.

5.2.1 Create a new MASL domain "LOG" which maps LOG EE calls to services in the
MASL Logger utility domain.

5.3 In the MASL branch, set up the project builders and run configurations to
use the appropriate MASL tools.

5.4 Build and test both branches of the model.

### 6. Implementation Comments

6.1 There is a difference in behavior between MC-3020 and Verifier when it comes
to selecting from a link instance to one side of an associative relationship.
The behavior of the MASL compiler agrees with the MC-3020 behavior. See
[[2.3]](#2.3).

### 7. Unit Test

7.1 Follow the instructions at `models/VandMC_testing/mctest/pei/README.md` to
build and run the OAL version of the model.  
7.1.1 Assure that it runs in Verifier.  
7.1.2 Assure that it runs and logs no errors when compiled with MC-3020.  

7.2 Follow the instructions at `models/VandMC_testing/mctest/pei/README.md` to
build and run the MASL version of the model.  
7.2.1 Assure that it runs and logs no errors when compiled with the MASL
compiler.  
7.2.2 Assure that Inspector can be used to connect to the process and run
manually using Inspector.  

### 8. User Documentation

None.

### 9. Code Changes

Fork/Repository: leviathan747/models  
Branch: 10053_pei_oal  

<pre>

 VandMC_testing/mctest/assoc_unformal/.cproject                                                                                                                                               | 1448 ++++++++++++-------------------
 VandMC_testing/mctest/assoc_unformal/.project                                                                                                                                                |    1 +
 VandMC_testing/mctest/assoc_unformal/assoc_unformal1.launch                                                                                                                                  |   20 +-
 VandMC_testing/mctest/assoc_unformal/gen/LOG_bridge.c                                                                                                                                        |    9 +-
 VandMC_testing/mctest/assoc_unformal/mc_out.txt                                                                                                                                              |  102 ---
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/EEs/EEs.xtuml                                                                                                                     |  118 ++-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/Shared/Shared.xtuml                                                                                                               |  111 +++
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/Shared/instrumentation/instrumentation.xtuml                                                                                      |   35 +
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/assoc_unformal.xtuml                                                                                                              |   82 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/library.xtuml => assoc_unformal/assoc_unformal.xtuml}                                                                    |   46 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library => assoc_unformal}/assoc_unformal/assoc_unformal.xtuml                                                                   |  108 +--
 .../assoc_unformal/{library/assoc_unformal/Associations Unformal/AtoD converter/AtoD converter.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/AtoD_converter/AtoD_converter.xtuml}    |   17 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/analog input/analog input.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/analog_input/analog_input.xtuml}     |   17 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/Associations Unformal.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/assoc_unformal.xtuml}     |  452 ++++------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/automobile/automobile.xtuml        |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/car/car.xtuml                      |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/connection/connection.xtuml        |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/convertible/convertible.xtuml      |   21 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/course/course.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/deal/deal.xtuml                    |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/dealer/dealer.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/device/device.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/dog/dog.xtuml                      |   15 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/dog owner/dog owner.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/dog_owner/dog_owner.xtuml}  |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/employee/employee.xtuml            |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/friend/friend.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/friendship/friendship.xtuml        |   31 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/group member/group member.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/group_member/group_member.xtuml}     |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/host/host.xtuml                    |   15 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/state/state.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/jurisdiction/jurisdiction.xtuml}    |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/license/license.xtuml              |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/marriage/marriage.xtuml            |   34 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/person/person.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/plug/plug.xtuml                    |   15 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/queue item/queue item.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/queue_item/queue_item.xtuml}             |   17 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/report line/report line.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/report_line/report_line.xtuml}         |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/sample/sample.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/sedan/sedan.xtuml                  |   18 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/socket/InstanceStateMachine/InstanceStateMachine.xtuml              |   41 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/socket/socket.xtuml                |   15 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/sports car/sports car.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/sports_car/sports_car.xtuml}             |   20 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/student/student.xtuml              |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/transmission/transmission.xtuml    |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Functions/Functions.xtuml => assoc_unformal/assoc_unformal/functions/functions.xtuml}                     |  604 ++++++-------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/library/assoc_unformal/Datatypes/Datatypes.xtuml                                                                                  |  501 -----------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/library/instrumentation/instrumentation.xtuml                                                                                     |   25 -
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/system/system.xtuml                                                                                                               |  117 +--
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/types/types.xtuml                                                                                                                 |  907 ++++++++++++++++++++
 VandMC_testing/mctest/assoc_unformal/src/.gitignore                                                                                                                                          |    3 +
 VandMC_testing/mctest/assoc_unformal/src/ARCH_bridge.c                                                                                                                                       |   32 -
 VandMC_testing/mctest/assoc_unformal/src/ARCH_bridge.h                                                                                                                                       |   25 -
 VandMC_testing/mctest/assoc_unformal/src/LOG_bridge.h                                                                                                                                        |   27 -
 VandMC_testing/mctest/assoc_unformal/src/NVS_bridge.c                                                                                                                                        |  175 ----
 VandMC_testing/mctest/assoc_unformal/src/NVS_bridge.h                                                                                                                                        |   37 -
 VandMC_testing/mctest/assoc_unformal/src/PERSIST_bridge.c                                                                                                                                    |   43 -
 VandMC_testing/mctest/assoc_unformal/src/PERSIST_bridge.h                                                                                                                                    |   26 -
 VandMC_testing/mctest/assoc_unformal/src/TIM_bridge.c                                                                                                                                        |  606 -------------
 VandMC_testing/mctest/assoc_unformal/src/TIM_bridge.h                                                                                                                                        |  150 ----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal.c                                                                                                                                    | 1978 -------------------------------------------
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal.h                                                                                                                                    |   22 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_AA_class.c                                                                                                                           |   46 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_AA_class.h                                                                                                                           |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_A_class.c                                                                                                                            |   60 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_A_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_BB_class.c                                                                                                                           |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_BB_class.h                                                                                                                           |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_B_class.c                                                                                                                            |  147 ----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_B_class.h                                                                                                                            |   69 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_C_class.c                                                                                                                            |   60 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_C_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_D_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_D_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_E_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_E_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_F_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_F_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_G_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_G_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_H_class.c                                                                                                                            |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_H_class.h                                                                                                                            |   54 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_I_class.c                                                                                                                            |   35 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_I_class.h                                                                                                                            |   52 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_J_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_J_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_K_class.c                                                                                                                            |   73 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_K_class.h                                                                                                                            |   53 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_L_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_L_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_M_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_M_class.h                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_N_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_N_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_OO_class.c                                                                                                                           |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_OO_class.h                                                                                                                           |   56 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_O_class.c                                                                                                                            |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_O_class.h                                                                                                                            |   56 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_P_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_P_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Q_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Q_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_R_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_R_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_S_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_S_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_T_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_T_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_U_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_U_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_V_class.c                                                                                                                            |   74 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_V_class.h                                                                                                                            |   61 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_W_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_W_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_X_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_X_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Y_class.c                                                                                                                            |   74 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Y_class.h                                                                                                                            |   61 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_ZZ_class.c                                                                                                                           |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_ZZ_class.h                                                                                                                           |   52 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Z_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Z_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_classes.h                                                                                                                            |  195 -----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_sys_main.c                                                                                                                           |   55 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_sys_types.h                                                                                                                          |  424 ----------
 VandMC_testing/mctest/{pei => assoc_unformal}/src/readme.txt                                                                                                                                 |    0
 VandMC_testing/mctest/assoc_unformal/src/sys_user_co.c                                                                                                                                       |  253 ------
 VandMC_testing/mctest/assoc_unformal/src/sys_user_co.h                                                                                                                                       |  294 -------
 VandMC_testing/mctest/assoc_unformal/src/sys_xtuml.c                                                                                                                                         |  679 ---------------
 VandMC_testing/mctest/assoc_unformal/src/sys_xtuml.h                                                                                                                                         |  128 ---
 VandMC_testing/mctest/pei/.cproject                                                                                                                                                          |   58 +-
 VandMC_testing/mctest/pei/.gitignore                                                                                                                                                         |    1 +
 VandMC_testing/mctest/pei/.launches/pei.launch                                                                                                                                               |   31 +
 VandMC_testing/mctest/pei/.launches/pei_verifier.launch                                                                                                                                      |   10 +
 VandMC_testing/mctest/pei/.project                                                                                                                                                           |    7 +-
 VandMC_testing/mctest/pei/README.md                                                                                                                                                          |  107 +++
 VandMC_testing/mctest/pei/bin/.gitignore                                                                                                                                                     |    1 +
 VandMC_testing/mctest/pei/gen/.gitignore                                                                                                                                                     |    1 +
 VandMC_testing/mctest/{assoc_unformal/src => pei/gen}/LOG_bridge.c                                                                                                                           |  101 ++-
 VandMC_testing/mctest/pei/gen/domain.mark                                                                                                                                                    |    4 +
 VandMC_testing/mctest/pei/gen/readme.txt                                                                                                                                                     |    1 -
 VandMC_testing/mctest/pei/gen/system.mark                                                                                                                                                    |    2 +
 VandMC_testing/mctest/pei/makefile.pei                                                                                                                                                       |   17 +
 VandMC_testing/mctest/pei/models/pei/EEs/EEs.xtuml                                                                                                                                           |  121 +++
 VandMC_testing/mctest/pei/models/pei/pei.xtuml                                                                                                                                               |   58 +-
 VandMC_testing/mctest/pei/models/pei/pei/External Entities/External Entities.xtuml                                                                                                           |  662 ---------------
 VandMC_testing/mctest/pei/models/pei/pei/Functions/Functions.xtuml                                                                                                                           |  746 ----------------
 VandMC_testing/mctest/pei/models/pei/pei/Functions/Functions__test.oal_err                                                                                                                   |  Bin 395 -> 0 bytes
 VandMC_testing/mctest/pei/models/pei/pei/{Datatypes/Datatypes.xtuml => Shared/Shared.xtuml}                                                                                                  |   42 +-
 VandMC_testing/mctest/pei/models/pei/pei/Shared/instrumentation/instrumentation.xtuml                                                                                                        |   35 +
 VandMC_testing/mctest/pei/models/pei/pei/classes/A1/A1.xtuml                                                                                                                                 |  124 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/B1/B1.xtuml                                                                                                                                 |   91 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/B1/InstanceStateMachine/InstanceStateMachine.xtuml                                                                                          |  651 --------------
 VandMC_testing/mctest/pei/models/pei/pei/classes/CM/CM.xtuml                                                                                                                                 |  106 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/D1/D1.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/EM/EM.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/FM/FM.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/G1AMM/G1AMM.xtuml                                                                                                                           |  162 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/H1/H1.xtuml                                                                                                                                 |  102 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Isuper/Isuper.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Jsub/Jsub.xtuml                                                                                                                             |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Ksubsuper/Ksubsuper.xtuml                                                                                                                   |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Lsub/Lsub.xtuml                                                                                                                             |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Orasym/Orasym.xtuml                                                                                                                         |  120 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Paone/Paone.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Qaoth/Qaoth.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Rassr11/Rassr11.xtuml                                                                                                                       |  182 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/Saone/Saone.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Taoth/Taoth.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Uassr1M/Uassr1M.xtuml                                                                                                                       |  187 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/classes.xtuml                                                                                                                               | 4725 -----------------------------------------------------------------------------------------------------
 VandMC_testing/mctest/pei/models/pei/pei/classes/deal/deal.xtuml                                                                                                                             |  166 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/dealer/dealer.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/employee/employee.xtuml                                                                                                                     |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/friend/friend.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/friendship/friendship.xtuml                                                                                                                 |  171 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/marriage/marriage.xtuml                                                                                                                     |  183 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/person/person.xtuml                                                                                                                         |   55 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/report_line/report_line.xtuml                                                                                                               |  176 ----
 VandMC_testing/mctest/pei/models/pei/pei/pei.xtuml                                                                                                                                           |  187 ++--
 VandMC_testing/mctest/pei/models/pei/pei/pei/Datatypes/Datatypes.xtuml                                                                                                                       |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/EEs/EEs.xtuml                                                                                                                                   |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/classes/classes.xtuml                                                                                                                           |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/functions/functions.xtuml                                                                                                                       |  809 +++++++++++++++++-
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.xtuml                                                                                                                                       |  196 +++--
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/AtoD_converter/AtoD_converter.xtuml                                                                                                         |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/analog_input/analog_input.xtuml                                                                                                             |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/automobile/automobile.xtuml                                                                                                                 |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/car/car.xtuml                                                                                                                               |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/connection/connection.xtuml                                                                                                                 |  162 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/convertible/convertible.xtuml                                                                                                               |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/deal/deal.xtuml                                                                                                                             |  176 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dealer/dealer.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/device/device.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dog/dog.xtuml                                                                                                                               |  106 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dog_owner/dog_owner.xtuml                                                                                                                   |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/employee/employee.xtuml                                                                                                                     |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/friend/friend.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/friendship/friendship.xtuml                                                                                                                 |  171 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/group_member/group_member.xtuml                                                                                                             |  120 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/host/host.xtuml                                                                                                                             |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/jurisdiction/jurisdiction.xtuml                                                                                                             |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/license/license.xtuml                                                                                                                       |  182 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/marriage/marriage.xtuml                                                                                                                     |  183 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/pei.xtuml                                                                                                                                   | 4728 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/person/person.xtuml                                                                                                                         |   55 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/plug/plug.xtuml                                                                                                                             |  124 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/report_line/report_line.xtuml                                                                                                               |  176 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sample/sample.xtuml                                                                                                                         |  187 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sedan/sedan.xtuml                                                                                                                           |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/InstanceStateMachine/InstanceStateMachine.xtuml                                                                                      |  651 ++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/socket.xtuml                                                                                                                         |   91 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sports_car/sports_car.xtuml                                                                                                                 |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/transmission/transmission.xtuml                                                                                                             |  102 +++
 VandMC_testing/mctest/pei/models/pei/types/types.xtuml                                                                                                                                       |  907 ++++++++++++++++++++
 VandMC_testing/mctest/pei/src/.gitignore                                                                                                                                                     |    3 +
 doc/notes/10053_pei_int.md                                                                                                                                                                   |   92 ++
 masl/EEs/LOG/.cproject                                                                                                                                                                       |   94 +++
 masl/EEs/LOG/.dependencies                                                                                                                                                                   |    1 +
 masl/EEs/LOG/.externalToolBuilders/MASL compiler LOG.launch                                                                                                                                  |   10 +
 masl/EEs/LOG/.gitignore                                                                                                                                                                      |    3 +
 masl/EEs/LOG/.project                                                                                                                                                                        |   44 +
 masl/EEs/LOG/bin/.gitignore                                                                                                                                                                  |    1 +
 masl/EEs/LOG/gen/.gitignore                                                                                                                                                                  |    1 +
 masl/EEs/LOG/gen/generate-masl.sh                                                                                                                                                            |    2 +
 masl/EEs/LOG/include/.gitignore                                                                                                                                                              |    2 +
 masl/EEs/LOG/makefile.LOG                                                                                                                                                                    |   85 ++
 masl/EEs/LOG/masl/.gitignore                                                                                                                                                                 |    1 +
 masl/EEs/LOG/masl/LOG/LOG.int                                                                                                                                                                |    8 +
 masl/EEs/LOG/masl/LOG/LOG.mod                                                                                                                                                                |    8 +
 masl/EEs/LOG/masl/LOG/LogFailure.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/masl/LOG/LogInfo.svc                                                                                                                                                            |    4 +
 masl/EEs/LOG/masl/LOG/LogInteger.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/masl/LOG/LogSuccess.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/models/LOG/LOG.xtuml                                                                                                                                                            |   80 ++
 masl/EEs/LOG/models/LOG/LOG/LOG.xtuml                                                                                                                                                        |  199 +++++
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.int                                                                                                                                                      |   10 +
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.mod                                                                                                                                                      |   10 +
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.xtuml                                                                                                                                                    |  300 +++++++
 masl/EEs/LOG/models/LOG/LOG/LOG/functions/functions.masl                                                                                                                                     |   28 +
 masl/EEs/LOG/models/LOG/LOG/LOG/functions/functions.xtuml                                                                                                                                    |  157 ++++
 masl/EEs/LOG/models/LOG/LOG/Shared/LOG/LOG.xtuml                                                                                                                                             |  113 +++
 masl/EEs/LOG/models/LOG/LOG/Shared/Shared.xtuml                                                                                                                                              |   78 ++
 masl/EEs/LOG/models/LOG/types/types.xtuml                                                                                                                                                    |  907 ++++++++++++++++++++
 masl/EEs/LOG/src/.gitignore                                                                                                                                                                  |    4 +
 masl/EEs/LOG/utils/Format.int                                                                                                                                                                |  359 ++++++++
 masl/EEs/LOG/utils/Logger.int                                                                                                                                                                |   36 +
 245 files changed, 16268 insertions(+), 20948 deletions(-)

</pre>

Fork/Repository: leviathan747/models  
Branch: 10053_pei_masl  

<pre>

 VandMC_testing/mctest/assoc_unformal/.cproject                                                                                                                                               | 1448 ++++++++++++-------------------
 VandMC_testing/mctest/assoc_unformal/.project                                                                                                                                                |    1 +
 VandMC_testing/mctest/assoc_unformal/assoc_unformal1.launch                                                                                                                                  |   20 +-
 VandMC_testing/mctest/assoc_unformal/gen/LOG_bridge.c                                                                                                                                        |    9 +-
 VandMC_testing/mctest/assoc_unformal/mc_out.txt                                                                                                                                              |  102 ---
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/EEs/EEs.xtuml                                                                                                                     |  118 ++-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/Shared/Shared.xtuml                                                                                                               |  111 +++
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/Shared/instrumentation/instrumentation.xtuml                                                                                      |   35 +
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/assoc_unformal.xtuml                                                                                                              |   82 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/library.xtuml => assoc_unformal/assoc_unformal.xtuml}                                                                    |   46 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library => assoc_unformal}/assoc_unformal/assoc_unformal.xtuml                                                                   |  108 +--
 .../assoc_unformal/{library/assoc_unformal/Associations Unformal/AtoD converter/AtoD converter.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/AtoD_converter/AtoD_converter.xtuml}    |   17 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/analog input/analog input.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/analog_input/analog_input.xtuml}     |   17 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/Associations Unformal.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/assoc_unformal.xtuml}     |  452 ++++------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/automobile/automobile.xtuml        |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/car/car.xtuml                      |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/connection/connection.xtuml        |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/convertible/convertible.xtuml      |   21 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/course/course.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/deal/deal.xtuml                    |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/dealer/dealer.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/device/device.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/dog/dog.xtuml                      |   15 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/dog owner/dog owner.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/dog_owner/dog_owner.xtuml}  |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/employee/employee.xtuml            |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/friend/friend.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/friendship/friendship.xtuml        |   31 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/group member/group member.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/group_member/group_member.xtuml}     |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/host/host.xtuml                    |   15 +-
 .../assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal/state/state.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/jurisdiction/jurisdiction.xtuml}    |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/license/license.xtuml              |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/marriage/marriage.xtuml            |   34 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/person/person.xtuml                |   18 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/plug/plug.xtuml                    |   15 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/queue item/queue item.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/queue_item/queue_item.xtuml}             |   17 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/report line/report line.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/report_line/report_line.xtuml}         |   17 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/sample/sample.xtuml                |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/sedan/sedan.xtuml                  |   18 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/socket/InstanceStateMachine/InstanceStateMachine.xtuml              |   41 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/socket/socket.xtuml                |   15 +-
 .../models/assoc_unformal/{library/assoc_unformal/Associations Unformal/sports car/sports car.xtuml => assoc_unformal/assoc_unformal/assoc_unformal/sports_car/sports_car.xtuml}             |   20 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/student/student.xtuml              |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Associations Unformal => assoc_unformal/assoc_unformal/assoc_unformal}/transmission/transmission.xtuml    |   15 +-
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/{library/assoc_unformal/Functions/Functions.xtuml => assoc_unformal/assoc_unformal/functions/functions.xtuml}                     |  604 ++++++-------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/library/assoc_unformal/Datatypes/Datatypes.xtuml                                                                                  |  501 -----------
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/library/instrumentation/instrumentation.xtuml                                                                                     |   25 -
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/system/system.xtuml                                                                                                               |  117 +--
 VandMC_testing/mctest/assoc_unformal/models/assoc_unformal/types/types.xtuml                                                                                                                 |  907 ++++++++++++++++++++
 VandMC_testing/mctest/assoc_unformal/src/.gitignore                                                                                                                                          |    3 +
 VandMC_testing/mctest/assoc_unformal/src/ARCH_bridge.c                                                                                                                                       |   32 -
 VandMC_testing/mctest/assoc_unformal/src/ARCH_bridge.h                                                                                                                                       |   25 -
 VandMC_testing/mctest/assoc_unformal/src/LOG_bridge.c                                                                                                                                        |   51 --
 VandMC_testing/mctest/assoc_unformal/src/LOG_bridge.h                                                                                                                                        |   27 -
 VandMC_testing/mctest/assoc_unformal/src/NVS_bridge.c                                                                                                                                        |  175 ----
 VandMC_testing/mctest/assoc_unformal/src/NVS_bridge.h                                                                                                                                        |   37 -
 VandMC_testing/mctest/assoc_unformal/src/PERSIST_bridge.c                                                                                                                                    |   43 -
 VandMC_testing/mctest/assoc_unformal/src/PERSIST_bridge.h                                                                                                                                    |   26 -
 VandMC_testing/mctest/assoc_unformal/src/TIM_bridge.c                                                                                                                                        |  606 -------------
 VandMC_testing/mctest/assoc_unformal/src/TIM_bridge.h                                                                                                                                        |  150 ----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal.c                                                                                                                                    | 1978 -------------------------------------------
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal.h                                                                                                                                    |   22 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_AA_class.c                                                                                                                           |   46 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_AA_class.h                                                                                                                           |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_A_class.c                                                                                                                            |   60 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_A_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_BB_class.c                                                                                                                           |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_BB_class.h                                                                                                                           |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_B_class.c                                                                                                                            |  147 ----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_B_class.h                                                                                                                            |   69 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_C_class.c                                                                                                                            |   60 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_C_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_D_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_D_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_E_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_E_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_F_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_F_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_G_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_G_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_H_class.c                                                                                                                            |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_H_class.h                                                                                                                            |   54 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_I_class.c                                                                                                                            |   35 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_I_class.h                                                                                                                            |   52 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_J_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_J_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_K_class.c                                                                                                                            |   73 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_K_class.h                                                                                                                            |   53 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_L_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_L_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_M_class.c                                                                                                                            |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_M_class.h                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_N_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_N_class.h                                                                                                                            |   43 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_OO_class.c                                                                                                                           |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_OO_class.h                                                                                                                           |   56 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_O_class.c                                                                                                                            |   64 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_O_class.h                                                                                                                            |   56 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_P_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_P_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Q_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Q_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_R_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_R_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_S_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_S_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_T_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_T_class.h                                                                                                                            |   41 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_U_class.c                                                                                                                            |   51 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_U_class.h                                                                                                                            |   44 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_V_class.c                                                                                                                            |   74 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_V_class.h                                                                                                                            |   61 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_W_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_W_class.h                                                                                                                            |   42 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_X_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_X_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Y_class.c                                                                                                                            |   74 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Y_class.h                                                                                                                            |   61 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_ZZ_class.c                                                                                                                           |   70 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_ZZ_class.h                                                                                                                           |   52 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Z_class.c                                                                                                                            |   32 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_Z_class.h                                                                                                                            |   45 -
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_classes.h                                                                                                                            |  195 -----
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_sys_main.c                                                                                                                           |   55 --
 VandMC_testing/mctest/assoc_unformal/src/assoc_unformal_sys_types.h                                                                                                                          |  424 ----------
 VandMC_testing/mctest/{pei => assoc_unformal}/src/readme.txt                                                                                                                                 |    0
 VandMC_testing/mctest/assoc_unformal/src/sys_user_co.c                                                                                                                                       |  253 ------
 VandMC_testing/mctest/assoc_unformal/src/sys_user_co.h                                                                                                                                       |  294 -------
 VandMC_testing/mctest/assoc_unformal/src/sys_xtuml.c                                                                                                                                         |  679 ---------------
 VandMC_testing/mctest/assoc_unformal/src/sys_xtuml.h                                                                                                                                         |  128 ---
 VandMC_testing/mctest/pei/.cproject                                                                                                                                                          |   87 +-
 VandMC_testing/mctest/pei/.dependencies                                                                                                                                                      |    1 +
 VandMC_testing/mctest/pei/.externalToolBuilders/MASL compiler pei.launch                                                                                                                     |   10 +
 VandMC_testing/mctest/pei/.externalToolBuilders/Model Compiler.launch                                                                                                                        |   10 -
 VandMC_testing/mctest/pei/.gitignore                                                                                                                                                         |    3 +
 VandMC_testing/mctest/pei/.launches/pei_transient_standalone.launch                                                                                                                          |   24 +
 VandMC_testing/mctest/pei/.launches/pei_transient_standalone_with_inspector.launch                                                                                                           |   25 +
 VandMC_testing/mctest/pei/.project                                                                                                                                                           |   11 +-
 VandMC_testing/mctest/pei/README.md                                                                                                                                                          |  107 +++
 VandMC_testing/mctest/pei/bin/.gitignore                                                                                                                                                     |    3 +
 VandMC_testing/mctest/pei/gen/.gitignore                                                                                                                                                     |    1 +
 VandMC_testing/mctest/pei/gen/application.mark                                                                                                                                               |   29 +
 VandMC_testing/mctest/pei/gen/features.mark                                                                                                                                                  |    7 +
 VandMC_testing/mctest/pei/gen/generate-masl.sh                                                                                                                                               |    3 +
 VandMC_testing/mctest/pei/gen/readme.txt                                                                                                                                                     |    1 -
 VandMC_testing/mctest/pei/include/.gitignore                                                                                                                                                 |    2 +
 VandMC_testing/mctest/pei/makefile.pei                                                                                                                                                       |  364 ++++++++
 VandMC_testing/mctest/pei/masl/.gitignore                                                                                                                                                    |    1 +
 VandMC_testing/mctest/pei/masl/pei/do_creates.svc                                                                                                                                            |  226 +++++
 VandMC_testing/mctest/pei/masl/pei/pei.int                                                                                                                                                   |    9 +
 VandMC_testing/mctest/pei/masl/pei/pei.mod                                                                                                                                                   |  353 ++++++++
 VandMC_testing/mctest/pei/masl/pei/setup.svc                                                                                                                                                 |   21 +
 VandMC_testing/mctest/pei/masl/pei/socket_first.al                                                                                                                                           |    9 +
 VandMC_testing/mctest/pei/masl/pei/socket_second.al                                                                                                                                          |    5 +
 VandMC_testing/mctest/pei/masl/pei/socket_third.al                                                                                                                                           |    5 +
 VandMC_testing/mctest/pei/masl/pei/start_test.svc                                                                                                                                            |    6 +
 VandMC_testing/mctest/pei/masl/pei/test.svc                                                                                                                                                  |  472 +++++++++++
 VandMC_testing/mctest/pei/masl/pei/test1.svc                                                                                                                                                 |   10 +
 VandMC_testing/mctest/pei/masl/pei/test2.svc                                                                                                                                                 |   39 +
 VandMC_testing/mctest/pei/masl/pei/xit.svc                                                                                                                                                   |    5 +
 VandMC_testing/mctest/pei/models/pei/EEs/EEs.xtuml                                                                                                                                           |  121 +++
 VandMC_testing/mctest/pei/models/pei/pei.xtuml                                                                                                                                               |   58 +-
 VandMC_testing/mctest/pei/models/pei/pei/External Entities/External Entities.xtuml                                                                                                           |  662 ---------------
 VandMC_testing/mctest/pei/models/pei/pei/Functions/Functions.xtuml                                                                                                                           |  746 ----------------
 VandMC_testing/mctest/pei/models/pei/pei/Functions/Functions__test.oal_err                                                                                                                   |  Bin 395 -> 0 bytes
 VandMC_testing/mctest/pei/models/pei/pei/{Datatypes/Datatypes.xtuml => Shared/Shared.xtuml}                                                                                                  |   42 +-
 VandMC_testing/mctest/pei/models/pei/pei/Shared/instrumentation/instrumentation.xtuml                                                                                                        |   35 +
 VandMC_testing/mctest/pei/models/pei/pei/classes/A1/A1.xtuml                                                                                                                                 |  124 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/B1/B1.xtuml                                                                                                                                 |   91 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/B1/InstanceStateMachine/InstanceStateMachine.xtuml                                                                                          |  651 --------------
 VandMC_testing/mctest/pei/models/pei/pei/classes/CM/CM.xtuml                                                                                                                                 |  106 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/D1/D1.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/EM/EM.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/FM/FM.xtuml                                                                                                                                 |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/G1AMM/G1AMM.xtuml                                                                                                                           |  162 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/H1/H1.xtuml                                                                                                                                 |  102 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Isuper/Isuper.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Jsub/Jsub.xtuml                                                                                                                             |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Ksubsuper/Ksubsuper.xtuml                                                                                                                   |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Lsub/Lsub.xtuml                                                                                                                             |  129 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Orasym/Orasym.xtuml                                                                                                                         |  120 ---
 VandMC_testing/mctest/pei/models/pei/pei/classes/Paone/Paone.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Qaoth/Qaoth.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Rassr11/Rassr11.xtuml                                                                                                                       |  182 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/Saone/Saone.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Taoth/Taoth.xtuml                                                                                                                           |   80 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/Uassr1M/Uassr1M.xtuml                                                                                                                       |  187 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/classes.xtuml                                                                                                                               | 4725 -----------------------------------------------------------------------------------------------------
 VandMC_testing/mctest/pei/models/pei/pei/classes/deal/deal.xtuml                                                                                                                             |  166 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/dealer/dealer.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/employee/employee.xtuml                                                                                                                     |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/friend/friend.xtuml                                                                                                                         |   73 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/friendship/friendship.xtuml                                                                                                                 |  171 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/marriage/marriage.xtuml                                                                                                                     |  183 ----
 VandMC_testing/mctest/pei/models/pei/pei/classes/person/person.xtuml                                                                                                                         |   55 --
 VandMC_testing/mctest/pei/models/pei/pei/classes/report_line/report_line.xtuml                                                                                                               |  176 ----
 VandMC_testing/mctest/pei/models/pei/pei/pei.xtuml                                                                                                                                           |  187 ++--
 VandMC_testing/mctest/pei/models/pei/pei/pei/Datatypes/Datatypes.xtuml                                                                                                                       |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/EEs/EEs.xtuml                                                                                                                                   |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/classes/classes.xtuml                                                                                                                           |   68 --
 VandMC_testing/mctest/pei/models/pei/pei/pei/functions/functions.masl                                                                                                                        |  800 ++++++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/functions/functions.xtuml                                                                                                                       |  119 ++-
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.int                                                                                                                                         |    9 +
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.mod                                                                                                                                         |  253 ++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.xtuml                                                                                                                                       |  196 +++--
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/AtoD_converter/AtoD_converter.xtuml                                                                                                         |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/analog_input/analog_input.xtuml                                                                                                             |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/automobile/automobile.xtuml                                                                                                                 |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/car/car.xtuml                                                                                                                               |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/connection/connection.xtuml                                                                                                                 |  162 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/convertible/convertible.xtuml                                                                                                               |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/deal/deal.xtuml                                                                                                                             |  176 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dealer/dealer.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/device/device.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dog/dog.xtuml                                                                                                                               |  106 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/dog_owner/dog_owner.xtuml                                                                                                                   |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/employee/employee.xtuml                                                                                                                     |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/friend/friend.xtuml                                                                                                                         |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/friendship/friendship.xtuml                                                                                                                 |  171 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/group_member/group_member.xtuml                                                                                                             |  120 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/host/host.xtuml                                                                                                                             |   73 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/jurisdiction/jurisdiction.xtuml                                                                                                             |   80 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/license/license.xtuml                                                                                                                       |  182 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/marriage/marriage.xtuml                                                                                                                     |  183 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/pei.xtuml                                                                                                                                   | 4728 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/person/person.xtuml                                                                                                                         |   55 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/plug/plug.xtuml                                                                                                                             |  124 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/report_line/report_line.xtuml                                                                                                               |  176 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sample/sample.xtuml                                                                                                                         |  187 ++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sedan/sedan.xtuml                                                                                                                           |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/InstanceStateMachine/InstanceStateMachine.masl                                                                                       |   28 +
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/InstanceStateMachine/InstanceStateMachine.xtuml                                                                                      |  644 ++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/socket.xtuml                                                                                                                         |   91 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/sports_car/sports_car.xtuml                                                                                                                 |  129 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/transmission/transmission.xtuml                                                                                                             |  102 +++
 VandMC_testing/mctest/pei/models/pei/types/types.xtuml                                                                                                                                       |  907 ++++++++++++++++++++
 VandMC_testing/mctest/pei/src/.gitignore                                                                                                                                                     |    4 +
 doc/notes/10053_pei_int.md                                                                                                                                                                   |  339 ++++++++
 masl/EEs/LOG/.cproject                                                                                                                                                                       |   94 +++
 masl/EEs/LOG/.dependencies                                                                                                                                                                   |    1 +
 masl/EEs/LOG/.externalToolBuilders/MASL compiler LOG.launch                                                                                                                                  |   10 +
 masl/EEs/LOG/.gitignore                                                                                                                                                                      |    3 +
 masl/EEs/LOG/.project                                                                                                                                                                        |   44 +
 masl/EEs/LOG/bin/.gitignore                                                                                                                                                                  |    1 +
 masl/EEs/LOG/gen/.gitignore                                                                                                                                                                  |    1 +
 masl/EEs/LOG/gen/generate-masl.sh                                                                                                                                                            |    2 +
 masl/EEs/LOG/include/.gitignore                                                                                                                                                              |    2 +
 masl/EEs/LOG/makefile.LOG                                                                                                                                                                    |   85 ++
 masl/EEs/LOG/masl/.gitignore                                                                                                                                                                 |    1 +
 masl/EEs/LOG/masl/LOG/LOG.int                                                                                                                                                                |    8 +
 masl/EEs/LOG/masl/LOG/LOG.mod                                                                                                                                                                |    8 +
 masl/EEs/LOG/masl/LOG/LogFailure.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/masl/LOG/LogInfo.svc                                                                                                                                                            |    4 +
 masl/EEs/LOG/masl/LOG/LogInteger.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/masl/LOG/LogSuccess.svc                                                                                                                                                         |    4 +
 masl/EEs/LOG/models/LOG/LOG.xtuml                                                                                                                                                            |   80 ++
 masl/EEs/LOG/models/LOG/LOG/LOG.xtuml                                                                                                                                                        |  199 +++++
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.int                                                                                                                                                      |   10 +
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.mod                                                                                                                                                      |   10 +
 masl/EEs/LOG/models/LOG/LOG/LOG/LOG.xtuml                                                                                                                                                    |  300 +++++++
 masl/EEs/LOG/models/LOG/LOG/LOG/functions/functions.masl                                                                                                                                     |   28 +
 masl/EEs/LOG/models/LOG/LOG/LOG/functions/functions.xtuml                                                                                                                                    |  157 ++++
 masl/EEs/LOG/models/LOG/LOG/Shared/LOG/LOG.xtuml                                                                                                                                             |  113 +++
 masl/EEs/LOG/models/LOG/LOG/Shared/Shared.xtuml                                                                                                                                              |   78 ++
 masl/EEs/LOG/models/LOG/types/types.xtuml                                                                                                                                                    |  907 ++++++++++++++++++++
 masl/EEs/LOG/src/.gitignore                                                                                                                                                                  |    4 +
 masl/EEs/LOG/utils/Format.int                                                                                                                                                                |  359 ++++++++
 masl/EEs/LOG/utils/Logger.int                                                                                                                                                                |   36 +
 267 files changed, 18452 insertions(+), 20964 deletions(-)

</pre>

### End

