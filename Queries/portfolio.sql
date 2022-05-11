create table portfolio(
p_id int,
p_symbols varchar(10),
buy_price float, 
quantity long, 
primary key(p_id),
foreign key(p_symbols) references equities(e_symbols));

insert into portfolio values("1","TTML", "90.45","10");
insert into portfolio values("2","NHPC", "40.15","7");
insert into portfolio values("3","ISMT", "16.10","26");
insert into portfolio values("4","LSIL", "15.00","31");
insert into portfolio values("5","ZEEMEDIA", "32.35","19");

select * from portfolio;