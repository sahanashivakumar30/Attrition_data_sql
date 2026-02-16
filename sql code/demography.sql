/*AREAS EXPLORED:

1. Overall Attrition Distribution
   - Total count of employees by attrition status
   - Overall attrition rate percentage

2. Demographic Analysis – Age
   - Employees grouped into age ranges
   - Attrition comparison within each age bucket

3. Marital Status Analysis
   - Employee count by marital status
   - Attrition breakdown across marital categories

4. Distance from Home Analysis
   - Employees grouped into distance ranges (km)
   - Attrition trends based on commute distance*/




--1. Attrition and Retention numbers:


SELECT 
    attrition,
	COUNT(*) AS total
FROM
    attrition_hr_data
GROUP BY 
    attrition;

 
--Attrition Percentage

SELECT 
    COUNT( CASE WHEN attrition =true THEN 1 END)*100/COUNT(*) AS attrition_rate
FROM
    attrition_hr_data;




--DEMOGRAPHY

--2. AGE RANGE:


WITH age_range_emp AS(
SELECT 
	CASE 
 		WHEN age<=21 THEN 'Less than 21'
		WHEN age<=30 THEN '21 to 30'
		WHEN age<=40 THEN '31 to 40'
		WHEN age<=50 THEN '41 to 50'
		WHEN age<=60 THEN '51 to 60'
		ELSE '60 and above'
    END AS age_range,
COUNT(employee_count) AS total_emp,
    attrition
FROM
    attrition_hr_data
GROUP BY 
    age_range,attrition)
SELECT *
FROM
    age_range_emp
ORDER BY 
    CASE 
        WHEN age_range ='Less than 21' THEN '1'
	     WHEN age_range ='21 to 30' THEN '2'
	    WHEN age_range ='31 to 40' THEN '3'
	    WHEN age_range ='41 to 50' THEN '4'
	    WHEN age_range ='51 to 60' THEN '5'
	    ELSE 6
    END;



--ATTRITION AND MARITAL STATUS:

SELECT 
	marital_status,
	attrition,
	COUNT(employee_count) AS emp_count
FROM 
    attrition_hr_data
GROUP BY 
    marital_status,attrition
ORDER BY 
    marital_status DESC;


--DISTANCE FROM WORK PLACE AND HOME (IN KM RANGE): 

WITH distance_range AS(
SELECT 
	CASE 
		WHEN distance_from_home<=5 THEN 'Less than 5 km'
		WHEN distance_from_home<=10 THEN '5 to 10 kms'
		WHEN distance_from_home<=20 THEN '10 to 20 kms'
		ELSE 'Greater than 20 kms'
	END AS distance_range,
	attrition,
	COUNT(employee_count)
FROM 
    attrition_hr_data
GROUP BY 
    distance_range,attrition)
SELECT *
FROM 
    distance_range
ORDER BY 
	CASE 
		WHEN distance_range ='Less than 5 km' THEN 1
		WHEN distance_range='5 to 10 kms' THEN 2
		WHEN distance_range='10 to 20 kms' THEN 3
		ELSE 4
	END;
