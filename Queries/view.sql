create view view1 as select * from payment_interface where amount>1000;
select * from view1;