-- get the info on employee 1 (id = 1) about his/her company and his/her phones
SELECT e.id, e.first_name, e.age, p.phone, c.name AS company_name, c.country_code
FROM employees AS e
JOIN companies AS c ON e.company_id = c.id
JOIN phones AS p ON p.employee_id = e.id
LIMIT 5;






