create table brokers(
b_emp_id int,
sales_made int,
primary key(b_emp_id) ,
foreign key (b_emp_id) references managing_employees(emp_id));

insert into brokers values("101","534"),
("103","805"),
("105","202");

select * from brokers;