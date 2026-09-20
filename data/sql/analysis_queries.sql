-- Higher Education Data Analysis
-- SQL Analysis Queries
-- Reconstructed from the project datasets and documented analysis goals


-- 1. Tuition Trends Over Time
-- Compare average tuition across institution types by academic year.

SELECT
    academic_year,
    private_nonprofit_four_year,
    public_four_year,
    public_two_year
FROM average_tuition
ORDER BY academic_year;


-- 2. Highest In-State Tuition by University
-- Identify universities with the highest 2024-25 in-state tuition.

SELECT
    university,
    state,
    in_state_tuition_2024_25,
    out_state_tuition_2024_25
FROM college_tuition_by_state
ORDER BY in_state_tuition_2024_25 DESC;


-- 3. Financial Aid Distribution
-- Examine how financial support is distributed across student groups.

SELECT
    student_group,
    grant_share,
    work_study_share,
    loan_share,
    family_contribution_share,
    other_share,
    total_cost
FROM aid_distribution
ORDER BY loan_share DESC;


-- 4. Highest Loan Disbursements by State
-- Identify states with the largest loan disbursement amounts.

SELECT
    Location,
    Loan_Disbursements,
    Loan_Recipients,
    Avg_Loan_per_Student
FROM disbursements_by_state
ORDER BY Loan_Disbursements DESC;


-- 5. Cost Breakdown by Sector
-- Compare tuition, housing, and total costs across sectors and academic years.

SELECT
    sector,
    academic_year,
    tuition,
    housing_and_food,
    books_and_supplies,
    total_cost,
    pct_tuition,
    pct_housing_and_food,
    pct_other
FROM cost_distribution
ORDER BY academic_year, total_cost DESC;
