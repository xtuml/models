define action TAGS_AAO_1
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# Update 'Result' attribute to show that we have transitioned back here 
# from the 'act' state

local_data = this.Result 

local_data = local_data + 100

this.Result = local_data


enddefine
