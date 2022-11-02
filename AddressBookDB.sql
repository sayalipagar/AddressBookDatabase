------UC1-------
CREATE DATABASE ADDRESS_BOOK_SERVICE;
USE ADDRESS_BOOK_SERVICE;

------UC2------
----CREATING TABLE-----
CREATE TABLE ADDRESS_BOOK_SERVICE
(
FirstName char(25),
LastName char(25),
City char(25),
StateName char(25),
Zip int,
Phone varchar(25),
Email varchar(25)
);
 SELECT * FROM ADDRESS_BOOK_SERVICE;

  -----UC3-----
 ----INSERT CONTACT IN ADDRESSBOOK------
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Sayali','Nikam','Pune','Maharashtra','412109','8457842345','sayalinikam@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Ankita','Khairnar','Mumbai','Maharashtra','560085','954645345','ankitakhair@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Sandesh','Nikam','Pune','Maharashtra','8375','76378434534','sandesh@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('snehal','saner','nashik','Maharashtra','574895','09384903','snaehal@gmail.com');
INSERT INTO ADDRESS_BOOK_SERVICE VALUES('Priyanka','sonawane','hyderabad','Telangana','455454','0938490334','priyanka@gmail.com');
SELECT * FROM ADDRESS_BOOK_SERVICE;

----------------UC4--------------
-----Editing Details Using Name----------
UPDATE ADDRESS_BOOK_SERVICE SET City= 'Mumbai', Phone='9011596225', Email='sandesh@gmail.com' WHERE FirstName='Sandesh';
SELECT * FROM ADDRESS_BOOK_SERVICE;

-------UC5--------------
-------Deleating a person using name---------
DELETE FROM ADDRESS_BOOK_SERVICE WHERE FirstName= 'snehal';
SELECT * FROM ADDRESS_BOOK_SERVICE;

--------------------UC6-------------
----------Retrieving Data by City or State----------
Select * from ADDRESS_BOOK_SERVICE WHERE City='Mumbai';
Select * from ADDRESS_BOOK_SERVICE WHERE StateName='Maharashtra';

------------UC7-Size of Address book by City or State------------

Select COUNT(City) as City_Count FROM ADDRESS_BOOK_SERVICE;
Select COUNT(StateName) as State_Count FROM ADDRESS_BOOK_SERVICE;

------------UC8-Sorting data Alphabetically by person name------------

SELECT * FROM ADDRESS_BOOK_SERVICE ORDER BY(FirstName);
