CREATE DATABASE bank_loan_db;

use bank_loan_db;

CREATE TABLE Loan_Data(

Customer_ID VARCHAR(20),

Age INT,

Gender VARCHAR(10),

Employment_Status VARCHAR(30),

Annual_Income INT,

Loan_Amount INT,

Loan_Type VARCHAR(20),

Credit_Score INT,

Loan_Term_Months INT,

Loan_Status VARCHAR(20)

);



SELECT COUNT(*) AS Total_Customers
FROM Loan_Data;

SELECT COUNT(*) AS Approved
FROM Loan_Data
WHERE Loan_Status='Approved';

SELECT COUNT(*) AS Rejected
FROM Loan_Data
WHERE Loan_Status='Rejected';

SELECT Loan_Type,
COUNT(*) AS Total
FROM Loan_Data
GROUP BY Loan_Type;

SELECT AVG(Credit_Score)
FROM Loan_Data;

SELECT *
FROM Loan_Data
ORDER BY Loan_Amount DESC
LIMIT 10;

SELECT *
FROM Loan_Data
ORDER BY Annual_Income DESC
LIMIT 10;

/*SELECT
(SUM(CASE WHEN Loan_Status='Approved' THEN 1 ELSE 0 END)*100.0
/COUNT(*),2
) AS Approval_Rate; /*