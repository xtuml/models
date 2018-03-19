# pei

`pei` is a test which is able to test the many permutations of associations in
xtUML. This model is implemented both in OAL and MASL. The MASL version of the
model exists in a separate branch `pei_masl`.

## Building and running the OAL version

### Running `pei` with Verifier

1. Import the `pei` model into a workspace.  
   
   Included in the project is a launch configuration for running the model in
   Verifier.

2. Switch to the xtUML Debugging perspective.  

3. Select debug configurations and run `pei_verifier`.  

### Building/running the C binary

1. Switch to the C/C++ perspective and build the project.

2. Select run configurations and run `pei`.
   
   A known Eclipse bug will cause an error to be thrown when running the
   executable via the run configuration. To run on Mac, open a terminal,
   navigate to `<models repo>/VandMC_testing/mctest/pei/bin` and execute
   `./pei`.

## Building and running the MASL version

### Prerequisites

1. The MASL version of the model is only supported on Linux.

   An Ubuntu 16.04 VM is available [here](https://s3.amazonaws.com/1f-outgoing/BridgePointDeveloper.ova).
   See [this HOWTO](https://github.com/xtuml/bridgepoint/blob/master/doc-bridgepoint/process/developer-vm-getting-started.md)
   for instructions on getting started with the VM. It is not necessary to build
   BridgePoint to continue with these instructions.  

2. Install the latest nightly build.  

   Some of the features used in this project are very new (March 2018). To
   function properly, users must install a recent version of the tool (Version:
   6.11.0, Build ID: 2018-03-16 15:50 or later).  

3. Install the MASL model compiler. 

   - Create a directory called `git` in your home directory.  
   - Clone the `masl` repository into this directory:  
     ```
     cd ~/git
     git clone https://github.com/xtuml/masl.git
     ```
   - Follow the instructions in the `README` file to build the MASL compiler.

### Building/running the C++ binary

1. Import the `pei` model into a new workspace.  

2. Import the `LOG` model into the workspace.  
   
   This model can be found at `<models repo>/masl/EEs/LOG`. This is a service
   domain that maps the `LOG` EE used in OAL to the MASL `Logger` utility
   domain.

3. Switch to the C/C++ perspective.

4. Select the `LOG` project and build.

   _Note: The `pei` model depends on the `LOG` model being built in order to
   build properly, however it is not explicitly linked in the C++ build. It is
   up to the user to assure that it is built fully before building `pei`._

5. Select the `pei` project and build.

6. Select run configurations and run `pei_transient_standalone`.  

   _Note: The executable will not exit on its own. It must be terminated by the
   user._

### Run with Inspector

1. Select run configurations and run `pei_transient_standalone_with_inspector`.  

2. In a separate terminal run:
   
   ```
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:$HOME/git/masl/install/lib
   $HOME/git/masl/install/bin/masl-inspector -p 1234
   ```

3. Explore. Any of the services in the domains can be run manually from inside
   Inspector. Double click `start_test` in the `pei` domain services tab to run
   the test from the beginning.

### Notes on editing and rebuilding

- Any time an edit is made in the MASL model, the user must run "Export MASL
  Domain" before rebuilding the project.
- All of the shared libraries and executables produced by the build are output
  in the `bin` directory at the root of the project. `.o` files are output in
  the `src` directory. Deleting the contents of the `bin` directory will cause
  the shared libraries and executables to be relinked. Deleting a `.o` file will
  cause the corresponding `.cc` file to be recompiled. This can be done in lieu
  of a full clean and can save time when troubleshooting a build.

## Differences between OAL and MASL versions

The following is the list of differences between the OAL and MASL versions of
the model:

```
 VandMC_testing/mctest/pei/.cproject                                                                     |  29 +++++--
 VandMC_testing/mctest/pei/.dependencies                                                                 |   1 +
 VandMC_testing/mctest/pei/.externalToolBuilders/MASL compiler pei.launch                                |  10 +++
 VandMC_testing/mctest/pei/.externalToolBuilders/Model Compiler.launch                                   |  10 ---
 VandMC_testing/mctest/pei/.gitignore                                                                    |   2 +
 VandMC_testing/mctest/pei/.launches/pei.launch                                                          |  31 --------
 VandMC_testing/mctest/pei/.launches/pei_transient_standalone.launch                                     |  24 ++++++
 VandMC_testing/mctest/pei/.launches/pei_transient_standalone_with_inspector.launch                      |  25 ++++++
 VandMC_testing/mctest/pei/.launches/pei_verifier.launch                                                 |  10 ---
 VandMC_testing/mctest/pei/.project                                                                      |   6 +-
 VandMC_testing/mctest/pei/bin/.gitignore                                                                |   4 +-
 VandMC_testing/mctest/pei/gen/LOG_bridge.c                                                              |  50 ------------
 VandMC_testing/mctest/pei/gen/application.mark                                                          |  29 +++++++
 VandMC_testing/mctest/pei/gen/domain.mark                                                               |   4 -
 VandMC_testing/mctest/pei/gen/features.mark                                                             |   7 ++
 VandMC_testing/mctest/pei/gen/generate-masl.sh                                                          |   3 +
 VandMC_testing/mctest/pei/gen/system.mark                                                               |   2 -
 VandMC_testing/mctest/pei/include/.gitignore                                                            |   2 +
 VandMC_testing/mctest/pei/makefile.pei                                                                  | 367 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 VandMC_testing/mctest/pei/masl/.gitignore                                                               |   1 +
 VandMC_testing/mctest/pei/masl/pei/do_creates.svc                                                       | 226 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/masl/pei/pei.int                                                              |   9 +++
 VandMC_testing/mctest/pei/masl/pei/pei.mod                                                              | 353 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/masl/pei/setup.svc                                                            |  21 +++++
 VandMC_testing/mctest/pei/masl/pei/socket_first.al                                                      |   9 +++
 VandMC_testing/mctest/pei/masl/pei/socket_second.al                                                     |   5 ++
 VandMC_testing/mctest/pei/masl/pei/socket_third.al                                                      |   5 ++
 VandMC_testing/mctest/pei/masl/pei/start_test.svc                                                       |   6 ++
 VandMC_testing/mctest/pei/masl/pei/test.svc                                                             | 472 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/masl/pei/test1.svc                                                            |  10 +++
 VandMC_testing/mctest/pei/masl/pei/test2.svc                                                            |  39 ++++++++++
 VandMC_testing/mctest/pei/masl/pei/xit.svc                                                              |   5 ++
 VandMC_testing/mctest/pei/models/pei/pei/pei/functions/functions.masl                                   | 800 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/functions/functions.xtuml                                  | 718 ++++--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.int                                                    |   9 +++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei.mod                                                    | 253 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/InstanceStateMachine/InstanceStateMachine.masl  |  28 +++++++
 VandMC_testing/mctest/pei/models/pei/pei/pei/pei/socket/InstanceStateMachine/InstanceStateMachine.xtuml |  19 ++---
 VandMC_testing/mctest/pei/src/.gitignore                                                                |   5 +-
 39 files changed, 2765 insertions(+), 844 deletions(-)
```
