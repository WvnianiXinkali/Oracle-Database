SELECT d.department_name, CASE WHEN COUNT(e.employee_id) = 0 THEN 'N/A'
                        ELSE TO_CHAR(COUNT(e.employee_id))
                        END "emp_cnt",
                        CASE WHEN COUNT(DISTINCT e.job_id) = 0 THEN 'N/A'
                        ELSE TO_CHAR(COUNT(DISTINCT e.job_id))
                        END "job_cnt",
                        NVL(TO_CHAR(SUM(e.salary)), 'N/A') "sum_sal",
                        NVL(TO_CHAR(MIN(e.salary) + MAX(e.salary)), 'N/A') "sum_min_max",
                        LISTAGG(e.phone_number, ', ')
                        WITHIN GROUP (ORDER BY e.phone_number) "phone_numbers"
                        
                        
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
JOIN locations l ON l.location_id = d.location_id
JOIN countries c ON c.country_id = l.country_id
WHERE d.department_name NOT LIKE '% %'
AND LOWER(c.country_name) LIKE CONCAT(LOWER(c.country_id), '%')
GROUP BY d.department_name, c.country_id, c.country_name
ORDER BY c.country_id ASC, c.country_name DESC;

