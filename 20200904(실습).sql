실습 8
SELECT c.region_id, r.region_name, c.country_name
FROM countries c JOIN regions r ON (c.region_id = r.region_id)
WHERE r.region_name IN ('Europe')

실습 9
SELECT c.region_id, r.region_name, c.country_name, city
FROM countries c JOIN regions r ON (c.region_id = r.region_id)
                 JOIN locations l ON (l.country_id = c.country_id)
WHERE r.region_name IN ('Europe')

실습 10
SELECT c.region_id, r.region_name, c.country_name, city, department_name
FROM countries c JOIN regions r ON (c.region_id = r.region_id)
                 JOIN locations l ON (l.country_id = c.country_id)
                 JOIN departments d ON (d.location_id = l.location_id)
WHERE r.region_name IN ('Europe')

실습 11
SELECT c.region_id, r.region_name, c.country_name, city, department_name, e.first_name || e.last_name NAME
FROM countries c JOIN regions r ON (c.region_id = r.region_id)
                 JOIN locations l ON (l.country_id = c.country_id)
                 JOIN departments d ON (d.location_id = l.location_id)
                 JOIN employees e ON (d.department_id = e.department_id)
WHERE r.region_name IN ('Europe') 

  

 
 실습 12
 SELECT e.employee_id, e.first_name || e.last_name, j.job_id, j.job_title
 FROM employees e JOIN jobs j ON (e.job_id = j.job_id)
 
 
 실습 13
 SELECT m.employee_id mgr_id, m.first_name || m.last_name as mgr_name, 
 e.employee_id ,e.first_name || e.last_name NAME,  e.job_id   , j.job_title
 FROM employees e JOIN jobs j ON (e.job_id = j.job_id)
                  JOIN  employees m  ON e.manager_id = m.employee_id; 
 