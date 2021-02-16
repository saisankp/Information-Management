(: this xQuery searches for a customer with a particular length of contract and returns an output with a changed discount percentage and discount length
1. Uses the FOR clause
2. Uses the in-built function contains()
use case: receive rewards
:)

for $j in 
doc("C:\BordGais\HomeEnergy.xml")/home_energy/customer
where contains($j/payment_plan/length_of_contract, "3 Year")

return
<customer_with_changed_discount>
{$j/name}
{$j/payment_plan}
<discount status="applied">
<discount_percentage>8%</discount_percentage>
<length_of_discount>7 months</length_of_discount>
</discount>
</customer_with_changed_discount>