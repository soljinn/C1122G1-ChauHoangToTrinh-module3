create database  student_management;
create table class(
id int primary key auto_increment,
name varchar(225)
);
create table teacher(
id int primary key auto_increment,
name varchar(225),
age int,
country varchar(225)
);
insert into class(name)
value('Chính'),
('Anh'),
('Minh'),
('Hải'),
('Lãnh'),
('Quốc');
insert into teacher(name, age, country)
value('Trung VHT', 22, 'Việt Nam'),
('Hải TT', 25, 'Việt Nam'),
('Công NT', 28, 'Việt Nam'),
('Trung DC', 32, 'Việt Nam');
select * from class;
select * from teacher;
update teacher
set age = 29
where id = 3;