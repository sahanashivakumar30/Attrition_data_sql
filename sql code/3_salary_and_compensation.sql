/*1. Monthly Income Range
   - Employees grouped into income brackets
   - Attrition comparison across salary ranges
   - Identification of income levels with higher turnover rates

2. Percentage Salary Hike
   - Distribution of employees by salary increase percentage
   - Attrition trends among employees with lower vs higher increments
   - Evaluation of whether pay growth impacts retention

3. Company Stock Options
   - Employee distribution based on stock option levels
   - Attrition comparison between employees with and without equity benefits
   - Assessment of long-term incentives on retention
*/

--1.MONTHLY INCOME RANGE:


WITH income_range AS (
SELECT 
	CASE 
		WHEN monthly_income<=5000 THEN 'Less than 5k'
		WHEN monthly_income<=10000 THEN '5 to 10k'
		WHEN monthly_income<=15000 THEN '10 to 15k'
		ELSE 'More than 15K'
	END AS monthly_income_range,
	attrition,
	COUNT(employee_count)
FROM 
    attrition_hr_data
GROUP BY 
    monthly_income_range,
    attrition)
SELECT *
FROM 
    income_range
ORDER BY 
	CASE 
		WHEN monthly_income_range = 'Less than 5k'THEN 1
		WHEN monthly_income_range='5 to 10k'THEN 2
		WHEN monthly_income_range='10 to 15k' THEN 3
		ELSE 4
	END, 
    attrition;

--2.PERCENTAGE SALARY HIKE:

WITH salary_hike AS(
SELECT 
	CASE 
		WHEN percent_salary_hike<=15 THEN 'Less than 15%'
		WHEN percent_salary_hike<=20 THEN '15% to 20%'
		ELSE 'More than 20%'
	END AS hike_range,
	attrition,
	COUNT(employee_count)
FROM 
    attrition_hr_data
GROUP BY 
    hike_range,
    attrition)
SELECT *
FROM 
    salary_hike 
ORDER BY 
	CASE 
		WHEN hike_range ='Less than 15%' THEN 1
		WHEN hike_range= '15% to 20%' THEN 2
		ELSE 3
	END, 
    attrition;



--3.COMPANY STOCK OPTIONS:

WITH company_stock_level AS(
SELECT 
	CASE 
		WHEN stock_option_level=0 THEN 'No Stock Option'
		WHEN stock_option_level=1 THEN 'Level 1'
		WHEN stock_option_level=2 THEN 'Level 2'
		ELSE 'Level 3'
	END AS stock_level,
	attrition,
	COUNT(employee_count)
FROM 
    attrition_hr_data
GROUP BY 
    stock_level,
    attrition)
SELECT *
FROM 
    company_stock_level
ORDER BY 
	CASE 
		WHEN stock_level ='No Stock Option' THEN 1
		WHEN stock_level= 'Level 1' THEN 2
		WHEN stock_level= 'Level 2' THEN 3
		ELSE 4
	END, 
    attrition;
