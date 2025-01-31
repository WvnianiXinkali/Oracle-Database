# SQL Queries  

## **Task 1: Department Information**  

Write a `SELECT` query that retrieves the following details for each department:  
- **department_name**: The name of the department.  
- **emp_cnt**: The number of employees in this department. If there are no employees, print `'N/A'`.  
- **job_cnt**: The number of distinct job positions in this department. If none exist, print `'N/A'`.  
- **sum_sal**: The total salary for this department. If `NULL`, print `'N/A'`.  
- **sum_min_max**: The sum of the minimum and maximum salaries in this department. If `NULL`, print `'N/A'`.  
- **phone_numbers**: A list of all employee phone numbers in this department, concatenated with `", "` and sorted in ascending salary order.  

### **Exclusions:**  
- Exclude departments **with names containing two or more words**.  
- Exclude departments **that are in a country where the `COUNTRY_ID` is not a prefix of `COUNTRY_NAME`** (case insensitive).  

### **Sorting Order:**  
1. **Ascending `COUNTRY_ID`**.  
2. **Descending `COUNTRY_NAME`**.  

---

## **Task 2: Job Position Information**  

Write a `SELECT` query that retrieves the following details for each job position:  
- **job_id**: The job position ID.  
- **name**: The name of the position.  
- **emp_cnt**: The number of employees with an **odd `EMPLOYEE_ID`** in this position. If none exist, print `'N/A'`.  
- **avg_sal**: The average salary of employees with an **even `EMPLOYEE_ID`** in this position. If none exist, print `'N/A'`.  
- **mx_cnt**: The number of employees earning the **maximum salary** for this position. If none exist, print `'N/A'`.  

### **Exclusions:**  
- Exclude job positions **with a `JOB_ID` shorter than 4 characters**.  
- Exclude positions **where the difference between `MAX_SALARY` and `MIN_SALARY` is the highest among all positions**.  

### **Sorting Order:**  
1. **Positions containing "IT" in their `JOB_ID` appear first**.  
2. **All other positions appear alphabetically**.  
