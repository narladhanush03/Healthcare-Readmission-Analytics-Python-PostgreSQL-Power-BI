CREATE TABLE healthcare_admissions (
    age VARCHAR(10),
    time_in_hospital INTEGER,
    n_lab_procedures INTEGER,
    n_procedures INTEGER,
    n_medications INTEGER,
    n_outpatient INTEGER,
    n_inpatient INTEGER,
    n_emergency INTEGER,
    medical_specialty VARCHAR(100),
    diag_1 VARCHAR(50),
    diag_2 VARCHAR(50),
    diag_3 VARCHAR(50),
    glucose_test VARCHAR(20),
    a1ctest VARCHAR(20),
    change VARCHAR(10),
    diabetes_med VARCHAR(10),
    readmitted VARCHAR(10),
    readmitted_flag INTEGER,
    age_numeric NUMERIC,
    total_visits INTEGER,
    high_utilization_flag INTEGER
);


SELECT COUNT(*) FROM healthcare_admissions;

--Overall Readmission Rate
SELECT 
    ROUND(SUM(readmitted_flag) * 100.0 / COUNT(*), 2) AS readmission_rate_percent
FROM healthcare_admissions;

--Total Admissions
SELECT COUNT(*) AS total_admissions
FROM healthcare_admissions;

--Average Length of Stay
SELECT ROUND(AVG(time_in_hospital), 2) AS avg_length_of_stay
FROM healthcare_admissions;

--Readmission by Age Group
SELECT 
    age,
    COUNT(*) AS total_patients,
    ROUND(SUM(readmitted_flag) * 100.0 / COUNT(*), 2) AS readmission_rate
FROM healthcare_admissions
GROUP BY age
ORDER BY readmission_rate DESC;

--High Utilization vs Readmission
SELECT 
    high_utilization_flag,
    COUNT(*) AS total_cases,
    ROUND(SUM(readmitted_flag) * 100.0 / COUNT(*), 2) AS readmission_rate
FROM healthcare_admissions
GROUP BY high_utilization_flag;

--Top Specialties by Readmission Rate
SELECT 
    medical_specialty,
    COUNT(*) AS total_cases,
    ROUND(SUM(readmitted_flag) * 100.0 / COUNT(*), 2) AS readmission_rate
FROM healthcare_admissions
GROUP BY medical_specialty
HAVING COUNT(*) > 50
ORDER BY readmission_rate DESC;

--BI-Ready View
CREATE VIEW vw_readmission_summary AS
SELECT 
    age,
    medical_specialty,
    high_utilization_flag,
    COUNT(*) AS total_cases,
    SUM(readmitted_flag) AS readmitted_cases,
    ROUND(SUM(readmitted_flag) * 100.0 / COUNT(*), 2) AS readmission_rate
FROM healthcare_admissions
GROUP BY age, medical_specialty, high_utilization_flag;







