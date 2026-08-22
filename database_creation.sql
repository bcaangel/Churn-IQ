CREATE DATABASE churn_modelling_db;
USE churn_modelling_db;

CREATE TABLE churn_modell(
rownumber INT,
customerid INT,
surename VARCHAR(50),
gender VARCHAR(30),
age INT,
tenure INT,
balance DECIMAL,
numofproducts INT,
hascrcard INT,
isActiveMember INT,
estimated DECIMAL,
exited INT
);

CREATE TABLE Customertable(
Customer_id INT,
Surename VARCHAR(50),
Age INT,
Gender VARCHAR(30),
Geography VARCHAR(50)
);
INSERT INTO customertable (Customer_id, Surename, Age, Gender, Geography)
SELECT CustomerId, Surname, Age, Gender, Geography
FROM Churn_Modelling;

CREATE TABLE Financialtable(
Customer_id INT,
creditscore INT,
Balance DECIMAL,
Estimated DECIMAL
);

INSERT INTO financialtable (Customer_id,creditscore,balance,estimated)
SELECT CustomerId,creditscore,balance,EstimatedSalary
FROM Churn_Modelling;

INSERT INTO accounttable(Customer_id,Tenure,NumofProducts,HasCRCard,IsActiveMember,Exited)
SELECT CustomerId,Tenure,NumOfProducts,HasCRCard,IsActiveMember,Exited
From Churn_Modelling;

CREATE TABLE geographytable(
Surename VARCHAR(50),
Geography VARCHAR(30)
);
INSERT INTO geographytable(Surename,Geography)
SELECT Surname,Geography
FROM Churn_Modelling;

CREATE TABLE churntable(
Customer_Id INT,
Exited INT 
);

INSERT INTO churntable(Customer_Id,Exited)
SELECT Customerid,Exited
FROM Churn_Modelling;
