---

This work is licensed under the Creative Commons CC0 License

---

# Clean Up GPS Watch Model Graphics  
### xtUML Project Implementation Note

### 1. Abstract

[2.1] is addressing a conversion of GPS Watch into something that can be
used commonly across action language dialects (e.g. OAL, MASL).  This note
documents a pass to clean up graphics and repair broken graphics resulting
from this conversion.

### 2. Document References

<a id="2.1"></a>2.1 [10054](https://support.onefact.net/issues/10054) GPS Watch model to MASL  

### 3. Background

During the conversion of the example GPS Watch application some of the
graphics were broken.  Also, some of the graphics were recreated in non-ideal
visual configurations.  Since this model is used in many examples and demos,
it is worthwhile to make the graphics visually pleasing.

### 4. Requirements

4.1 Fix Broken Diagrams  
4.1.1 All diagrams shall open and show graphics.  
Graphics are broken in some of the informal diagrams.  These diagrams are
critical to the training course materials.  One diagram is broken in the
functional models (Location class diagram).  

4.2 Make functional diagrams "look nice".  
4.2.1 Reduce excessive white space.  
4.2.2 Scale graphical elements around label text.  
4.2.3 Scale diagrams to look decent in 4:3 and 9:6 aspect ratios.  
4.2.4 Arrange labels to be readable and not overlapping.  

### 5. Work Required

5.1 Broken Graphics  
Package by package...  
5.1.1 `GPS_Watch`  
Improve esthetics.  
5.1.2 `InformalDiagrams/Activities` (fine)  
5.1.3 `InformalDiagrams/Analysis/Start_Stop_Reset`  
Shorten life lines.  
5.1.4 `InformalDiagrams/RequirementsClarification`  
Copy the original package.  
5.1.5 `InformalDiagrams/Sequences/Start_Stop_Reset_Formalized`  
Delete this.  
5.1.6 `InformalDiagrams/UseCases` (fine)  
5.1.7 `Location/Location/Location/Location`  
Fix placement and empty boxes.  

### 6. Implementation Comments

### 7. Unit Test

7.1 Export MASL Domain  
7.1.1 Export each domain and compare results.  
7.1.2 See identical MASL.  

7.2 Export MASL Project  
7.1.1 Export the `GPS_Watch` project and compare results.  
7.1.2 See identical MASL.  

### 8. User Documentation

no changes

### 9. Code Changes

Note that the change sets for each branch are exactly the same (as expected).

<pre>
Fork/Repository:  cortlandstarrett/models
Branch1:  10054_gps_oal_cds based on 10054_gps_oal
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/GPS_Watch/GPS_Watch.xtuml                                                     |  329 ++-
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Analysis/Start_Stop_Reset/Start_Stop_Reset.xtuml            |  232 +--
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Informal_Diagrams.xtuml                                     |   36 +-
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/Overview/Overview.xtuml           | 1418 +++++++++++--
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/RequirementsClarification.xtuml   |  174 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/ActivityDiagram/ActivityDiagram.xtuml   | 2638 ++++++++++++------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/Sequence Diagram/Sequence Diagram.xtuml | 1968 +++++++++---------
 .../GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/UC01 - SimpleWorkout.xtuml    |   74 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC02 - ClearLogs/ActivityDiagram/ActivityDiagram.xtuml       | 1968 +++++++++---------
 .../gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC02 - ClearLogs/UC02 - ClearLogs.xtuml    |   56 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC03 - MultiLapWorkout/ActivityDiagram/ActivityDiagram.xtuml | 3216 ++++++++++++++---------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC03 - MultiLapWorkout/UC03 - MultiLapWorkout.xtuml          |   56 +-
 .../GPS_Watch/Informal_Diagrams/RequirementsClarification/UC04 - WorkoutWithPause/ActivityDiagram/ActivityDiagram.xtuml       | 4856 +++++++++++++++++++++----------------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC04 - WorkoutWithPause/UC04 - WorkoutWithPause.xtuml        |   56 +-
 .../Informal_Diagrams/RequirementsClarification/UC05 - AchievingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml    | 3196 ++++++++++++++---------------
 .../RequirementsClarification/UC05 - AchievingPaceOverDistanceGoal/UC05 - AchievingPaceOverDistanceGoal.xtuml                 |   74 +-
 .../Informal_Diagrams/RequirementsClarification/UC06 - AchievingHeartRateOverTimeGoal/ActivityDiagram/ActivityDiagram.xtuml   | 6772 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 .../RequirementsClarification/UC06 - AchievingHeartRateOverTimeGoal/UC06 - AchievingHeartRateOverTimeGoal.xtuml               |  350 ++++
 .../Informal_Diagrams/RequirementsClarification/UC06___AchievingHeartRateOverTimeGoal/ActivityDiagram/ActivityDiagram.xtuml   | 1115 ----------
 .../RequirementsClarification/UC06___AchievingHeartRateOverTimeGoal/UC06___AchievingHeartRateOverTimeGoal.xtuml               |   76 -
 .../Informal_Diagrams/RequirementsClarification/UC07 - FailingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml      | 4710 ++++++++++++++++++++++++++++++++++++++++++
 .../Informal_Diagrams/RequirementsClarification/UC07 - FailingPaceOverDistanceGoal/UC07 - FailingPaceOverDistanceGoal.xtuml   |  350 ++++
 .../Informal_Diagrams/RequirementsClarification/UC07___FailingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml      | 4710 ------------------------------------------
 .../Informal_Diagrams/RequirementsClarification/UC07___FailingPaceOverDistanceGoal/UC07___FailingPaceOverDistanceGoal.xtuml   |   76 -
 .../RequirementsClarification/UC08 - MultiGoalWorkoutWithFailureAndSuccess/ActivityDiagram/ActivityDiagram.xtuml              | 7275 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 .../RequirementsClarification/UC08 - MultiGoalWorkoutWithFailureAndSuccess/UC08 - MultiGoalWorkoutWithFailureAndSuccess.xtuml |  364 ++++
 .../RequirementsClarification/UC08___MultiGoalWorkoutWithFailureAndSuccess/ActivityDiagram/ActivityDiagram.xtuml              | 1203 -----------
 .../RequirementsClarification/UC08___MultiGoalWorkoutWithFailureAndSuccess/UC08___MultiGoalWorkoutWithFailureAndSuccess.xtuml |   90 -
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Sequences/Sequences.xtuml                                   |   26 +-
 .../GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Sequences/Start_Stop_Reset_Formalized/Start_Stop_Reset_Formalized.xtuml  |  266 ---
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Shared_EEs/Shared_EEs.xtuml                                                   |   24 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor.xtuml                         |   40 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor.xtuml        |   44 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/Shared/Shared.xtuml                            |   12 +-
 applications/gps/GPS/Location/models/Location/Location/Location.xtuml                                                         |   30 +-
 applications/gps/GPS/Location/models/Location/Location/Location/Location/Location.xtuml                                       |   52 +-
 applications/gps/GPS/Tracking/models/Tracking/Tracking/Shared/Shared.xtuml                                                    |   58 +-
 applications/gps/GPS/Tracking/models/Tracking/Tracking/Tracking.xtuml                                                         |   80 +-
 applications/gps/GPS/UI/models/UI/UI/Shared/Shared.xtuml                                                                      |   30 +-
 applications/gps/GPS/UI/models/UI/UI/UI.xtuml                                                                                 |   40 +-
 doc/notes/10054_gps_diagrams_int.md                                                                                           |   85 +
 41 files changed, 30750 insertions(+), 17475 deletions(-)

Branch2:  10054_gps_masl_cds based on 10054_gps_masl
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/GPS_Watch/GPS_Watch.xtuml                                                     |  329 ++-
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Analysis/Start_Stop_Reset/Start_Stop_Reset.xtuml            |  232 +--
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Informal_Diagrams.xtuml                                     |   36 +-
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/Overview/Overview.xtuml           | 1418 +++++++++++--
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/RequirementsClarification.xtuml   |  174 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/ActivityDiagram/ActivityDiagram.xtuml   | 2638 ++++++++++++------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/Sequence Diagram/Sequence Diagram.xtuml | 1968 +++++++++---------
 .../GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC01 - SimpleWorkout/UC01 - SimpleWorkout.xtuml    |   74 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC02 - ClearLogs/ActivityDiagram/ActivityDiagram.xtuml       | 1968 +++++++++---------
 .../gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC02 - ClearLogs/UC02 - ClearLogs.xtuml    |   56 +-
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC03 - MultiLapWorkout/ActivityDiagram/ActivityDiagram.xtuml | 3216 ++++++++++++++---------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC03 - MultiLapWorkout/UC03 - MultiLapWorkout.xtuml          |   56 +-
 .../GPS_Watch/Informal_Diagrams/RequirementsClarification/UC04 - WorkoutWithPause/ActivityDiagram/ActivityDiagram.xtuml       | 4856 +++++++++++++++++++++----------------------
 .../models/GPS_Watch/Informal_Diagrams/RequirementsClarification/UC04 - WorkoutWithPause/UC04 - WorkoutWithPause.xtuml        |   56 +-
 .../Informal_Diagrams/RequirementsClarification/UC05 - AchievingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml    | 3196 ++++++++++++++---------------
 .../RequirementsClarification/UC05 - AchievingPaceOverDistanceGoal/UC05 - AchievingPaceOverDistanceGoal.xtuml                 |   74 +-
 .../Informal_Diagrams/RequirementsClarification/UC06 - AchievingHeartRateOverTimeGoal/ActivityDiagram/ActivityDiagram.xtuml   | 6772 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 .../RequirementsClarification/UC06 - AchievingHeartRateOverTimeGoal/UC06 - AchievingHeartRateOverTimeGoal.xtuml               |  350 ++++
 .../Informal_Diagrams/RequirementsClarification/UC06___AchievingHeartRateOverTimeGoal/ActivityDiagram/ActivityDiagram.xtuml   | 1115 ----------
 .../RequirementsClarification/UC06___AchievingHeartRateOverTimeGoal/UC06___AchievingHeartRateOverTimeGoal.xtuml               |   76 -
 .../Informal_Diagrams/RequirementsClarification/UC07 - FailingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml      | 4710 ++++++++++++++++++++++++++++++++++++++++++
 .../Informal_Diagrams/RequirementsClarification/UC07 - FailingPaceOverDistanceGoal/UC07 - FailingPaceOverDistanceGoal.xtuml   |  350 ++++
 .../Informal_Diagrams/RequirementsClarification/UC07___FailingPaceOverDistanceGoal/ActivityDiagram/ActivityDiagram.xtuml      | 4710 ------------------------------------------
 .../Informal_Diagrams/RequirementsClarification/UC07___FailingPaceOverDistanceGoal/UC07___FailingPaceOverDistanceGoal.xtuml   |   76 -
 .../RequirementsClarification/UC08 - MultiGoalWorkoutWithFailureAndSuccess/ActivityDiagram/ActivityDiagram.xtuml              | 7275 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 .../RequirementsClarification/UC08 - MultiGoalWorkoutWithFailureAndSuccess/UC08 - MultiGoalWorkoutWithFailureAndSuccess.xtuml |  364 ++++
 .../RequirementsClarification/UC08___MultiGoalWorkoutWithFailureAndSuccess/ActivityDiagram/ActivityDiagram.xtuml              | 1203 -----------
 .../RequirementsClarification/UC08___MultiGoalWorkoutWithFailureAndSuccess/UC08___MultiGoalWorkoutWithFailureAndSuccess.xtuml |   90 -
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Sequences/Sequences.xtuml                                   |   26 +-
 .../GPS/GPS_Watch/models/GPS_Watch/Informal_Diagrams/Sequences/Start_Stop_Reset_Formalized/Start_Stop_Reset_Formalized.xtuml  |  266 ---
 applications/gps/GPS/GPS_Watch/models/GPS_Watch/Shared_EEs/Shared_EEs.xtuml                                                   |   24 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor.xtuml                         |   40 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor/HeartRateMonitor.xtuml        |   44 +-
 applications/gps/GPS/HeartRateMonitor/models/HeartRateMonitor/HeartRateMonitor/Shared/Shared.xtuml                            |   12 +-
 applications/gps/GPS/Location/models/Location/Location/Location.xtuml                                                         |   30 +-
 applications/gps/GPS/Location/models/Location/Location/Location/Location/Location.xtuml                                       |   52 +-
 applications/gps/GPS/Tracking/models/Tracking/Tracking/Shared/Shared.xtuml                                                    |   58 +-
 applications/gps/GPS/Tracking/models/Tracking/Tracking/Tracking.xtuml                                                         |   80 +-
 applications/gps/GPS/UI/models/UI/UI/Shared/Shared.xtuml                                                                      |   30 +-
 applications/gps/GPS/UI/models/UI/UI/UI.xtuml                                                                                 |   40 +-
 doc/notes/10054_gps_diagrams_int.md                                                                                           |   85 +
 41 files changed, 30750 insertions(+), 17475 deletions(-)
</pre>

### End

