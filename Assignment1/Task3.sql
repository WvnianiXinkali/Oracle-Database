 SELECT e.first_name || ' ' || e.last_name "full_name",
       TO_CHAR(e.salary, 'fm$999,999,999.00') "employee salary",
       CASE   WHEN e.email IS NULL THEN 'INVALID MAIL'
              WHEN INSTR(e.email, '@') = 0 THEN 'INVALID MAIL'
              ELSE SUBSTR(e.email, 1, INSTR(e.email, '@') - 1) END,
       TO_CHAR(sysdate, 'MM') * e.salary AS "Sum Salary",
       NVL(TO_CHAR(e.commission_pct), 'No Com')
  FROM employees e
  WHERE (e.department_id = 50
  OR MONTHS_BETWEEN(sysdate, e.hire_date) / 12 > 5)
  AND e.phone_number LIKE '515%'
  AND e.job_id NOT IN ('IT_PROG', 'PU_CLERK')
  AND e.salary BETWEEN 5000 AND 10000
  AND e.manager_id IS NOT NULL
  ORDER BY e.salary DESC, e.hire_date ASC;