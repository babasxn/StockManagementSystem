select emp_id from managing_employees union select a_emp_id from accountants;
select emp_id from managing_employees intersect select a_emp_id from accountants;
