SELECT SUBSTR(j.job_id, 1, INSTR(j.job_id, '_') - 1) "pref",
       count(e.employee_id) "count",
       CASE WHEN COUNT(e.employee_id) = 0 THEN 'N' 
       ELSE 'Y' END "YN",
       AVG(e.salary) "avg_salary",
       count(CASE WHEN TO_CHAR(e.hire_date, 'YYYY') = 2002 THEN 1 ELSE NULL END) "cnt_2002"
FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id
GROUP BY SUBSTR(j.job_id, 1, INSTR(j.job_id, '_') - 1)
ORDER BY CASE WHEN SUBSTR(j.job_id, 1, INSTR(j.job_id, '_') - 1) = 'IT' THEN 0
              WHEN SUBSTR(j.job_id, 1, INSTR(j.job_id, '_') - 1) = 'MK' THEN 1 ELSE 2 END,
              AVG(e.salary) DESC;