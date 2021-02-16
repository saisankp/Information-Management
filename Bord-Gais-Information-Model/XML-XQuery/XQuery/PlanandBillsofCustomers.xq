(:This xQuery returns the type of plan and bills of domestic customers. 
It uses the WHERE clause to interlink the HomeEnergy and accounts documents
use case: paying/recieving gas/electricity/both:)

for $j in doc("C:\BordGais\HomeEnergy.xml")/home_energy/customer

for $x in doc("C:\BordGais\account.xml")/Accounts/customer

where ($j/name/surname)=($x/accounts_owner/surname)

return
<PlanAndBills>
{$j/name}
<plan_type>
{$j/payment_plan/@type/string(.)}
</plan_type>
{$x/Bill}
</PlanAndBills>
