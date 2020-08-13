define action GSC_DEL_8
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# The customer has not pumped any fuel therefore there is
# no pending transaction to be paid.

[] = AT3:Delivery_Cancelled[]

pump = this->R3
unlink this R3 pump
delete this


enddefine
