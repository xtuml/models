define action GSC_DEL_5
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# A unit of petrol has been delivered. 
# Update the volume delivered and current cost. 

new_volume = this.Volume_Delivered + 0.01
this.Volume_Delivered = new_volume

grade = this -> R3 -> R1 -> R2
unit_price = grade.Unit_Price
current_cost = this.Cost
new_cost = current_cost + unit_price * 0.01
this.Cost = new_cost


enddefine
