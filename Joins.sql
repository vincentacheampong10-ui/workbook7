use northwind;

-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75 Order by product name.
SELECT 
    products.ProductID,
    products.ProductName,
    products.UnitPrice,
    Suppliers.CompanyName
FROM Products 
 JOIN Suppliers ON products.SupplierID = suppliers.SupplierID
WHERE (products.UnitPrice > 75)
ORDER BY products.ProductName;   

-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
SELECT 
    products.ProductID,
    products.ProductName,
    products.UnitPrice,
    Products.SupplierID ,
    products.categoryID
    FROM products
    order by products.ProductName;  
    
-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.
select products.productName, products.categoryID
from products
join categories on products.categoryID = categories.categoryID
WHERE products.unitPrice = (
    SELECT MAX(unitPrice)
    FROM products
);