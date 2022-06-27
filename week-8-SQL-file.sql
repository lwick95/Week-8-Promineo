SELECT count(birth_date) ,titles.title
FROM employees
INNER JOIN titles on employees.emp_no=titles.emp_no
WHERE birth_date > '1965-01-01'
GROUP BY title;

SELECT avg(salary) AS "average salary", titles.title 
FROM salaries
INNER JOIN titles ON salaries.emp_no=titles.emp_no
GROUP BY title;

SELECT sum(salaries.salary) AS 'Sum of salary' ,
departments.dept_name  AS 'Department'
FROM salaries 
INNER JOIN dept_emp ON dept_emp.emp_no=salaries.emp_no
INNER JOIN departments ON dept_emp.dept_no=dept_emp.dept_no
WHERE departments.dept_name = 'Marketing'
AND salaries.from_date >= '1990-01-01'
AND salaries.to_date <= '1992-01-01'
ORDER BY sum(salaries.salary);
