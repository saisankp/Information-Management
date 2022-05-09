#Alter Owner table to include total hours played by the owner
ALTER TABLE OWNER ADD Total_Hours_Played INT NOT NULL;
#Alter World table to include number of DigiVend Machine's contained in it
ALTER TABLE WORLD ADD Number_Of_DigiVend_Machine INT NOT NULL;
#Alter Customer table to include Customer's Account creation in days.
ALTER TABLE CUSTOMER ADD Customer_Account_Creation_Days INT NOT NULL;
#Alter Supplier table to include Supplier's Account creation in days.
ALTER TABLE SUPPLIER ADD Supplier_Account_Creation_Days INT NOT NULL;
#Alter Trade table to include time of Trade
ALTER TABLE SUPPLIER ADD Time_Of_Trade TIME NOT NULL;
#Alter Item table to include amount of gems it will give if it is recycled
ALTER TABLE ITEM ADD Recycle_Potential INT NOT NULL;