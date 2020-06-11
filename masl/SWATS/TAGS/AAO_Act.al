state TAGS::An_Active_Object.Act (Value_To_Add : in  integer) is
# Update the results attribute to show that we got here at least.

local_data = this.Result

local_data = local_data + Value_To_Add

this.Result = local_data

