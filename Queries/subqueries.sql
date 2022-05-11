select a_emp_id,invoices_handled from accountants where a_emp_id in(select emp_id from managing_employees where gender='F');
select e_symbols,current from equities where e_symbols in(select c_symbols from shareholding_company where market_cap>10000);
