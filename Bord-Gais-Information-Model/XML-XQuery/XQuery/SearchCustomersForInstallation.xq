(: this xQuery searches domestic and business customers by first name, and returns the county they reside in, and their account number with their full name so you can apply rewards/discounts 
1. Uses the FOR clause
2. Uses the WHERE clause to retrieve information from two or more interlinked XML documents (i.e. DomestCustomer.XML and BusinessCustomer.XML
3. Uses the in-built function contains() 
use case: receive installation :)

for $j in 
doc("C:\BordGais\DomestCustomer.xml")/DomesticCustomer_info/DomesticCustomer,
$x in
doc("C:\BordGais\BusinessCustomer.xml")/BusinessCustomer_info/BusinessCustomer
where (
 
 (:Input string of domestic customer's county :)
  contains($j/customerName/firstName, "John")
  
   and
   
   (:Input string of business customer's county :)
    contains($x/businessName, "Argos")
)

return
<Customers>
<Domestic_Customer>
{$j/customerName}
{$j/homeAddress}
{$j/Customer/Customer.accountNumber}
</Domestic_Customer>

<Business_Customer>
{$x/businessName}
{$x/businessLocation}
{$x/Customer/Customer.accountNumber}
</Business_Customer>


</Customers>

