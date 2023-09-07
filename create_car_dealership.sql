create table sales_person(
	sales_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	contact_number VARCHAR(15)
);

create table customers(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	contact_number VARCHAR(15)
);

create table mechanic(
	mech_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	pay_rate NUMERIC(5,2)
);

create table cars(
	vin SERIAL primary key,
	new_used VARCHAR(5),
	sold_here VARCHAR(3),
	car_year Integer,
	make VARCHAR(100),
	model VARCHAR(150),
	color VARCHAR(100),
	mileage Integer
);

create table sales_invoice(
	invoice_id SERIAL primary key,
	total_cost NUMERIC(9,2),
	sales_id Integer not null,
	customer_id Integer not null,
	vin Integer not null,
	foreign key(sales_id) references sales_person(sales_id),
	foreign key(customer_id) references customers(customer_id),
	foreign key(vin) references cars(vin)
);

create table service_ticket(
	service_id SERIAL primary key,
	total_cost NUMERIC(7,2),
	service_date date default current_date,
	mech_id Integer not null,
	customer_id Integer not null,
	vin Integer not null,
	foreign key(mech_id) references mechanic(mech_id),
	foreign key(customer_id) references customers(customer_id),
	foreign key(vin) references cars(vin)
);

create table parts(
	part_id SERIAL primary key,
	part_info VARCHAR(200),
	part_cost NUMERIC(7,2),
	service_id Integer not null,
	foreign key(service_id) references service_ticket(service_id)
);