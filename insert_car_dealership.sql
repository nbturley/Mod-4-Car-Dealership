insert into sales_person(
	sales_id,
	first_name,
	last_name,
	contact_number
) values (
	1,
	'Billy',
	'Bob',
	'687-577-3478'
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	contact_number
) values (
	1,
	'Frank',
	'Frankatelli',
	'688-446-8647'
);

insert into mechanic(
	mech_id,
	first_name,
	last_name,
	pay_rate
) values (
	1,
	'Guido',
	'Tire Changer',
	77.00
);

insert into cars(
	vin,
	new_used,
	sold_here,
	car_year,
	make,
	model,
	color,
	mileage
) values (
	1,
	'new',
	'yes',
	2024,
	'Aston Martin',
	'Vanquish',
	'Barbie Pink',
	10
);

insert into sales_invoice(
	invoice_id,
	total_cost,
	sales_id,
	customer_id,
	vin
) values (
	1,
	459000.00,
	1,
	1,
	1
);

insert into service_ticket(
	service_id,
	total_cost,
	service_date,
	mech_id,
	customer_id,
	vin
) values (
	1,
	1647.00,
	'2023-09-06',
	1,
	1,
	1
);

insert into parts(
	part_id,
	part_info,
	part_cost,
	service_id
) values (
	1,
	'alternator',
	1116.00,
	1
);

create or replace function add_service_ticket(_service_id Integer,
	_total_cost NUMERIC,
	_service_date date,
	_mech_id Integer,
	_customer_id Integer,
	_vin Integer)
returns void
as $MAIN$
begin
	insert into service_ticket(service_id,total_cost,service_date,mech_id,customer_id,vin)
	values (_service_id,_total_cost,_service_date,_mech_id,_customer_id,_vin);
end;
$MAIN$
language plpgsql;

select add_service_ticket(3,100.00,'2023-09-16',1,1,1);

select add_service_ticket(4,100.00,'2023-09-16',1,2,2);

insert into sales_person(
	sales_id,
	first_name,
	last_name,
	contact_number
) values (
	2,
	'Juan',
	'Rico',
	'687-577-3479'
);

insert into customers(
	customer_id,
	first_name,
	last_name,
	contact_number
) values (
	2,
	'Princess',
	'Peach',
	'688-446-8677'
);

insert into mechanic(
	mech_id,
	first_name,
	last_name,
	pay_rate
) values (
	2,
	'Luigi',
	'Plumber',
	102.00
);

insert into cars(
	vin,
	new_used,
	sold_here,
	car_year,
	make,
	model,
	color,
	mileage
) values (
	2,
	'used',
	'yes',
	1964,
	'Mario Kart',
	'Baby Stroller',
	'Barbie Pink',
	251076
);

insert into sales_invoice(
	invoice_id,
	total_cost,
	sales_id,
	customer_id,
	vin
) values (
	2,
	97000.00,
	2,
	2,
	2
);

insert into service_ticket(
	service_id,
	total_cost,
	service_date,
	mech_id,
	customer_id,
	vin
) values (
	2,
	906.00,
	'2023-09-06',
	2,
	2,
	2
);

insert into parts(
	part_id,
	part_info,
	part_cost,
	service_id
) values (
	2,
	'alternator',
	804.00,
	2
);