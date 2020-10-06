SELECT
e.gender,
d.dept_name,
s.salary,
e.calendar_year
FROM t_employees e
JOIN t_salaries s ON e.emp_no = s.emp_no
JOIN t_dept_emp de ON de.emp_no = e.emp_no
JOIN t_departments d ON d.dept_no = de.dept_no