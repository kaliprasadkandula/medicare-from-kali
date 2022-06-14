create database medicare;
use  medicare;
create table admin
(
userid varchar(45) not null primary key,
pwd varchar(45) not null
);
insert into admin (userid,pwd) values ('admin','admin');
create table frontdesk
(
frontdeskid varchar(45) not null primary key,
fname varchar(45) not null,
lname varchar(45) not null,
pwd varchar(45) not null,
gender varchar(45) not null,
phone varchar(45) not null,
dob varchar(45) not null,
email varchar(45) not null,
status varchar(45) not null default 'not approved'
);
create table patient
(
patientid varchar(45) not null primary key,
fname varchar(45) not null,
lname varchar(45) not null,
dob varchar(45) not null,
gender varchar(45) not null,
phone varchar(45) not null,
address varchar(45) not null,
symptoms varchar(45) not null,
userid varchar(45) ,
consultancy_bill int default 0,
room_bill int default 0,
service_bill int default 0,
medication_bill int default 0,
total_bill int default 0,
bill_status varchar(45) default 'not paid'
);

create table user
(
userid varchar(45) not null primary key,
fname varchar(45) not null,
lname varchar(45) not null,
pwd varchar(45) not null
);

