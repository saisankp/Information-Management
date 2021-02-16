(: this xQuery searches customer repairs for a first name and returns the customers full name, date of repair, cost of repair, repair issue, and name of the trade person, their trade, and their number and
1. Uses the in-built function contains()
2. Uses the FOR clause 
use case: repairs :)

for $j in 
doc("C:\BordGais\Repairs.xml")/repairs/client
where contains($j/name/first_name, "Rachel")
return
<customer_repair>

 {$j/name}
 
 {$j/details}

 
</customer_repair>