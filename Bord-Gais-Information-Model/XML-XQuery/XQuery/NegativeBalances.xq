(:This xQuery finds the accounts with negative balances. It returns the owner of the account and their balance.
It uses a User Defined Function
use case online account payment:)

declare function local:find_negative_balances(){
  for $j in doc("C:\BordGais\account.xml")/Accounts/customer
  
  where $j/Account/balance < 0
  return 
  <negative_balances>
{$j/accounts_owner}
{$j/Account/balance}
  </negative_balances>
};

local:find_negative_balances()