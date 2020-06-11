//! Migrate the sub types.
state Events::SuperA.Migrate (Test : in  integer) is

[] = RPT1:Start_Test[Test, "Null Requid", "Events", "SuperA", "Multiple subtypes called"]

[] = RPT5:Test_Text[Test, "Super A Migrate state"]

#OldSubB = find-one SubB where idA = Test

OldSubB = this -> R13.SubB

# Unlink and remove any old instances of this sub type that are
# kicking around. They were only ever used in the scenario
# as faking a creation event into a Super type (such as this)
# requires associated subtypes to be defined and linked.

# Supertypes must have a subtype defined and linked.
# What we are doing here qualifies as Subtype Migration

if OldSubB != UNDEFINED then
   unlink OldSubB R13 this
else
   [] = RPT5:Test_Text[Test, "Cannot find SubB"]
endif

#OldSubC = find-one SubC where idA = Test
OldSubC = this -> R14.SubC

# Unlink and remove any old instances of this sub type that are
# kicking around. They were only ever used in the scenario
# as faking a creation event into a Super type (such as this)
# requires associated subtypes to be defined and linked.
 
if OldSubC != UNDEFINED then
   unlink OldSubC R14 this
else
   [] = RPT5:Test_Text[Test, "Cannot find SubC"]
endif

# Test subtype migration to another instance of the same object

if this.Reference_ID = 1 then

   #Create an instance of the subtype, changing value to add attribute.
   newSubB = create SubB with idA = this.idA &\
                              Value_To_Add = 10 &\
                              Current_State = 'Idle'

   #Create an instance of the subtype
   newSubC = create SubC with idA = this.idA &\
                              Value_To_Add = 11 &\
                              Current_State = 'Idle'

   link newSubB R13 this
   link newSubC R14 this


endif

if this.Reference_ID = 2 then

#   Old_SubF = find-one SubF where idA = Test

   # Old SubF is linked, so navigate to it, just to prove we can, before
   # unlinking it, and deleting it.

   Old_SubF = this -> R6.SubF

   # Unlink and remove any old instances of this sub type that are
   # kicking around. They were only ever used in the scenario
   # as faking a creation event into a Super type (such as this)
   # requires associated subtypes to be defined and linked.

   # Supertypes must have a subtype defined and linked.
   # What we are doing here qualifies as Subtype Migration

   if Old_SubF != UNDEFINED then

      unlink Old_SubF R6 this

      delete Old_SubF

      New_SubE = find-one SubE where Value_To_Add = 0

      if New_SubE != UNDEFINED then

         link New_SubE R6 this

      else

         [] = RPT5:Test_Text[Test, "Cannot find SubE"]

      endif

   else

      [] = RPT5:Test_Text[Test, "Cannot find SubF"]

   endif

   #Create an instance of the subtype, changing value to add attribute.
   newSubA = create SubA with idA = this.idA &\
                              Value_To_Add = 2 &\
                              Current_State = 'Idle'

   #Create an instance of the subtype
   newSubD = create SubD with idA = this.idA &\
                              Value_To_Add = 3 &\
                              Current_State = 'Idle'

   # Create the link to the other subtype in the family.

   link newSubA R13 this
   link newSubD R14 this



endif

generate SprA1:StartA(Test) to this




#-------------------------------------------------------------------#

