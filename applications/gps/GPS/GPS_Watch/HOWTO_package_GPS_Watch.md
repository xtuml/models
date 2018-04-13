# HOWTO Package GPS Watch for the Welcome Plugin

This HOWTO lists the steps for how to prepare and package the GPS Watch
projects for inclusion in the BridgePoint welcome page plugin.

### 1. Preparation

_Note: this HOWTO is written assuming that the reader is working on a macOS
development environment_

1.1 Clone the `xtuml/models` repository. This note assumes it will be cloned
into `~/git`.  
```
cd ~/git
git clone https://github.com/xtuml/models.git
```

### 2. Packaging the OAL version of the models

2.1 Navigate to the GPS Watch models and perform a full git clean.  
```
cd ~/git/models/applications/gps/GPS
git clean -dxf
```

2.2 Build the Mac binary.  
2.2.1 Launch BridgePoint. Import `GPS_Watch`, `HeartRateMonitor`, `Location`,
`Tracking`, and `UI` into the workspace from the `models` repository.  
2.2.2 Switch to the C++ perspective. Select "Project > Build All" to build the
workspace.  
2.2.3 Navigate to `~/git/models/applications/gps/GPS/GPS_Watch`. Move `Debug` to
`Debug_Mac`. Remove everything except the `GPS_Watch` binary in `Debug_Mac`.  

2.3 Build the Linux binary.  
2.3.1 Log into a Linux VM. Launch BridgePoint. If possible, import the existing
projects from step 2.2 using shared folders. If this is not possible, clone the
`models` repository locally and import the same projects.  
2.3.2 Switch to the C++ perspective. Build only the `GPS_Watch` project by
selecting it and pressing the hammer icon (or right click > Build Project).  
2.3.3 Navigate to `GPS_Watch` project root (either in the shared folder or local
clone). Move `Debug` to `Debug_Linux`. Remove everything except the `GPS_Watch`
binary in `Debug_Linux`. If you cloned the repository locally, transfer the
entire `Debug_Linux` directory to your Mac environment and place it under the
`GPS_Watch` project alongside `Debug_Mac`.  

2.4 Build the Windows binary.  
2.4.1 Log into a Windows VM. Launch BridgePoint. If possible, import the
existing projects from step 2.2 using shared folders. If this is not possible,
clone the `models` repository locally and import the same projects.  
2.4.2 Switch to the C++ perspective. Set the active build configuration to
`Debug_Windows` by right clicking the `GPS_Watch` project > Build Configurations >
Set Active > Debug_Windows. Build only the `GPS_Watch` project by
selecting it and pressing the hammer icon (or right click > Build Project).  
2.3.3 Navigate to `GPS_Watch` project root (either in the shared folder or local
clone). Remove everything except the `GPS_Watch.exe`
binary in `Debug_Windows`. If you cloned the repository locally, transfer the
entire `Debug_Windows` directory to your Mac environment and place it under the
`GPS_Watch` project alongside `Debug_Mac` and `Debug_Linux`.  

2.5 Delete the `code_generation` directory.  
```
rm -rf ~/git/models/applications/gps/GPS/GPS_Watch/gen/code_generation
```

2.6 Create the zip archive.  
2.6.1 Back on the Mac environment, navigate to
`~/git/models/applications/gps/GPS`.  
2.6.2 Create the zip archive.  
```
zip -r GPS_Watch_OAL.zip GPS_Watch/ HeartRateMonitor/ Location/ Tracking/ UI/
```
2.6.3 Copy the zip into the BridgePoint development repository.  
```
cp GPS_Watch_OAL.zip <bprepo>/src/org.xtuml.bp.welcome/models
```

### 3. Packaging the MASL version of the models

3.1 Log into a Linux VM. The MASL model compiler is only supported on Linux.
Assure that the compiler is properly installed in `~/git/masl` (clone the
`xtuml/masl` repository and follow the README). Since you will only be working
on Linux for the MASL part, it is recommended to clone the `models` repository
locally.  
3.2 Navigate to the GPS Watch models and perform a full git clean.  
```
cd ~/git/models/applications/gps/GPS
git clean -dxf
```
3.3 Checkout the `gps_masl` branch from the `xtuml/models` repository.  
```
git checkout origin/gps_masl
```

3.4 Move the `LOG` domain.  
3.4.1 Copy the `LOG` domain from `~/git/models/masl/EEs/LOG`.  
```
cp -r ~/git/models/masl/EEs/LOG .

```
3.4.2 Open `GPS_Watch/gen/generate-masl.sh` in a text editor. On line 5, replace
the value of the `GEN_GPS_Watch_LOG_LOC` variable with `"$CWD/../LOG/masl/LOG"`.  
3.4.3 Repeat the previous step for `HeartRateMonitor`, `Location`, `Tracking`,
and `UI`.  
3.4.4 Add these changes to the git index to assure that they are not lost.  
```
git add LOG */generate-masl.sh
```

3.5 Build `GPS_Watch`  
3.5.1 Navigate to the `GPS_Watch` project root. Build the project.  
```
cd ~/git/models/applications/gps/GPS/GPS_Watch
./gen/generate-masl.sh
make install
```
This will take a long time. The next step can be done in parallel.  

3.6 Build the Java UI.  
3.6.1 Launch BridgePoint. Import only the `UI` project from
`~/git/models/applications/gps/GPS/UI`.  
3.6.2 Build the project by selecting it and pressing the hammer icon (or right
click > Build Project).  
_Note: This step can be sped up by right clicking the project > Properties >
Builders and disabling all but the Java Builder. This is an optional step. If
the reader does decide to take this step, it is important that the builders are
re-enabled before creating the zip archive_

3.7 Clean up the projects.  

Because of the nature of the MASL compiler and project set up, simply building
all projects and zipping up as done with the OAL version results in an extremely
large archive file. On the other hand, it is desirable to deliver an example
project that can be executed out of the box without need for building. To combat
this, only the `GPS_Watch` project is built along with the Java UI in the `UI`
project. Additionally, this step specifies how to safely delete unnecessary
generated artifacts while keeping the executables and dependencies and even the
generated source code for reference.

3.7.1 Add the files that _should not_ be deleted to the git index for safe
keeping. We need to keep the `GPS_Watch` executables and shared libraries, along
with the `.class` files and resources for the Java UI. We will also keep the C++
source files and headers for reference. We must use the `-f` flag to force
addition to the index since these files are ignored files.  
```
git add -f GPS_Watch/bin GPS_Watch/lib GPS_Watch/include GPS_Watch/gen/code_generation/*/src UI/bin
```
3.7.2 Execute a full git clean.  
```
git clean -dxf
```

3.8 Create the zip archive.  
3.8.1 Create the zip archive.  
```
zip -r GPS_Watch_MASL.zip GPS_Watch/ HeartRateMonitor/ LOG/ Location/ Tracking/ UI/
```
3.8.2 Copy the zip into the BridgePoint development repository.  
```
cp GPS_Watch_MASL.zip <bprepo>/src/org.xtuml.bp.welcome/models
```

