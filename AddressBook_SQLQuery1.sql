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
Update AddressBookTable1  set City =' Hyderabad ' where FirstName = 'Vidan';
--UseCase4- Edit Contact
UPDATE AddressBookTable1 SET Zip = 411506 WHERE LastName = 'Guru';

--UseCae5- Delete a person using person's name
DELETE FROM AddressBookTable1 WHERE FirstName = 'Shreeram';

--UseCase6- Retrieve Person belonging to a City or State
SELECT * From AddressBookTable1 WHERE State='Telangana' ;

--UseCase7- Understand the size of address book by City and State
SELECT COUNT(*) From AddressBookTable1 WHERE State='Maharashtra' AND City='Pune';

--UseCase8- Retrieve entries sorted alphabetically by Person’s name for a given city
SELECT * FROM AddressBookTable1 order by FirstName;

--UseCase9- Identify each Address Book with name and Type
ALTER TABLE AddressBookTable1 ADD TypeOfCONTACT varchar(100) not null default 'FamilyPerson';
update AddressBookTable1 set TypeOfCONTACT = 'Profession' where FirstName = 'Marina';
SELECT * From AddressBookTable1 WHERE TypeOfCONTACT = 'FamilyPerson';-- FirstName ='Marina' ;
SELECT * From AddressBookTable1 WHERE TypeOfCONTACT = 'Profession';
select * from AddressBookTable1;

--UseCase10- get number of contact persons
SELECT TypeOfCONTACT,COUNT(TypeOfCONTACT) From AddressBookTable1 Group By TypeOfCONTACT;