use sakila;

SELECT 
    customer_id,
    first_name,
    last_name,
    customer.address_id AS customer_address_id,
    address.address_id AS address_address_id,
    address,
    postal_code,
    city_id
FROM
    customer
	INNER JOIN address ON customer.address_id = address.address_id;
    
    
 SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    address.address AS street_address,
    address.postal_code,
    address.city_id
FROM customer
INNER JOIN address 
    ON customer.address_id = address.address_id;