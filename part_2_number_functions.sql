--Part 2 Number Functions  
--Q1: Display exam results with marks rounded 
SELECT 
    result_id,
    student_id,
    subject_id,
    marks,
    exam_date,
    grade,
    ROUND(marks, 1) AS rounded_1dp,
    CEIL(marks / 10.0) * 10 AS rounded_up_10,
    FLOOR(marks) AS rounded_down
FROM exam_results;

--Q2: Display exam results count, highest, lowest and sum of marks
SELECT 
    COUNT(*) AS total_results,
    ROUND(AVG(marks), 2) AS average_mark,
    MAX(marks) AS highest_mark,
    MIN(marks) AS lowest_mark,
    SUM(marks) AS total_marks
FROM exam_results;

--Q3: Display result id, marks with the marks added by 10% as boosted_mark
SELECT 
    result_id,
    marks,
    ROUND(marks * 1.10) AS boosted_mark
FROM exam_results;
