use SUPERMARKET
go
select * from [Supermarket Sales]


--1.Total sales per branch
select Branch, sum(Total) as TotalSales
from [Supermarket Sales]
group by Branch;


--2. Average unit price by product line
select Product_Line,
avg(Unit_price) as AvgUnitPrice
from [Supermarket Sales]
group by Product_Line;


--3. Total sales per payment method
select Payment, sum(Total) as TotalSales
from [Supermarket Sales]
group by Payment;


--4. Number of sales by customer type
select Customer_type, COUNT(invoice_ID) as NumSales
from [Supermarket Sales]
group by Customer_type;


--5. Total tax collected per city
select City, SUM(Tax_5) as TotalTax
from [Supermarket Sales]
group by City;


--6. Sales breakdown by gender and payment method
select Gender, Payment, SUM(Total) as TotalSales
from [Supermarket Sales]
group by Gender, Payment;


--7. Highest selling product line by branch
select Branch, Product_Line, SUM(Total) as TotalSales
from [Supermarket Sales]
group by Branch, Product_Line
order by Branch, TotalSales DESC;

--8. Cost of goods sold (COGS) per product line:
select Product_Line, SUM(cogs) as TotalCOGS
from [Supermarket Sales]
group by Product_Line;


--9. Cost of goods sold (cogs) per product line:
select Product_Line, SUM(cogs) as TotalCOGS
from [Supermarket Sales]
group by Product_Line;


--10. Average transaction amount by customer type
select Customer_type, AVG(Total) as AvgTransaction
from [Supermarket Sales]
group by Customer_type;




