/*AREAS EXPLORED:

1. Department
   - Attrition trends by department
   - Identification of high-turnover functional areas
   
2. Overtime
   - Relationship between overtime work and employee turnover

3. Business Travel Frequency
   - Impact of travel requirements on attrition
   

4. Job Level
   - Attrition patterns across seniority levels
   - Comparison of junior vs senior employee turnover

5. Job Role
   - Employee distribution across job roles
   - Attrition comparison within each role

*/


--1.DEPARTMENT:

SELECT 
    department,
	attrition,
	COUNT(employee_count) AS emp
FROM 
    attrition_hr_data
GROUP BY 
    department, 
    attrition
ORDER BY 
    department;

--2.SHIFT TYPE:

SELECT 
	CASE 
		WHEN over_time = false THEN 'Regular shift'
		WHEN over_time = true THEN 'Overtime shift'
		ELSE 'n/a'
	END AS shift_type,
	attrition,
	COUNT(employee_count) AS emp
FROM
    attrition_hr_data
GROUP BY 
    shift_type, 
    attrition
ORDER BY 
    shift_type DESC, 
    attrition;


--3.BUSINESS TRAVEL:

SELECT 
    business_travel,
	attrition,
	COUNT(employee_count) AS emp
FROM 
    attrition_hr_data
GROUP BY 
    business_travel, 
    attrition
ORDER BY  
    business_travel,
    attrition;


--4.JOB LEVEL:

SELECT 
    job_level,
	attrition,
	COUNT(employee_count) AS emp
FROM 
    attrition_hr_data
GROUP BY 
    job_level, 
    attrition
ORDER BY  
    job_level,
    attrition;

--5.JOB ROLE:

SELECT 
    job_role,
	attrition,
	COUNT(employee_count) AS emp
FROM 
    attrition_hr_data
GROUP BY 
    job_role, 
    attrition
ORDER BY  
    job_role,
    attrition;

