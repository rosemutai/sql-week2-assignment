--Part 3 Date & Time Functions(PostgreSQL)
--Q1: Display first name and extract the year, month and date from date of birth
SELECT 
    first_name,
    EXTRACT(YEAR FROM date_of_birth) AS birth_year,
    EXTRACT(MONTH FROM date_of_birth) AS birth_month,
    EXTRACT(DAY FROM date_of_birth) AS birth_day
FROM students;


--Q2: Display first name, last name, date of birth and age ordered by age
SELECT 
    CONCAT(first_name, ' ', last_name) AS full_name,
    date_of_birth,
    EXTRACT(YEAR FROM AGE(date_of_birth)) AS age_years
FROM students
ORDER BY age_years DESC;


--Q3: Format exam date
SELECT 
    TO_CHAR(
        exam_date,
        'FMDay, FMDDth FMMonth YYYY'
    ) AS formatted_date
FROM exam_results;

