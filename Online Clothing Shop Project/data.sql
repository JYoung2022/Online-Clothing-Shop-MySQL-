create database shop;
use shop;


create table customer(
	customer_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	address VARCHAR(50),
    login_id VARCHAR(50),
    password VARCHAR(50),
    PRIMARY KEY (customer_id)
);
insert into customer (customer_id, first_name, last_name, email, gender, address, login_id, password) values (1, 'Chandal', 'Lockhart', 'clockhart0@bizjournals.com', 'Female', '41 Blocktown Avenue', 'Chichi109', 'wildwest10' );
insert into customer (customer_id, first_name, last_name, email, gender, address, login_id, password) values (2, 'Marsh', 'O''Moylan', 'momoylan1@pagesperso-orange.fr', 'Male', '56 Rainroad', 'Moylanmo20', 'oxygen330');
insert into customer (customer_id, first_name, last_name, email, gender, address, login_id, password) values (3, 'Cherida', 'Stilgo', 'cstilgo2@t.co', 'Female', '23 Arlong Drive', 'CheridaSteel8', 'duckduck20');
insert into customer (customer_id, first_name, last_name, email, gender, address, login_id, password) values (4, 'Barn', 'Shilvock', 'bshilvock3@parallels.com', 'Male', '26 Millville Circle','BarnShil111', 'cowsorelse');
insert into customer (customer_id, first_name, last_name, email, gender, address, login_id, password) values (5, 'Herman', 'Filippello', 'hfilippello4@de.vu', 'Male', '76 Acetown Road', 'Hermancrab98', 'seafood3030');

create table payment (
	id INT,
	payment_type VARCHAR(50),
	cartid VARCHAR(40),
    PRIMARY KEY(cartid),
    FOREIGN KEY(id) REFERENCES customer(customer_id)
);
insert into payment (id, payment_type, cartid) values (1, 'Debit Card', '4c7d7e4b-e848-4935-891b-69e6a48ca2dd');
insert into payment (id, payment_type, cartid) values (2, 'Credit Card', '9e3db574-84e2-4069-987d-665374bb9fd1');
insert into payment (id, payment_type, cartid) values (3, 'Gift Card', '1f8234db-4bf1-4086-b285-66369984927a');
insert into payment (id, payment_type, cartid) values (4, 'Debit Card', 'f425b6fb-718d-4fee-b356-9750255b19fa');
insert into payment (id, payment_type, cartid) values (5, 'Credit Card', 'h4293b8tb-123d-0eue-t186-5830905y70cd');

create table clothing(
	c_namebrand VARCHAR(50),
	c_id VARCHAR(20),
	c_price INT,
	c_model VARCHAR(50),
    PRIMARY KEY(c_id)
);
insert into clothing (c_namebrand, c_id, c_price, c_model) values ('Nike', 'NA1', '20.00', 'shirt');
insert into clothing (c_namebrand, c_id, c_price, c_model) values ('Levis', 'LA1', '40.00', 'jeans');
insert into clothing (c_namebrand, c_id, c_price, c_model) values ('Adidas', 'AA1', '15.00', 'shirt');
insert into clothing (c_namebrand, c_id, c_price, c_model) values ('RalphLauren', 'RA1', '50.00', 'shirt');
insert into clothing (c_namebrand, c_id, c_price, c_model) values ('Hanes', 'HA1', '10.00', 'socks');

create table cart(
	cust_id INT,
	cartid VARCHAR(40),
	totalcost DECIMAL(6,2),
    c_id VARCHAR(20),
	quantity INT,
    FOREIGN KEY(cartid) REFERENCES payment(cartid),
    FOREIGN KEY(c_id) REFERENCES clothing(c_id),
    FOREIGN KEY(cust_id) REFERENCES customer(customer_id)
);
insert into cart (cust_id, cartid, totalcost, c_id, quantity) values (1, '4c7d7e4b-e848-4935-891b-69e6a48ca2dd', 30.00, 'AA1', 2);
insert into cart (cust_id, cartid, totalcost, c_id, quantity) values (2, '9e3db574-84e2-4069-987d-665374bb9fd1', 50.00, 'HA1', 5);
insert into cart (cust_id, cartid, totalcost, c_id, quantity) values (3, '1f8234db-4bf1-4086-b285-66369984927a', 80.00, 'LA1', 2);
insert into cart (cust_id, cartid, totalcost, c_id, quantity) values (4, 'f425b6fb-718d-4fee-b356-9750255b19fa', 50.00, 'RA1', 1);
insert into cart (cust_id, cartid, totalcost, c_id, quantity) values (5, 'h4293b8tb-123d-0eue-t186-5830905y70cd', 100.00, 'NA1', 5);
