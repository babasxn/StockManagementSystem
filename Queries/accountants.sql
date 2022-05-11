create table accountants(
a_emp_id int,
invoices_handled int,
primary key(a_emp_id) ,
foreign key (a_emp_id) references managing_employees(emp_id));

insert into accountants values("102","1050"),
("104","2027"),
("106","1734");

select * from accountants;