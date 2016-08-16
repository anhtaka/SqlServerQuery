select 
ROW_NUMBER() OVER(ORDER BY emp_code DESC) RN,
emp_code,* from emp
