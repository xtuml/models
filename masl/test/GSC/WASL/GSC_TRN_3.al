define action GSC_TRN_3
input
output

#$DESCRIPTION
#$END_DESCRIPTION

# Migrate pending subtype to paid subtype. Link all payments to the paid subtype.
# Calculate the number of tokens and tell the operator to issue them to
# the customer.

switch this.Transaction_Type
case 'Pending'
	pending_transaction = this->R4.PENDING_TRANSACTION
	unlink this R4 pending_transaction
	connected_pump = pending_transaction->R9
	unlink pending_transaction R9 connected_pump
	delete pending_transaction
case 'Evaded'
	evaded_transaction = this->R4.EVADED_TRANSACTION
	unlink this R4 evaded_transaction
	delete evaded_transaction
endswitch

paid_transaction = create PAID_TRANSACTION with \
	Transaction_Number = this.Transaction_Number
this.Transaction_Type = 'Paid'

link this R4 paid_transaction




enddefine
