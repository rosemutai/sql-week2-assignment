--Part 4 – SQL JOINS
--Q1: Show each appointment alongside the patient's full name, the doctor's full name, 
-- the appointment date, and the diagnosis. 

SELECT 
    p.full_name AS patient_name,
    d.full_name AS doctor_name,
    a.appt_date,
    a.diagnosis
FROM appointments a
INNER JOIN patients p 
    ON a.patient_id = p.patient_id
INNER JOIN doctors d 
    ON a.doctor_id = d.doctor_id;

--Q2: Display all patients and if they have an appointment, show the appointment date and diagnosis
SELECT 
    p.full_name AS patient_name,
    a.appt_date,
    a.diagnosis
FROM patients p
LEFT JOIN appointments a
    ON p.patient_id = a.patient_id;


--Q3: Display all doctors - and if they have seen a patient, show the patient name. 
SELECT 
    d.full_name AS doctor_name,
    p.full_name AS patient_name
FROM patients p
RIGHT JOIN appointments a
    ON p.patient_id = a.patient_id
RIGHT JOIN doctors d
    ON a.doctor_id = d.doctor_id;

--Q4: Display all patients who have NEVER had an appointment 
SELECT 
    p.full_name,
    p.city
FROM patients p
LEFT JOIN appointments a
    ON p.patient_id = a.patient_id
WHERE a.patient_id IS NULL;


--Q5: Display each appointment with: the patient name, the doctor name, and the medicine prescribed (from prescriptions).
-- Show appointment_id, patient name, doctor name, and medicine_name. 
SELECT 
    a.appointment_id,
    p.full_name AS patient_name,
    d.full_name AS doctor_name,
    pr.medicine_name
FROM appointments a
INNER JOIN patients p
    ON a.patient_id = p.patient_id
INNER JOIN doctors d
    ON a.doctor_id = d.doctor_id
INNER JOIN prescriptions pr
    ON a.appointment_id = pr.appointment_id;