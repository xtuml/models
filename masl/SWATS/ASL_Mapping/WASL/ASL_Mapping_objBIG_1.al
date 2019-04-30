define action ASL_Mapping_objBIG_1
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# If we gete here, there is serious grief.

[] = RPT5:Test_Text[0,"Major Error"]

#$ADA_INLINE

#   with Application_Types;

#   raise Application_Types.Stop_Application;

#$END_ADAINLINE


enddefine
