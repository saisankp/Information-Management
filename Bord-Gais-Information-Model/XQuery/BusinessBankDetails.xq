(:This xQuery gets the bank and the IBAN of business customers.
It uses the WHERE clause to interlink the account and BusinessCustomer documents
use case :direct debit:)

for $j in doc("C:\BordGais\account.xml")/Accounts/customer

for $y in doc("C:\BordGais\BusinessCustomer.xml")/BusinessCustomer_info/BusinessCustomer

where $j/Account/account_id = $y/Customer/Customer.accountNumber

return 
<bankdetails>
{$y/businessName}
{$j/Account/bank}
<IBAN>
{data($y/Customer/@IBAN)}
</IBAN>
</bankdetails>