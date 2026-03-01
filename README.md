# Healthcare Readmission & Utilization Analytics

##  Project Overview

This project analyzes hospital readmission patterns and patient utilization behavior using a structured healthcare dataset.  

The objective is to identify key factors influencing readmission rates and provide actionable insights through an interactive Power BI dashboard.

The solution follows a real-world analytics workflow:

Python → PostgreSQL → SQL → Power BI

---

##  Tech Stack

- Python (Pandas, NumPy)
- PostgreSQL
- SQL
- Power BI
- DAX

---

##  Project Workflow

### 1 Data Preparation (Python)

- Loaded and cleaned healthcare dataset
- Standardized column names
- Converted categorical readmission values into binary flag
- Created engineered features:
  - `age_numeric`
  - `total_visits`
  - `high_utilization_flag`
- Exported cleaned dataset for database loading

---

### 2️ Database Layer (PostgreSQL)

- Created structured table: `healthcare_admissions`
- Loaded cleaned dataset using pgAdmin import
- Wrote analytical SQL queries:
  - Overall readmission rate
  - Readmission by age group
  - Readmission by clinical specialty
  - Utilization vs readmission comparison
- Created SQL view for aggregated reporting (optional architectural layer)

---

### 3️ Business Intelligence Layer (Power BI)

Developed an interactive executive dashboard with:

#### 🔹 KPI Metrics
- Total Admissions
- Readmission Rate %
- Average Length of Stay
- Average Medications per Admission

#### 🔹 Analytical Visuals
- Readmission Rate by Age Group
- Readmission Rate by Clinical Specialty
- Readmission Rate by Utilization Category
- Patient Utilization vs Length of Stay (Scatter Analysis)

#### 🔹 Interactive Filters
- Age Group
- Clinical Specialty
- Utilization Category

---

##  Key Insights

- High utilization patients show significantly higher readmission rates.
- Older age groups demonstrate increased readmission likelihood.
- Certain clinical specialties exhibit elevated readmission patterns.
- Increased total healthcare visits correlate with higher readmission probability.

---

##  Business Impact

This dashboard enables:

- Identification of high-risk patient segments
- Clinical resource optimization
- Reduction of preventable readmissions
- Data-driven decision-making in healthcare operations

---

