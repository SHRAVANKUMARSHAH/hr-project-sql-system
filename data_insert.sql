INSERT INTO departments (dept_name) VALUES
('Engineering'),
('HR'),
('Sales');


INSERT INTO employees (name, email, phone, gender, join_date, salary, dept_id)
VALUES
('Amit Sharma', 'amit@company.com', '9876543210', 'MALE', '2022-01-15', 75000, 1),
('Priya Singh', 'priya@company.com', '9876543222', 'FEMALE', '2021-06-10', 82000, 1),
('Rahul Verma', 'rahul@company.com', '9876543233', 'MALE', '2023-02-01', 50000, 2),
('Neha Patel', 'neha@company.com', '9876543244', 'FEMALE', '2020-09-12', 90000, 1),
('Suresh Kumar', 'suresh@company.com', '9876543255', 'MALE', '2022-11-05', 60000, 3),
('Anjali Mehta', 'anjali@company.com', '9876543266', 'FEMALE', '2021-04-18', 65000, 3);


INSERT INTO projects (project_name, start_date, end_date, dept_id)
VALUES
('HR Automation', '2023-01-01', NULL, 2),
('Sales Dashboard', '2023-03-15', NULL, 3),
('Backend Revamp', '2022-10-01', '2023-12-31', 1),
('Mobile App', '2023-06-01', NULL, 1);


INSERT INTO employee_projects (emp_id, project_id)
VALUES
(4, 2),
(4, 1),
(4, 3),
(6, 4),
(7, 2),
(8, 2),
(5, 1);


INSERT INTO leave_requests
(emp_id, start_date, end_date, reason, leave_type, status)
VALUES
(
  (SELECT emp_id FROM employees WHERE email = 'amit@company.com'),
  '2025-01-10',
  '2025-01-12',
  'High fever and weakness',
  'Sick',
  'Approve'
),
(
  (SELECT emp_id FROM employees WHERE email = 'priya@company.com'),
  '2025-02-05',
  '2025-02-07',
  'Family function at hometown',
  'Casual',
  'Approve'
),
(
  (SELECT emp_id FROM employees WHERE email = 'rahul@company.com'),
  '2025-03-01',
  '2025-03-03',
  'Personal work',
  'Paid',
  'Pending'
),
(
  (SELECT emp_id FROM employees WHERE email = 'neha@company.com'),
  '2024-12-20',
  '2024-12-30',
  'Annual vacation',
  'Paid',
  'Approve'
),
(
  (SELECT emp_id FROM employees WHERE email = 'suresh@company.com'),
  '2025-01-18',
  '2025-01-18',
  'Medical appointment',
  'Sick',
  'Rejected'
),
(
  (SELECT emp_id FROM employees WHERE email = 'anjali@company.com'),
  '2025-02-14',
  '2025-02-20',
  'Maternity leave',
  'Maternity',
  'Approve'
);



