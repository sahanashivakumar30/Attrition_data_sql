# SQL Project 2 – Employee Attrition Analysis
## Overview
In this project, an employee attrition dataset was explored using SQL to identify key factors contributing to employee turnover. The analysis focuses on job characteristics, salary & compensation, and demographic trends to uncover patterns behind employee retention and attrition.

The goal of this project is to simulate real-world HR analytics and demonstrate SQL skills for data analysis.

## Source
Source: The dataset used in this project was sourced from Kaggle — https://www.kaggle.com/datasets/itssuru/hr-employee-attrition

## Dataset Description
The dataset contains 1,470 records of employees, capturing a range of information relevant to attrition analysis. It includes 35 variables- demographic details such as age, gender, marital status, and education level. Job-related data covers the employee's department, job role, job level, and years spent at the company. To understand employee sentiment, the dataset also includes satisfaction metrics like job satisfaction, environment satisfaction, and work-life balance. In addition, it provides engagement indicators such as job involvement, performance rating, and whether the employee works overtime. The target variable, attrition, indicates whether an employee has left the company or not.

## Tools & Technologies Used
- PostgreSQL – Database management and SQL querying
- Visual Studio Code (VS Code) – Development environment for writing and running SQL scripts
- GitHub – Version control and project hosting

## Areas Explored
### Demography – Attrition Segmentation by Employee Profile

This section performs demographic segmentation to evaluate attrition distribution across age bands, marital status, gender, and commuting distance. Overall attrition count and attrition rate were calculated to establish a baseline turnover metric before conducting subgroup analysis. Using grouped aggregations and calculated attrition rates, the analysis identifies high-risk demographic clusters and examines potential correlations between employee profile characteristics and turnover probability.
[View Code]-https://github.com/sahanashivakumar30/Attrition_data_sql/blob/main/sql%20code/1_demography.sql

### Job Characteristics – Operational Drivers of Attrition

This analysis investigates the impact of job-related variables on attrition, including department, job role, business travel and shift patterns. By applying conditional aggregation and categorical breakdowns, the study evaluates structural and organizational factors that may contribute to attrition across functional units.
[View Code]-https://github.com/sahanashivakumar30/Attrition_data_sql/blob/main/sql%20code/2_job_characteristics.sql
  
### Salary & Compensation – Compensation Sensitivity Analysis

This section examines compensation-related variables such as monthly income (bucketed using CASE statements), percentage salary hike, and stock option levels. Attrition rates are computed across compensation tiers to assess pay elasticity and determine whether lower compensation bands exhibit disproportionately higher turnover.
[View Code]-https://github.com/sahanashivakumar30/Attrition_data_sql/blob/main/sql%20code/3_salary_and_compensation.sql
