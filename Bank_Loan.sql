select * from bank_loan_data

--- total number of loans applications

select count( id) AS total_loan_applications from bank_loan_data

select count(id) as month_to_date from bank_loan_data
where month (issue_date) =12 AND YEAR(issue_date) = 2021

--QURERIES FOR DASHBOARDS

SELECT 
MONTH(issue_date) AS Month_Number,
DATENAME ( month, issue_date) AS month_number,
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY
MONTH (issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

--------------------------------------------------------------------------
SELECT 
address_state, 
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY address_state
ORDER BY COUNT(id) DESC 

-------------------------------------------------------------------------

SELECT 
term, 
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY term
ORDER BY term

------------------------------------------------------------------------------
SELECT 
emp_length, 
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY emp_length
ORDER BY emp_length

--------------------------------------------------------------------------------------------------
SELECT 
purpose, 
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY purpose
ORDER BY purpose


----------------------------------------------------------------------
SELECT 
home_ownership, 
count(id) AS total_loan_applications,
SUM(loan_amount) AS Total_funded_Amount, 
SUM(Total_payment) AS total_received_Amount 
from bank_loan_data 
GROUP BY home_ownership
ORDER BY home_ownership
