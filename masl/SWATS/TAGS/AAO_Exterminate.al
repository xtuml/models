//! This state shall show that a tagged active instance can 
//! arrive at this state, and this should therefore prevent 
//! another instance of this object being created until it 
//! is deleted, or by being forced into the Expire state.
state TAGS::An_Active_Object.Exterminate () is
# Show that we got here from the 'Act' state

local_data = this.Result

local_data = local_data + 10

this.Result = local_data