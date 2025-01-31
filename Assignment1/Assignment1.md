# SQL Queries  

## **1) Employee and Manager Details**  

Write a `SELECT` query that retrieves the following information:  
- **F and L**: The employee's **first name** and **last name**, concatenated with ' - '.  
- **Department Name**: The department name (if it exists, otherwise print 'X').  
- **Manager's Name**.  
- **Salary**: Displayed in the format **$12,000.00**.  
- **Manager's Manager Name**.  
- **Manager's Manager Salary**.  

### **Conditions:**  
Only select employees **whose manager’s manager name contains the letter 'a'** (case insensitive) **and whose manager’s manager salary is a multiple of 17**.  

**Points:** *5*  

---

## **2) Select Employees Based on Multiple Conditions**  

Select all employees who satisfy the following conditions:  
- Work in department **50** (`employees.department_id`) **OR** have worked in their current position for at least **5 years**.  
- Their **phone number starts with '515'**.  
- They do **not** work in positions **'IT_PROG'** or **'PU_CLERK'**.  
- Their **salary is between $5,000 and $10,000**.  
- They **have a manager**.  

### **Output Fields:**  
- **Full Name**: Employee's first and last name concatenated with a **single space** (`full_name`).  
- **Formatted Salary**: Salary formatted as **$XXX,XXX,XXX.XX** (without extra spaces).  
- **Email Prefix**: The part of the employee's email **before '@'**. If the email is **empty or does not contain '@'**, print **'INVALID MAIL'**.  
- **Total Salary Earned This Year**: If the current year has **X months elapsed**, print **salary * X**.  
- **Commission**: If the employee **has no commission**, print `'No Com'`.  

### **Sorting Order:**  
1. **Descending salary**.  
2. **Ascending hire date** (earliest first).  

**Points:** *5*  

---

## **3) Job Positions and Prefix Analysis**  

The **jobs** table contains employee job positions, such as:  
`IT_PROG`, `PU_CLERK`, `MK_MAN`, `MK_REP`, etc.  

Write a query to retrieve the following information:  
- **Job Prefix (`pref`)**: The substring of `JOB_ID` before the **first underscore (`_`)**. If no underscore exists, use the entire value.  
- **Employee Count (`count`)**: The number of employees in positions with this prefix.  
- **Active Prefix (`yn`)**: If **any** position with this prefix has employees, print **'Y'**, otherwise print **'N'**.  
- **Average Salary (`avg_salary`)**: The average salary of employees in this prefix.  
- **Employees Hired in 2002 (`cnt_2002`)**: The number of employees hired in **2002** under this prefix.  

### **Sorting Order:**  
1. **IT-prefix positions first**.  
2. **MK-prefix positions second**.  
3. **All other prefixes sorted by average salary in descending order**.  

**Points:** *5*  
