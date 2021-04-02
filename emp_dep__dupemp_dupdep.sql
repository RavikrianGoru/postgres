create table DEP (
	dep_code VARCHAR(50) NOT NULL PRIMARY KEY,
	dep_name VARCHAR(50) NOT NULL
);

create table EMP (
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	sal INT NOT NULL,
    dep_code VARCHAR(50) REFERENCES DEP(dep_code)
);

create table MEMP (
	id INT NOT NULL PRIMARY KEY,
	eid VARCHAR(20) NOT NULL,
	name VARCHAR(50) NOT NULL,
	mgr VARCHAR(20) ,
	sal INT NOT NULL,
    UNIQUE(eid)
);

insert into MEMP (id, eid, name, mgr, sal) values (1, 'E001', 'RK CEO', '', 66666);
insert into MEMP (id, eid, name, mgr, sal) values (2, 'E002', 'Ravi', 'E001', 66666);
insert into MEMP (id, eid, name, mgr, sal) values (3, 'E003', 'Ram', 'E001', 66666);
insert into MEMP (id, eid, name, mgr, sal) values (4, 'E004', 'Raj', 'E002', 66666);
insert into MEMP (id, eid, name, mgr, sal) values (5, 'E005', 'Dev', 'E003', 66666);
insert into MEMP (id, eid, name, mgr, sal) values (6, 'E006', 'John', 'E006', 66666);


insert into DEP (dep_code, dep_name) values ('DEP002', 'Stores');
insert into DEP (dep_code, dep_name) values ('DEP003', 'Human Resources');
insert into DEP (dep_code, dep_name) values ('DEP001', 'Training');
insert into DEP (dep_code, dep_name) values ('DEP004', 'Engineering');
insert into DEP (dep_code, dep_name) values ('DEP005', 'Support');


insert into EMP (id, name, gender, sal, dep_code) values (1, 'Umberto', 'Agender', 22227,'DEP001');
insert into EMP (id, name, gender, sal, dep_code) values (2, 'Obie', 'Bigender', 21013,'DEP002');
insert into EMP (id, name, gender, sal, dep_code) values (3, 'Sula', 'Agender', 18438,'DEP003');
insert into EMP (id, name, gender, sal, dep_code) values (4, 'Neill', 'Polygender', 20947,'DEP003');
insert into EMP (id, name, gender, sal, dep_code) values (5, 'Isidore', 'Polygender', 16271,'DEP004');
insert into EMP (id, name, gender, sal, dep_code) values (6, 'Salaidh', 'Polygender', 16176,'DEP005');
insert into EMP (id, name, gender, sal, dep_code) values (7, 'Guy', 'Bigender', 16162,'DEP005');
insert into EMP (id, name, gender, sal, dep_code) values (8, 'Ingelbert', 'Agender', 19999,'DEP003');
insert into EMP (id, name, gender, sal, dep_code) values (9, 'Sadye', 'Polygender', 17706,'DEP002');
insert into EMP (id, name, gender, sal, dep_code) values (10, 'Esmeralda', 'Bigender', 12355,'DEP001');


create table DDEP (
	dep_code VARCHAR(50) NOT NULL,
	dep_name VARCHAR(50) NOT NULL
);

create table DEMP (
	id INT NOT NULL,
	name VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	sal INT NOT NULL
);


insert into DDEP (dep_code, dep_name) values ('DEP002', 'Stores');
insert into DDEP (dep_code, dep_name) values ('DEP003', 'Human Resources');
insert into DDEP (dep_code, dep_name) values ('DEP001', 'Training');
insert into DDEP (dep_code, dep_name) values ('DEP004', 'Engineering');
insert into DDEP (dep_code, dep_name) values ('DEP005', 'Support');

insert into DEMP (id, name, gender, sal) values (1, 'Umberto', 'Agender', 22227);
insert into DEMP (id, name, gender, sal) values (2, 'Obie', 'Bigender', 21013);
insert into DEMP (id, name, gender, sal) values (3, 'Sula', 'Agender', 18438);
insert into DEMP (id, name, gender, sal) values (4, 'Neill', 'Polygender', 20947);
insert into DEMP (id, name, gender, sal) values (5, 'Isidore', 'Polygender', 16271);
insert into DEMP (id, name, gender, sal) values (6, 'Salaidh', 'Polygender', 16176);
insert into DEMP (id, name, gender, sal) values (1, 'Umberto', 'Agender', 22227);
insert into DEMP (id, name, gender, sal) values (2, 'Obie', 'Bigender', 21013);
insert into DEMP (id, name, gender, sal) values (1, 'Umberto', 'Agender', 22227);
insert into DEMP (id, name, gender, sal) values (2, 'Obie', 'Bigender', 21013);
insert into DEMP (id, name, gender, sal) values (2, 'Obie', 'Bigender', 299993);
