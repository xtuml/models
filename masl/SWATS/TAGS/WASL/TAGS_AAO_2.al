define action TAGS_AAO_2
input\
	Value_To_Add:Base_Integer_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

# Update the results attribute to show that we got here at least.

local_data = this.Result

local_data = local_data + Value_To_Add

this.Result = local_data




enddefine
