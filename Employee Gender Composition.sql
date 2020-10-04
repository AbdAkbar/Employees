SELECT 
    YEAR(from_date) as calendar_year, gender, COUNT(*) AS num_of_employees
FROM
    t_dept_emp d
        JOIN
    t_employees e ON d.emp_no = e.emp_no
GROUP BY calendar_year, gender
HAVING calendar_year > 1990
ORDER BY calendar_year;