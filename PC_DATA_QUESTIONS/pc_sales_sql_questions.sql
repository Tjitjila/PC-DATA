
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

select * FROM [PC_SALESDB].[dbo].[pc_data]

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.

select Count (*)
from dbo.[pc_data]

-- 2. Count the number of sales per Continent.

Select Continent, 
Count (Continent) As Number_of_sales
from dbo.pc_data
group by Continent

-- 3. Count the number of sales per Country or State.

Select Country_or_State, 
Count (Country_or_State) As Number_of_sales  --count the number of rows that have the same province
from dbo.pc_data
group by Country_or_State

-- 4. List all distinct Shop Name values.

Select distinct (Shop_Name)
from dbo.pc_data

-- 5. Find the average Sale Price.
SELECT AVG(Sale_Price) 
FROM dbo.pc_data

-- 6. Find the highest and lowest Sale Price.

SELECT MIN(Sale_Price) As lowest_price
FROM dbo.pc_data

SELECT MAX(Sale_Price) As Highest_price
FROM dbo.pc_data

-- 7. Count the number of sales by Payment Method.

Select Payment_Method, 
Count (Payment_Method) As Number_of_sales_per_payment_method
from dbo.pc_data
group by Payment_Method

-- 8. Count the number of sales by Channel (Online vs Offline).

Select Channel, 
Count (Channel) As Number_of_sales_per_channel
from dbo.pc_data
group by Channel

-- 9. Count the number of sales by Priority level.

Select Priority, 
Count (Priority) As Number_of_sales_per_channel
from dbo.pc_data
group by Priority

-- 10. Count the number of distinct PC Make values.

Select distinct (PC_Model)
From dbo.pc_data

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
-- 13. Find the average Discount Amount.
-- 14. Calculate total Finance Amount issued.
-- 15. Find total revenue per PC Make.
-- 16. Find average Sale Price per Storage Type.
-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

