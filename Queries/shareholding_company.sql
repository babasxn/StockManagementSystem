create table shareholding_company(
c_id int,
c_symbols varchar(20),
name varchar(40), 
field varchar(20), 
revenue_in_cr long, 
profit_in_cr long, 
market_cap long,
primary key(c_id),
foreign key(c_symbols) references equities(e_symbols));

insert into shareholding_company values("104","ISMT","ISMT Ltd.","Metals/Mining","534","-69","1662");
insert into shareholding_company values("209","NHPC","NHPC Ltd.","Energy","2157","2224","33902");
insert into shareholding_company values("367","LSIL","Lloyds Steels Industries Ltd.","Machinery","19","4","1227");
insert into shareholding_company values("192","TTML","Tata Teleservives Maha ","Telecom","273","-281","28532");
insert into shareholding_company values("781","ZEEMEDIA","ZEE Media Corporation","Media","243","45","1098");

select * from shareholding_company;