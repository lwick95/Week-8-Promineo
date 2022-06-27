SELECT sum(salaries.salary) AS 'Sum of salary' ,
departments.dept_name  AS 'Department'
FROM salaries 
INNER JOIN dept_emp ON dept_emp.emp_no=salaries.emp_no
INNER JOIN departments ON dept_emp.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Marketing'
AND salaries.from_date >= '1990-01-01'
AND salaries.to_date <= '1992-01-01'
ORDER BY sum(salaries.salary);