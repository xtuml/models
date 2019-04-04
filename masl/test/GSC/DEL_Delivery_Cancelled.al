//
// UK Crown Copyright (c) 2019. All rights reserved.
//

terminal state GSC::DELIVERY.Delivery_Cancelled () is
# The customer has not pumped any fuel therefore there is
# no pending transaction to be paid.

[] = AT3:Delivery_Cancelled[]

pump = this->R3
unlink this R3 pump
delete this