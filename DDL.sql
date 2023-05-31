drop table Bills;
drop table Orderss;
drop table Products;
drop table Restaurent;
drop table Reservation;
drop table Customer;


create table Customer (customer_id number(20),
			first_name varchar(30),
			last_name varchar(30),
			username varchar(20),
			email varchar(50),
			phone varchar(11),
			password varchar(20),
			primary key(customer_id));

create table Reservation(reservation_id number(20),
			customer_id number(20),
			table_no number(20),
			booking_date date,
			expected_date date,
			primary key(reservation_id),
			foreign key(customer_id) references Customer(customer_id));

create table Restaurent(rs_id number(20),
			rs_name varchar(50),
			rs_email varchar(50),
			rs_phone varchar(11),
			link varchar(100),
			primary key(rs_id));

create table Products(product_id number(20),
			rs_id number(20),
			product_name varchar(50),
			price number(10),
			primary key(product_id),
			foreign key(rs_id) references Restaurent(rs_id));

create table Orderss    (order_id number(20),
			customer_id number(20),
			product_id number(20),
			product_name varchar(50),
			quantity number(5),
			primary key(order_id),
			foreign key(customer_id) references Customer(customer_id),
			foreign key(product_id) references Products(product_id));

create table Bills     (bill_no number(20),
			customer_id number(20),
			product_name varchar(50),	
			quantity number(5),
			total_price number(20),
			primary key(bill_no),
			foreign key(customer_id) references Customer(customer_id));
