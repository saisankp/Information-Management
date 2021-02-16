(: this XQuery gets the value of the most expensive repair the name of the customer who needed the repair, and
1. Uses the in-built function max()
2. Uses the FOR clause
3. Uses the LET clause 
use case: repairs :)
let $xml := doc("C:\BordGais\Repairs.xml")

(: get the maximum value and store it :)
let $maxValue := max($xml/repairs/client/details/cost_of_repair)


for $j in
 doc("C:\BordGais\Repairs.xml")/repairs/client
where (
  $j/details/cost_of_repair = $maxValue
)

return
<most_expensive_repair>

<cost_of_repair>
{$maxValue}
</cost_of_repair>

{$j/name}

</most_expensive_repair>