(:This xQuery calculates and returns the average estimated annual bill using a User-Defined Function
use case pay:)

declare function local:average_annual_bill_domestic(){
 let $doc := doc("C:\BordGais\HomeEnergy.xml")
 
 let $average := avg($doc/home_energy/customer/payment_plan/estimated_annual_bill)
 
 return
 <average_annual_bill>
 {$average}
 </average_annual_bill>
};

local:average_annual_bill_domestic()