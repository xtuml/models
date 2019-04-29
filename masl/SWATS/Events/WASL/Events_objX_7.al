define action Events_objX_7
input\
	Test_No:Base_Integer_Type,\
	Param_A:Base_Integer_Type,\
	Param_B:Base_Integer_Type,\
	Param_C:Base_Integer_Type,\
	Param_D:Base_Integer_Type,\
	Param_E:Base_Integer_Type,\
	Param_F:Base_Integer_Type,\
	Param_G:Base_Integer_Type,\
	Param_H:Base_Integer_Type,\
	Param_I:Base_Integer_Type,\
	Param_J:Base_Integer_Type,\
	Param_K:Base_Integer_Type,\
	Param_L:Base_Integer_Type,\
	Param_M:Base_Integer_Type,\
	Param_N:Base_Integer_Type,\
	Param_O:Base_Integer_Type,\
	Param_P:Base_Integer_Type,\
	Param_Q:Base_Integer_Type,\
	Param_R:Base_Integer_Type,\
	Param_S:Base_Integer_Type,\
	Param_T:Base_Integer_Type,\
	Param_U:Base_Integer_Type,\
	Param_V:Base_Integer_Type,\
	Param_W:Base_Integer_Type,\
	Param_X:Base_Integer_Type,\
	Param_Y:Base_Integer_Type,\
	Param_Z:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

#-------------------------------------------------------------------------
# Supertype
#-------------------------------------------------------------------------

temp = Param_A + Param_B + Param_C + Param_D + Param_E + Param_F + \
       Param_G + Param_H + Param_I + Param_J + Param_K + Param_L + \
       Param_M + Param_N + Param_O + Param_P + Param_Q + Param_R + \
       Param_S + Param_T + Param_U + Param_V + Param_W + Param_X + \
       Param_Y + Param_Z

this.ResultX = temp

#-------------------------------------------------------------------------

generate objX2:Finished(Test_No, "Lots_Of_Params", 0) to this




enddefine
