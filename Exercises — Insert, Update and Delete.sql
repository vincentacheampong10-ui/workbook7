use northwind;

-- 1. Add a new supplier.
insert into suppliers(supplierID, CompanyName, Address )
values(31, 'Romell','Romell Address' ) ;

-- 2. Add a new product provided by that supplier
insert into products(ProductID, ProductName)
values(78, 'Cookie Cutters');

-- 3. List all products and their suppliers.
select suppliers.supplierID, CompanyName, Address
from suppliers  
join products 
on  suppliers.supplierID = products.supplierID;

-- 4. Raise the price of your new product by 15%.
update products
set unitPrice = unitPrice * 1.15
where productID = 78;

-- 5. List the products and prices of all products from that supplier.
select products.ProductID, products.UnitPricee
from products  
where  suppliers.supplierID = 31;

-- 6. Delete the new product.
delete from products
where products.ProductID = 78;

-- 7. Delete the new supplier.
delete from suppliers
where suppliers.SupplierID = 31;

-- 8. List all products.
select *
from products;

-- 9. List all suppliers.
select *
from suppliers;