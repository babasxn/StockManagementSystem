create database stocks;
create table investors(mob_num varchar(10),
pan_id varchar(15), 
name varchar(30), 
email_id varchar(30),
primary key(mob_num));

insert into investors values("8800914096", "AAJFN2389N","Harsh Saxena", "harshsaxena400@gmail.com");
insert into investors values("9900914096", "UIKFN2389N","Ram Kumar", "ramkumar@gmail.com");
insert into investors values("9800914096", "FNSFN2389N","Shyam Kapoor", "shyamkapoor@gmail.com");
insert into investors values("8700914096", "IQNFN2389N","Aadil Khan", "aadilkhan@gmail.com");
insert into investors values("6700914096", "HLPFN2389N","Tom Holland", "tomholland@gmail.com");

select * from investors;