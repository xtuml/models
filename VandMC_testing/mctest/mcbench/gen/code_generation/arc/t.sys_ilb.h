/* These routines provide a means to safely receive calls from interrupt
   handlers or other tasks/threads/contexts.  */
void * ${te_ilb.interleave_bridge}( void (vfp)(void) );
void ${te_ilb.interleave_bridge_done}( void );
bool ${te_ilb.dispatch}( void );
void * ${te_ilb.get_data}( void );
