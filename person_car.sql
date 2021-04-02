	CREATE TABLE car(
	car_uuid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL
	);

	CREATE TABLE person(
	person_uuid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(5) NOT NULL,
	gender VARCHAR(7) NOT NULL,
	email VARCHAR(100),
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uuid UUID REFERENCES car(car_uuid),
	UNIQUE(car_uuid)
	);

insert into car(car_uuid,make,model,price) values (uuid_generate_v4(),'Land Rover', 'Sterling', '87345.34');
insert into car(car_uuid,make,model,price) values (uuid_generate_v4(),'GMC', 'Acadia', '17345.34');
insert into car(car_uuid,make,model,price) values (uuid_generate_v4(),'GTA', 'Acadia', '19345.34');


insert into person(person_uuid,first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Ravi', 'G', 'MALE', 'ravi@gmail.com', DATE '1987-02-01', 'india');
insert into person(person_uuid,first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Devi', 'G', 'FEMALE', 'devi@gmail.com', DATE '1989-02-01', 'india');
insert into person(person_uuid,first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Raj', 'G', 'MALE', 'raj@gmail.com', DATE '1987-02-01', 'india');
insert into person(person_uuid,first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Chinna', 'G', 'MALE', 'chinna@gmail.com', DATE '1987-02-01', 'india');

