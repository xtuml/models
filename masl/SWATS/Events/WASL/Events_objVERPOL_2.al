define action Events_objVERPOL_2
input\
	Test:Base_Integer_Type
output

#$DESCRIPTION
This state verifies that the event was received or not received in the 
subtype or the supertype object depending upon the test being performed.

The following test create the followng results:

    Test  File    Super  Sub  Super     Sub        Verify   Verify
                  Obj    Obj  ResultA   ResultA    ResultA  ResultB
    1     001     D      E    10        10         10       10
          002
    2     003     D      E    0         20         20       20
          004
    3     005     D      E    30        0          30       30
          006
    4     007     D      E    40        0          40       0
          008
    5     009     A      B    50        0          60       0
          010
    6     011     G      H    0         60         0        60
          012
    7     013     J/K    K/L  70        70         70       70
          014

Test:           Test case identity.
File:           Indicates the scenario file used within each test case.
Super Obj:      Indicates the 'SUPERtype' object used within the test
                case.
Sub Obj:        Indicates the 'SUBtype' object used within the test case.
Super ResultA:  The attribute 'ResultA' is manipulated within the
                'SUPERtype' Object to indicate if required operation was
                successful.
Sub ResultA:    The attribute 'ResultA' is manipulated within the
                'SUBtype' Object to indicate if required operation was
                successful.
Verify ResultA: The attribute 'ResultA' is manipulated within the
                Verify_Object to indicate that the required operation was
                successful for the 'SUPERtype' object.
Verify ResultB: The attribute 'ResultB' is manipulated within the
                Verify_Object to indicate that the required operation was
                success for the 'SUBtype' object.
#$END_DESCRIPTION

#-----------------------------------------------------------
# Verify that the event was received
#-----------------------------------------------------------

#-----------------------------------------------------------
# Test 1 - This test verifies that the event was received in 
#          the supertype and then in the subtype object.
#-----------------------------------------------------------

   if Test = 1 then

      super_instanceD = find-one Object_D where ReferenceD = 1

      if super_instanceD.ResultA != 10 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUPERTYPE = 10
      endif

      sub_instanceE = find-one Object_E where ReferenceE = 1

      if sub_instanceE.ResultA != 10 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUBTYPE = 10
      endif

      # Remove the relationship between the two instances
      unlink super_instanceD R5 sub_instanceE

   endif

#-----------------------------------------------------------
# Test 2 - This test verifies that the event was received in 
#          the subtype but it is not passed onto the supertype.
#-----------------------------------------------------------

   if Test = 2 then

      super_instanceD = find-one Object_D where ReferenceD = 2

      if super_instanceD.ResultA != 0 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUPERTYPE = 20
      endif

      sub_instanceE = find-one Object_E where ReferenceE = 2
   
      if sub_instanceE.ResultA != 20 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUBTYPE = 20
      endif

      # Remove the relationship between the two instances
      unlink super_instanceD R5 sub_instanceE

   endif

#-----------------------------------------------------------
# Test 3 - This test verifies that the event was received in 
#          the supertype but it is not received in the subtype
#          since the relationship has not been formalised.
#-----------------------------------------------------------

   if Test = 3 then

      super_instanceD = find-one Object_D where ReferenceD = 3

      if super_instanceD.ResultA != 30 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUPERTYPE = 30
      endif

      sub_instanceE = find-one Object_E where ReferenceE = 3

      if sub_instanceE.ResultA != 0 then
         generate objVERPOL2:Fault() to this
      else
         this.ResultSUBTYPE = 30
      endif

   endif

#-----------------------------------------------------------
# Test 4 - This test verifies that the event was received in 
#          the supertype but it was not received in the subtype 
#          since the subtype object may not receive the event.
#-----------------------------------------------------------

#if Test = 4 then

#   super_instanceD = find-one Object_D where ReferenceD = 4
#   if super_instanceD.ResultA != 40 then
#      generate objVERPOL2:Fault() to this
#   else
#      this.ResultSUPERTYPE = 40
#   endif
#   sub_instanceE = find-one Object_E where ReferenceE = 4
#   if sub_instanceE.ResultA != 0 then
#      generate objVERPOL2:Fault() to this
#   else
#      this.ResultSUBTYPE = 40
#   endif

   #Remove the relationship between the two instances
#   unlink super_instanceD R5 sub_instanceE

#endif

#-----------------------------------------------------------
# Test 5 - This test verifies that if only the supertype 
#          object contains a state machine then the polymorphic 
#          event does not get passed onto the subtype object
#-----------------------------------------------------------

#if Test = 5 then

#   super_instanceA = find-one Object_A where ReferenceA = 5
#   if super_instanceA.ResultA != 50 then
#      generate objVERPOL2:Fault() to this
#   else
#      this.ResultSUPERTYPE = 50
#   endif

   #Remove the relationship between the two instances
#   sub_instanceB = find-one Object_B where ReferenceA = 5
#   unlink super_instanceA R3 sub_instanceB

#endif

#-----------------------------------------------------------
# Test 6 - This test verifies that if the supertype object 
#          does not contain a state machine, that an event 
#          sent to the supertype object is also passed onto 
#          the subtype object.
#-----------------------------------------------------------

#if Test = 6 then
#   sub_instanceH = find-one Object_H where ReferenceH = 6
#   if sub_instanceH.ResultA != 60 then
#      generate objVERPOL2:Fault() to this
#   else
#      this.ResultSUBTYPE = 60
#   endif
#endif

#-----------------------------------------------------------
# Test 7 - This test verifies nested supertype/subtype 
#          relationships.
#-----------------------------------------------------------

if Test = 7 then
#   sub_instanceJ = find-one Object_J where ReferenceJ = 7
#   if sub_instanceJ.ResultA = 70 then
#      sub_instanceK = find-one Object_K where ReferenceJ = 7
#      if sub_instanceK.ResultA = 70 then

#         this.ResultSUPERTYPE = 70
#         this.ResultSUBTYPE = 70

      #  sub_instanceL = find-one Object_L where ReferenceL = 7
      #   if sub_instanceL.ResultA = 70 then
      #      this.ResultSUPERTYPE = 70
      #      this.ResultSUBTYPE = 70
      #   else
      #      generate objVERPOL2:Fault() to this
      #   endif
      #else
      #   generate objVERPOL2:Fault() to this

#      endif
#   else
#      generate objVERPOL2:Fault() to this
#   endif
endif

#-----------------------------------------------------------

generate objVERPOL1:Finished() to this


enddefine
