state Events::Object_X.Lots_Of_Parameters (Test_No : in  integer,
                                           Param_A : in  integer,
                                           Param_B : in  integer,
                                           Param_C : in  integer,
                                           Param_D : in  integer,
                                           Param_E : in  integer,
                                           Param_F : in  integer,
                                           Param_G : in  integer,
                                           Param_H : in  integer,
                                           Param_I : in  integer,
                                           Param_J : in  integer,
                                           Param_K : in  integer,
                                           Param_L : in  integer,
                                           Param_M : in  integer,
                                           Param_N : in  integer,
                                           Param_O : in  integer,
                                           Param_P : in  integer,
                                           Param_Q : in  integer,
                                           Param_R : in  integer,
                                           Param_S : in  integer,
                                           Param_T : in  integer,
                                           Param_U : in  integer,
                                           Param_V : in  integer,
                                           Param_W : in  integer,
                                           Param_X : in  integer,
                                           Param_Y : in  integer,
                                           Param_Z : in  integer) is
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

