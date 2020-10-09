define action GSC_TRN_4
input\
	Customer_Details:Base_Text_Type
output

#$DESCRIPTION
#$END_DESCRIPTION

# Migrate pending subtype to evaded subtype. 
# Record customer details.

pending_transaction = this->R4.PENDING_TRANSACTION
unlink this R4 pending_transaction
pump = pending_transaction->R9
unlink pending_transaction R9 pump
delete pending_transaction

evaded_transaction = create EVADED_TRANSACTION with \
	Transaction_Number = this.Transaction_Number & \
	Observations = Customer_Details

this.Transaction_Type = 'Evaded'

link this R4 evaded_transaction


enddefine
