CREATE DATABASE DB_MELLY_PROJECT

use DB_MELLY_PROJECT
CREATE TABLE TBL_Employs_Details (EmpID INT,EMPName varchar(50), Age INT, Gender Char(1),
                   Date_of_Join date,Mobile_No bigint, Email_Address varchar(50), Active bit)
SELECT *FROM TBL_Employs_Details
INSERT INTO TBL_Employs_Data values (1,'Leah',20,'F','01/01/2017',0104000333,'leah@gmail.com',1),
                                       (2,'Peter',30,'M','02/01/2017',0104000444,'peter@gmail.com',1),
									   (3,'Agnes',27,'F','01/01/2017',0104000222,'agnes@gmail.com',1),
									   (4,'janeffer',19,'F','01/01/2017',0104000111,'janeffer@gmai,l.com',1)
									   
SELECT *FROM TBL_Employs_Details
SELECT *FROM Bulk_countries_Data
SP_Rename 'TBL_Employs_Details','TBL_Employs_Data'
Select *From TBL_Employs_Data
SP_Rename 'TBL_Employs_Data.EMPName', 'Employee_Name','column'

Select *From Canada_Empls_List
SP_Rename 'Canada_Empls_List', 'TBL_Canada_Employs'
Select *From TBL_Canada_Employs

Select *From TBL_Employs_Data
Alter Table TBL_Employs_Data ADD Salary INT
Update TBL_Employs_Data SET Age=38 WHERE EmpID=5
Update TBL_Employs_Data SET Age=40 WHERE EmpID=6

Update TBL_Employs_Data SET Salary=CASE WHEN AGE<=20 THEN 30000
                                        WHEN AGE>20 AND AGE<=25 THEN 40000
										WHEN AGE>25 AND AGE<=30 THEN 50000
										ELSE 60000
										END
BEGIN TRAN
DELETE From TBL_Employs_Data
ROLLBACK
Select *From TBL_Employs_Data

BEGIN TRAN
TRUNCATE TABLE TBL_Employs_Data

Rollback

Select * INTO TBL_DELETE FROM TBL_Employs_Data
Select * From TBL_DELETE

INSERT INTO TBL_DELETE
Select * From TBL_DELETE 

Select * INTO TBL_TRUNCATE FROM TBL_DELETE

Select Count(*) FROM TBL_DELETE
Select Count(*) FROM TBL_TRUNCATE

Delete FROM TBL_DELETE ---Took 5secs to remove 1 milion records
Truncate Table TBL_TRUNCATE----Took a micro seconds to remove 1 milion records 


Create Table TBL_EMPLS_MASTER(EMPID INT,EMPName VARCHAR(30), AGE INT, SALARY INT)

INSERT INTO TBL_EMPL_INDENT values ('Leah',20,70000)
INSERT INTO TBL_EMPLYS_INDENT values ('peter',30,72000)
INSERT INTO TBL_EMPLYS_INDENT values ('Agnes',27,68000)
INSERT INTO TBL_EMPLYS_INDENT values ('Janeffer',19,65000)
BEGIN TRAN
SELECT *FROM TBL_EMPYS_INDENT
Delete from TBL_EMPLS_INDENT
Rollback

Begin TRAN
SELECT *FROM TBL_EMPLYS_INDENT
DROP TABLE TBL_EMPLYS_INDENT
ROLLBACK

Create Table TBL_EMPLOYS_MASTER(EMPID INT Primary key,EMPName VARCHAR(30), AGE INT, SALARY INT)

INSERT INTO TBL_EMPLOYS_MASTER values (1,'Leah',20,70000)
INSERT INTO TBL_EMPLOYS_MASTER values (2,'peter',30,72000)
INSERT INTO TBL_EMPLOYS_MASTER values (3,'Agnes',27,68000)
INSERT INTO TBL_EMPLOYS_MASTER values (4,'Janeffer',19,65000)
INSERT INTO TBL_EMPLOYS_MASTER values (1,'Collins',25,63000)
INSERT INTO TBL_EMPLOYS_MASTER values (NULL,'Karrey',28,67000)

Select * From TBL_EMPLOYS_MASTER

DROP TABLE TBL_EMPLOYS_MASTER

INSERT INTO TBL_EMPLOYS_MASTER values (10,'Leah',20,70000)
INSERT INTO TBL_EMPLOYS_MASTER values (8,'peter',30,72000)
INSERT INTO TBL_EMPLOYS_MASTER values (6,'Agnes',27,68000)
INSERT INTO TBL_EMPLOYS_MASTER values (9,'Janeffer',19,65000)
INSERT INTO TBL_EMPLOYS_MASTER values (7,'Collins',25,63000)
INSERT INTO TBL_EMPLOYS_MASTER values (5,'Karrey',28,67000)


