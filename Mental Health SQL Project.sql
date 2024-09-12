SELECT *
FROM mentalhealth;

-- What is the average cgpa of all students?--
SELECT AVG(cgpa)
FROM mentalhealth;

-- What is the sum of the academic workload of all students?--
SELECT SUM(academic_workload)
FROM mentalhealth;

-- What is the minimum and maximum recorded study statisfaction?
SELECT MIN(study_satisfaction), MAX(study_satisfaction)
FROM mentalhealth;

-- What is the sum of recorded academic pressure among students by university?
SELECT university, SUM(academic_pressure)
FROM mentalhealth
GROUP BY university
ORDER BY 1 DESC;

-- What is the minimum and maximum scores of isolation reported by students?
SELECT MIN(`isolation`), MAX(`isolation`)
FROM mentalhealth;

-- What is the average depression score by degree major?
SELECT degree_major, AVG(depression)
FROM mentalhealth
GROUP BY degree_major
HAVING AVG(depression) > 2;

-- What is the average age of students by gender?--
SELECT gender, AVG(age) AS avg_age
FROM mentalhealth
GROUP BY gender;

-- Show all students who's stress relief activities involve outdoor activities--
SELECT *
FROM mentalhealth
WHERE stress_relief_activities LIKE 'outdoor activities%'
;

-- What is the number of students with future insecurity by degree level?
SELECT degree_level, COUNT(future_insecurity)
FROM mentalhealth
GROUP BY degree_level
ORDER BY 1 ASC;







