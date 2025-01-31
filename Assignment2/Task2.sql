SELECT j.job_id "job_id", j.job_title "name", 
                          CASE WHEN COUNT( CASE WHEN MOD(e.employee_id, 2) = 1 THEN 1 
                          ELSE NULL END ) = 0 THEN 'N/A'
                            ELSE TO_CHAR(COUNT( CASE WHEN MOD(e.employee_id, 2) = 1 THEN 1 
                          ELSE NULL END)) END "emp_cnt",
                          NVL(TO_CHAR(AVG( CASE WHEN MOD(e.employee_id, 2) = 0 THEN e.salary 
                          ELSE NULL END)), 'N/A') "emp_cnt",
                          COUNT( CASE WHEN e.salary = (SELECT MAX(e1.salary) FROM jobs j1 LEFT JOIN employees e1 ON j1.job_id = e1.job_id WHERE j1.job_id = j.job_id GROUP BY j1.job_id) THEN 1 
                          ELSE NULL END) "mx_cnt"
FROM jobs j
LEFT JOIN employees e ON j.job_id = e.job_id
WHERE LENGTH(j.job_id) >= 4
      AND j.job_id <> (SELECT e2.job_id FROM employees e2 WHERE (SELECT MAX(e4.salary) - MIN(e4.salary) FROM employees e4 WHERE e4.job_id = e2.job_id GROUP BY e4.job_id) = (SELECT MAX(MAX(e3.salary) - MIN(e3.salary)) FROM employees e3 GROUP BY e3.job_id) GROUP BY e2.job_id)
GROUP BY j.job_id, j.job_title
ORDER BY CASE WHEN j.job_id LIKE '%IT%' THEN TO_CHAR(0)
         ELSE j.job_id END ASC;