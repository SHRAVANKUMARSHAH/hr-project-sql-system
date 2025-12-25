Query 1: Employees per Project

SELECT
  p.project_name,
  COUNT(ep.emp_id) AS total_employees
FROM projects p
LEFT JOIN employee_projects ep
  ON p.project_id = ep.project_id
GROUP BY p.project_name
ORDER BY total_employees DESC;


Query 2: Monthly Salary Expense per Department

SELECT
  d.dept_name,
  SUM(e.salary) AS monthly_salary_cost
FROM departments d
JOIN employees e
  ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY monthly_salary_cost DESC;

Query 3: Employees Currently on Leave

SELECT
  e.name,
  l.leave_type,
  l.start_date,
  l.end_date
FROM leave_requests l
JOIN employees e
  ON l.emp_id = e.emp_id
WHERE CURRENT_DATE BETWEEN l.start_date AND l.end_date
AND l.status = 'Approved';

Query 4: Most Leave Applications (Last 6 Months)

SELECT
  e.name,
  COUNT(*) AS leave_count
FROM leave_requests l
JOIN employees e
  ON l.emp_id = e.emp_id
WHERE l.start_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY e.name
ORDER BY leave_count DESC;


Query 5: Departments With Active Projects

SELECT
  d.dept_name,
  COUNT(p.project_id) AS active_projects
FROM departments d
JOIN projects p
  ON d.dept_id = p.dept_id
WHERE p.end_date IS NULL
GROUP BY d.dept_name;


Query 6: Employees Without Any Project

SELECT
  e.name
FROM employees e
LEFT JOIN employee_projects ep
  ON e.emp_id = ep.emp_id
WHERE ep.emp_id IS NULL;