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

select * from payment_interface;
