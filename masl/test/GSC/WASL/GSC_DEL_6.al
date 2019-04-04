define action GSC_DEL_6
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# Delivery completed so create a transaction.
# Inform the tank amount of fuel dispensed.

[] = TRN1:Create_Transaction[this.Time, this.Pump_Number, this.Cost]

supplying_tank = this -> R3 -> R1
generate TNK4:Fuel_Used(this.Volume_Delivered) to supplying_tank

pump = this->R3
unlink this R3 pump
delete this


enddefine
