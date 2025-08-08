// View full table
SELECT * FROM sales

// category and subcategory where grandtotal greater than 5000
SELECT "Category", "Subcategory"
FROM sales 
where "Grand_Total" > 5000;

// Retrieve each product and its subcategory with the count of occurrences, 
sorted by highest sales count.
SELECT "Subcategory", "ProductName", COUNT(*) AS product_count
FROM sales
GROUP BY "Subcategory", "ProductName"
ORDER BY product_count DESC;

// Find the total sales for the 'Accessories' category
select "Category", sum("Grand_Total") as Total_sales
from sales
group by "Category"
having "Category" = 'Accessories'

//Find the second highest sales amount from the table.
select max("SalesAmount") as Total_Sale_Amount
from  sales
where "SalesAmount" < (select max("SalesAmount") from sales)


