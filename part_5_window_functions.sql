--Part 5 - Window Functions 
--Q1: Assign a unique rank to each exam result, ordered from highest mark to lowest. 
SELECT 
    result_id,
    student_id,
    marks,
    ROW_NUMBER() OVER (ORDER BY marks DESC) AS row_num
FROM exam_results;


--Q2: Display exam results ordered by marks descending. 
SELECT 
    result_id,
    student_id,
    marks,
    RANK() OVER (ORDER BY marks DESC) AS rank_position,
    DENSE_RANK() OVER (ORDER BY marks DESC) AS dense_rank_position
FROM exam_results;


--Q3: Display result_id, marks, and band with exam results divided into 3 performance bands . 
SELECT 
    result_id,
    marks,
    NTILE(3) OVER (ORDER BY marks DESC) AS band
FROM exam_results;


--Q4: Show student_id, marks, and student_avg rounded to 2 decimal places.
SELECT 
    student_id,
    marks,
    ROUND(AVG(marks) OVER (PARTITION BY student_id), 2) AS student_average
FROM exam_results;


--Q5: Show each exam result alongside the previous result's marks for the same student.
SELECT
    result_id,
    student_id,
    marks,
    exam_date,
    LAG(marks) OVER (
        PARTITION BY student_id
        ORDER BY exam_date
    ) AS previous_marks,
    marks - LAG(marks) OVER (
        PARTITION BY student_id
        ORDER BY exam_date
    ) AS improvement
FROM exam_results;
