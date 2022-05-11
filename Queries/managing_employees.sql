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
("103","497224630525","Jagadish Sandeep","M","8768799899","235/237, Raman Shruti, V.p Road, Sicka Nagar, Girgaum, Mumbai","Broker","25000"),
("104","741201648754","Ratan Kartik","M","7091270078"," B 546, Bunkar Colony, Opp Bharat Nagar Authority Office, Ashok Vihar, Delhi","Accountant","30000"),
("105","377544257717","Pooja Pankaj","F","9363738457"," 105,1st Floor, Trimurti Luhadiya Tower, Jaipur","Broker","60000"),
("106","419927403063","Shanti Shivali","F","6110410829","15, Gandhi Irwin Rd., Egmore, Chennai","Accountant","35000");

select * from managing_employees;