--UseCase1-Create a data base--
create Database Address_Book_Service_DB;

--UseCase2- Create A table--
Create Table AddressBookTable
(
FirstName VARCHAR(15) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(15) NOT NULL,
State VARCHAR(15) NOT NULL,
Zip Int NOT NULL,
PhoneNumber Int NOT NULL,
Email VARCHAR(30) NOT NULL
)
Select * From AddressBookTable;



