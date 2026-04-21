
--Part 1 String Functions 
--Q1: Display student full name in uppercase and city in lowercase
SELECT 
    UPPER(first_name || ' ' || last_name) AS upper_name,
    LOWER(city) AS lower_city
FROM students;

--Q2: Display student first name and length of first name ordered by length of first name
SELECT 
    first_name,
    LENGTH(first_name) AS length_of_name
FROM students
ORDER BY length_of_name DESC;

--Q3: Display subject_name and subject's short name
SELECT 
    subject_name,
    SUBSTRING(subject_name FROM 1 FOR 4) AS short_name,
    LENGTH(subject_name) AS length_of_name
FROM subjects;

--Q4: Display first name and last name as student's summary
SELECT 
    CONCAT(first_name, ' ', last_name, 
           ' is in ', class, 
           ' and comes from ', city) AS student_summary
FROM students;