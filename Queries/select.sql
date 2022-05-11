select pan_id,name from investors;
select * from equities where volume>50000;
select p_symbols, buy_price from portfolio order by buy_price;
select name,mobile,salary from managing_employees where dept="Broker";
select distinct(method) from payment_interface;