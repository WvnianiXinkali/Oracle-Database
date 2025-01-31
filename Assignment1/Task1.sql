SELECT e.first_name || q'[ ' - ' ]' || e.last_name "F and L", 
       NVL(TO_CHAR(e.department_id), 'X') "Department name",
       manager.first_name "Manager's Firs Name", 
       TO_CHAR(e.salary, '$99,999.00') "Manager's Salary", 
       managerManager.First_Name "Mm's First Name", 
       managerManager.Salary "Mm's salary"
FROM employees e
JOIN employees manager ON e.manager_id = manager.employee_id
JOIN employees managerManager ON manager.manager_id = managerManager.employee_id
WHERE managerManager.First_Name LIKE '%a%'
AND MOD(managerManager.Salary, 17) = 0;




