SELECT * 
FROM impact_of_remote_work_on_mental_health
;

-- How many employees have more than ten years of experience?--
SELECT *
FROM impact_of_remote_work_on_mental_health
WHERE Years_of_Experience > 10
;

-- Of all employees, which work in a hybrid setting?--
SELECT *
FROM impact_of_remote_work_on_mental_health
WHERE Work_Location = 'Hybrid'
;

-- What is the average age of employees grouped by gender?--
SELECT gender, AVG(age)
FROM impact_of_remote_work_on_mental_health
GROUP BY gender
;

-- Find all male employees over the age of thirty.--
SELECT *
FROM impact_of_remote_work_on_mental_health
WHERE age > 30
AND gender = 'Male'
;

-- Identify and classify the age groups of all employees.--
SELECT employee_id, 
gender,
age,
CASE 
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Middle Age'
    WHEN age >- 50 THEN "Old"
END AS Age_Bracket
FROM impact_of_remote_work_on_mental_health
;

-- What are the average hours in each industry--
SELECT industry, AVG(Hours_Worked_Per_Week)
FROM impact_of_remote_work_on_mental_health
GROUP BY industry
;

-- What is the average, maximum, and minimum age of employees by job role?--
SELECT job_role, AVG(age), MAX(age), MIN(age)
FROM impact_of_remote_work_on_mental_health
GROUP BY job_role
;

-- What is the average of the maximum ages of employees by gender?--
SELECT gender, AVG(`MAX(age)`)
FROM (SELECT gender, AVG(age), MAX(age), COUNT(age)
FROM impact_of_remote_work_on_mental_health
GROUP BY gender) AS Agg_Table
GROUP BY gender
;

-- What is the rating of work-life balance of employees, descending?--
SELECT work_life_balance_rating 
FROM impact_of_remote_work_on_mental_health
ORDER BY 1 DESC
;

-- Identify all indsutries and regions.--
SELECT industry, region
FROM impact_of_remote_work_on_mental_health
GROUP BY industry, region
;

-- Identify the stress levels of employees by job role.--
SELECT job_role, stress_level
FROM impact_of_remote_work_on_mental_health
GROUP BY job_role, stress_level
;

-- Does the mental health condition of each employee correlate to average hours worked?--
SELECT mental_health_condition, AVG(hours_worked_per_week)
FROM impact_of_remote_work_on_mental_health
GROUP BY Mental_Health_Condition
;

-- Does sleep quality have an affect on stress levels?--
SELECT *
FROM impact_of_remote_work_on_mental_health
WHERE sleep_quality = 'Poor'
AND stress_level = 'High'
;

-- What is the average social isolation rating of employees, based on work location?--
SELECT work_location, AVG(social_isolation_rating)
FROM impact_of_remote_work_on_mental_health
GROUP BY work_location
ORDER BY 1 ASC
;

-- Do employees have access to mental health resources, based on work location?--
SELECT work_location, access_to_mental_health_resources
FROM impact_of_remote_work_on_mental_health
GROUP BY work_location, Access_to_Mental_Health_Resources
;

