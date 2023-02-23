--UseCase1-Create a data base--
create Database Address_Book_Service_DB;

--UseCase2- Create A table--
Create Table AddressBookTable1
(
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(20) NOT NULL,
State VARCHAR(20) NOT NULL,
Zip BIGINT,
PhoneNumber BIGINT,
Email VARCHAR(30) NOT NULL
);
Select * From AddressBookTable1;

--UseCase3- Insert new Contacts to AddressBookTable
INSERT INTO AddressBookTable1(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
VALUES('Marina','Singh','Colony','Pune','Maharashtra',123456,9876543210,'marina@gmail.com'),
('Shreeram','Patil','Street','Noida','Delhi',410506,9876512345,'shreeram@gmail.com'),
('Harisri','Kiran','Nagar','Bangalore','Karnataka',321456,7418529613,'kiran@gmail.com'),
('Vidan','Guru','Town','Hyderabda','Telangana',765432,9123457689,'vidan@gmail.com');
Select * From AddressBookTable1;

--UseCase4- Edit Contact
UPDATE AddressBookTable1 SET Zip = 411506 WHERE LastName = 'Guru';

--UseCae5- Delete a person using person's name
DELETE FROM AddressBookTable1 WHERE FirstName = 'Shreeram';