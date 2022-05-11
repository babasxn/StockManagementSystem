# StockManagementSystem
Create a web-based system powered by an integrated database to easily manage these three use cases - investors, shareholding companies and stockbrokers and eliminate all the issues. This project covers a wide range of topics, from business concepts to computer science, and it necessitates the completion of numerous studies in order to meet the project’s objectives.

# ER Diagram

<img src="https://github.com/babasxn/StockManagementSystem/blob/main/screenshots/ER%20DIagram.png">

# Schema Diagram

<img src="https://github.com/babasxn/StockManagementSystem/blob/main/screenshots/schema.PNG">

# Creating Tables for the system

create database stocks;

**1. Investors**

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

<img src="https://github.com/babasxn/StockManagementSystem/blob/main/screenshots/ddl_investors.PNG">

**2. Portfolio**

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

<img src="https://github.com/babasxn/StockManagementSystem/blob/main/screenshots/ddl_portfolio.PNG">

**3. Equities**

create table equities(e_symbols varchar(20), 

open float, 

close float, 

current float, 

exchange varchar(3), 

volume long, 

primary key(e_symbols) );


insert into equities values("ISMT", "53.55", "55.30", "58.05", "NS","103080"), 

("LSIL", "14.30", "14.30", "13.65", "NS","56080"),

("TTML", "139.95", "139.05", "145.95", "BO","30023"),

("ZEEMEDIA", "18.35", "18.45", "17.55", "BO","15900"),

("NHPC", "33.75", "33.50", "33.30", "NS","88022");

![ddl_equities](https://user-images.githubusercontent.com/71126953/167784030-900dd0dd-2205-497b-9ce4-e0c2ae36e526.PNG)

**4. Shareholding Company**

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

![ddl_shareholding](https://user-images.githubusercontent.com/71126953/167784411-cfa602fd-5bd9-4843-95c5-48696e46ccaa.PNG)


**5. Payment Interface**

create table payment_interface(

invoice_id int,

amount float,

currency varchar(3),

method varchar(20),

primary key(invoice_id));


insert into payment_interface values("229330","9050.76","INR","CreditCard"),

("982331","150.65","INR","UPI"),

("678234","90.86","USD","Paypal"),

("887431","32000.00","INR","NetBanking"),

("561234","900","EUR","Paypal");

![ddl_payment](https://user-images.githubusercontent.com/71126953/167784642-7b744701-4970-431f-9667-5624278d3ab1.PNG)


**6. Managing Employees**

create table managing_employees(

emp_id int,

aadhar_card long,

name varchar(50),

gender char,

mobile long,

address varchar(100),

dept varchar(10),

salary float,

primary key(emp_id));

insert into managing_employees values("101","939460572762","Manas Harpreet","M","9735389727","14, 2nd Floor, Coral Merchant St, Chennai","Broker","45000"),

("102","811438936452","Aparajita Anila","F","9363738457","41, Sm Lane, Akkipet, Bangalore","Accountant","50000"),

("103","497224630525","Jagadish Sandeep","M","8768799899","235/237, Raman Shruti, V.p Road, Sicka Nagar, Girgaum, 
Mumbai","Broker","25000"),

("104","741201648754","Ratan Kartik","M","7091270078"," B 546, Bunkar Colony, Opp Bharat Nagar Authority Office, Ashok Vihar, Delhi","Accountant","30000"),

("105","377544257717","Pooja Pankaj","F","9363738457"," 105,1st Floor, Trimurti Luhadiya Tower, Jaipur","Broker","60000"),

("106","419927403063","Shanti Shivali","F","6110410829","15, Gandhi Irwin Rd., Egmore, Chennai","Accountant","35000");



![ddl_employees](https://user-images.githubusercontent.com/71126953/167785202-24b982a4-0495-49d7-9d94-ba54f308cc3b.PNG)


**7. Accountants**

create table accountants(

a_emp_id int,

invoices_handled int,

primary key(a_emp_id) ,

foreign key (a_emp_id) references managing_employees(emp_id));

insert into accountants values("102","1050"),

("104","2027"),

("106","1734");

![ddl_accountants](https://user-images.githubusercontent.com/71126953/167785567-82645a9c-d2a9-47f9-8464-ee9b8a2f4ac3.PNG)

**8. Brokers**

create table brokers(

b_emp_id int,

sales_made int,

primary key(b_emp_id) ,

foreign key (b_emp_id) references managing_employees(emp_id));

insert into brokers values("101","534"),

("103","805"),

("105","202");


![ddl_brokersss](https://user-images.githubusercontent.com/71126953/167785807-bb776905-39c8-46d1-8f73-0de5fa526407.PNG)

# Various Commands performed on the Tables:

The different types of commands executed on the tables are listed here.

**1. Basic Select Statements**

select pan_id,name from investors;

![select1](https://user-images.githubusercontent.com/71126953/167786359-2c8b568a-f341-4a3b-9e10-ec045ed7e1ef.PNG)

select * from equities where volume>50000;

![select2](https://user-images.githubusercontent.com/71126953/167786407-b902f9b6-beb1-46dc-b251-ec9d3a5ca751.PNG)

select p_symbols, buy_price from portfolio order by buy_price;

![select3](https://user-images.githubusercontent.com/71126953/167786548-d5474c35-324e-44f0-a6b0-ea73de87440a.PNG)

select name,mobile,salary from managing_employees where dept="Broker";

![select4](https://user-images.githubusercontent.com/71126953/167786868-591f45eb-4824-49b1-9150-5acec5e835da.PNG)

select distinct(method) from payment_interface;

![select5](https://user-images.githubusercontent.com/71126953/167786926-a3ce28d4-c2bd-4230-aa57-e8f0624f259f.PNG)


**2. Built in Select Statements**

select sum(current) from equities;

![built1](https://user-images.githubusercontent.com/71126953/167787080-2c09b023-7c51-4228-8928-b1ca4d62e83a.PNG)

select count(*) from investors;

![built2](https://user-images.githubusercontent.com/71126953/167787128-3260183a-b8f0-4d0e-8051-00c4ddc30b96.PNG)

select upper(name) from managing_employees;

![buil3](https://user-images.githubusercontent.com/71126953/167787193-4cf443cc-d1ae-48b8-ab58-ba8b64174729.PNG)

select lower(name) from shareholding_company;

![built4](https://user-images.githubusercontent.com/71126953/167787273-ee84e397-0b63-4e70-b6ee-1434ebfe3df6.PNG)

select round(close,1) from equities;

![built5](https://user-images.githubusercontent.com/71126953/167787334-e554e4e5-c5b5-4c8e-9271-a67d748d0788.PNG)

select max(quantity) from portfolio;

![buit6](https://user-images.githubusercontent.com/71126953/167787438-f5aae05b-62d7-412b-91d7-c7aea58fddcf.PNG)

select min(sales_made) from brokers;

![built7](https://user-images.githubusercontent.com/71126953/167787518-323ec8d0-6a4a-437f-97ef-647df4af570c.PNG)


**3.Select Commands using Wildcard Characters:**

select name from managing_employees where name like 'A%';

![wildcard1](https://user-images.githubusercontent.com/71126953/167787696-e02ada17-6086-427b-87c1-363f986952b3.PNG)

select c_symbols from shareholding_company where c_symbols like '___L';

![wildcard2](https://user-images.githubusercontent.com/71126953/167787829-9084fc19-da62-47e1-89ca-7b0dc33f2031.PNG)

select address from managing_employees where address like '%, Chennai'

![wildcard3](https://user-images.githubusercontent.com/71126953/167787868-9d92396b-383c-42bd-96c7-23b628e441b6.PNG)

**4.Sub-Queries & Nested-Queries:**

select a_emp_id,invoices_handled from accountants where a_emp_id in(select emp_id from managing_employees where gender='F');

![image](https://user-images.githubusercontent.com/71126953/167788116-778d8692-edee-4e31-a27c-790c200448cc.png)

select e_symbols,current from equities where e_symbols in(select c_symbols from shareholding_company where market_cap>10000);


![image](https://user-images.githubusercontent.com/71126953/167788209-245dadc5-d786-46f6-8cec-c562152f530e.png)


**5. Set Operations**

select emp_id from managing_employees union select a_emp_id from accountants;

![set1](https://user-images.githubusercontent.com/71126953/167788350-01f139a0-a1b1-441d-9c47-544770c072f6.PNG)

select emp_id from managing_employees intersect select a_emp_id from accountants;

![set2](https://user-images.githubusercontent.com/71126953/167788389-c5602360-86e2-49a5-9868-6886f8503deb.PNG)


**6. Views** 

create view view1 as select * from payment_interface where amount>1000;
select * from view1;

![viewproof](https://user-images.githubusercontent.com/71126953/167788589-fc39e045-e14c-4b4c-9d8f-c7b9affc91e2.PNG)


![viewproof](https://user-images.githubusercontent.com/71126953/167788611-f074f96d-2934-4e9a-8939-69df356ebcf5.PNG)


**7.Joins**

select portfolio.p_symbols, portfolio.buy_price, equities.current from portfolio inner join equities on equities.e_symbols=portfolio.p_symbols;

![join1](https://user-images.githubusercontent.com/71126953/167788790-2e47d912-5601-4147-a71a-296ee1150224.PNG)


select managing_employees.name, managing_employees.salary, accountants.invoices_handled from managing_employees right join accountants on managing_employees.emp_id=accountants.a_emp_id;

![join2](https://user-images.githubusercontent.com/71126953/167788838-fe1f3b7d-5ddb-427b-a846-3a3109edfd9b.PNG)

select managing_employees.name, managing_employees.salary, accountants.invoices_handled from managing_employees left join accountants on managing_employees.emp_id=accountants.a_emp_id;

![join3](https://user-images.githubusercontent.com/71126953/167788878-2fed9760-064f-4809-80a3-1f4f3df36f18.PNG)

**8.Triggers**

create or replace trigger display_reg_org
before delete or insert or update on reg_org
for each row
when (NEW.reg_id > 0)
declare
region_name varchar(50);
begin
dbms_output.put_line('Old Region Name: '||:OLD.region);
dbms_output.put_line('New Region Name: '||:NEW.region);
end;
/

![image](https://user-images.githubusercontent.com/71126953/167789135-c4cc67cd-ffac-4c0b-8290-45f00740fa89.png)


**9. Cursors**

declare
total_rows number(3);
begin
select * from reg_org;
if sql%notfound then
dbms_output.put_line('No Customers selected');
elsif sql%found then
total_rows:=sql%rowcount;
dbms_output.put_line(total_rows || ' customers selected ');
end if;
end;
/






































