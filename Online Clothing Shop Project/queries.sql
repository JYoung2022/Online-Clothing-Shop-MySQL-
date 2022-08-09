-- Queries 

-- Finds all customers ordered by sex then first name
SELECT *
from customer
ORDER BY gender, first_name;

-- Finds the first and last names of all customers
SELECT first_name, customer.last_name
FROM customer;

-- Finds out all the different genders
SELECT DISTINCT gender
FROM customer;

-- Finds all male customers
SELECT *
FROM customer
WHERE gender = 'Male';

-- Finds all clothing with a price of 40.00 and below
SELECT *
FROM clothing
WHERE (c_price <= '40.00');


-- Find names of all employees who have sold over 50,000
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (SELECT works_with.emp_id
                          FROM works_with
                          WHERE works_with.total_sales > 50000);

-- Finds the login_id of all customers who have spent more than 50.00 dollars
SELECT customer.customer_id
FROM customer
WHERE customer.customer_id IN (SELECT cart.cust_id
                          FROM cart
                          WHERE cart.totalcost > 50.00);
                          
  
                    
                          







