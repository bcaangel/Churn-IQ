INSERT INTO customertable (Customer_id, Surename, Age, Gender, Geography)
SELECT CustomerId, Surname, Age, Gender, Geography
FROM Churn_Modelling;