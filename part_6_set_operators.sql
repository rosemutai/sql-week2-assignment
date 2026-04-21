--Part 6 - SET Operators 
--Q1: Show a combined list of all unique cities from the 
-- students table and the patients table ordered alphabetically
SELECT city
FROM nairobi_academy.students
UNION
SELECT city
FROM city_hospital.patients

ORDER BY city ASC;


--Q2: Combine all student first names and all patient full names into one list.
SELECT 
    first_name AS name,
    'Student' AS source
FROM nairobi_academy.students
UNION ALL
SELECT 
    full_name AS name,
    'Patient' AS source
FROM city_hospital.patients;


--Q3: Find cities that appear in BOTH the students table and the patients table
SELECT city
FROM nairobi_academy.students
INTERSECT
SELECT city
FROM city_hospital.patients;



--Q4: Combines student names (labelled 'Student'), patient full names (labelled 'Patient'), 
-- and doctor full names (labelled 'Doctor') into one result ordered by the source label, then by name.
SELECT 
    first_name AS name,
    'Student' AS source
FROM nairobi_academy.students
UNION ALL
SELECT 
    full_name AS name,
    'Patient' AS source
FROM city_hospital.patients
UNION ALL
SELECT 
    full_name AS name,
    'Doctor' AS source
FROM city_hospital.doctors
ORDER BY 
    source,
    name;