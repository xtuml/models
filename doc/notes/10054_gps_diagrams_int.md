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

<pre>
Fork/Repository:  cortlandstarrett/models
Branch1:  10054_gps_oal_cds based on 10054_gps_oal
Branch2:  10054_gps_masl_cds based on 10054_gps_masl

</pre>

### End

