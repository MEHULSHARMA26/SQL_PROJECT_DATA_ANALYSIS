-- Below are quick, high-signal insights into trends in top-paying data analyst jobs 👇

-- 💰 Key Trends in Top-Paying Data Analyst Skills
-- 🧠 1️⃣ Rare Skills = Higher Salary (Scarcity Premium)

-- Look at these:

-- Ruby on Rails

-- Erlang

-- Fortran

-- Julia

-- Dart

-- OpenCV

-- 👉 These have very low demand counts (1–7) but high average salaries.

-- Insight:

-- Companies pay more for niche or legacy skills because fewer analysts know them.

-- This is classic supply-demand economics in tech salaries.

-- 🏗️ 2️⃣ Engineering & Dev Skills Boost Analyst Salaries

-- Many top-paying skills are software engineering-related, not traditional analytics:

-- Ruby / Ruby on Rails

-- Vue

-- GraphQL

-- Sass

-- NPM

-- Dart

-- Selenium

-- 👉 This shows a clear trend:

-- High-paying “data analyst” roles often overlap with data engineering or full-stack roles.

-- Hybrid analyst + engineer profiles earn more.

-- 📊 3️⃣ Project Management & Productivity Tools Pay Surprisingly Well

-- Tools with high demand and good salaries:

-- Smartsheet

-- Workfront

-- Planner

-- Monday.com

-- Trello

-- Wrike

-- 📌 These are enterprise project & workflow tools, not coding tools.

-- Insight:
-- Top-paying analyst roles involve:

-- Stakeholder management

-- Project coordination

-- Enterprise operations

-- ➡️ Analysts are moving into business & product analytics roles.

-- 🧾 4️⃣ “Spreadsheet” and Outlook Paying High Is Not a Joke

-- Spreadsheet → demand 100, salary ~$78k

-- Outlook → demand 180, salary ~$80k

-- 😮 Surprising, but here’s why:

-- 👉 These skills appear in senior corporate roles, not entry-level analysts.

-- Interpretation:
-- Senior analysts use Excel + Outlook heavily in enterprise environments → high salary correlation.

-- 🧑‍💻 5️⃣ Legacy Languages Still Pay Big Money

-- Fortran

-- VB.NET

-- Erlang

-- These are used in:

-- Banking

-- Scientific computing

-- Telecom

-- Government systems

-- 💡 Old tech + critical systems = high pay + low supply

-- 🧬 6️⃣ R Ecosystem Still Valuable at Senior Level

-- Tidyverse (R ecosystem) has good salary and demand.

-- 👉 R is still strong in:

-- Research

-- Healthcare

-- Finance

-- Statistics-heavy roles

-- 📉 Interesting Observation (Very Important)
-- ❌ No SQL, Python, Tableau, Power BI in this top-paying list

-- This means:

-- These skills are table stakes (everyone has them)

-- They don’t differentiate salary at the top level

-- 👉 Salary growth comes from adjacent skills, not core analytics skills.

-- 🧠 Big Picture Salary Trends
-- ✅ Entry-Level Analysts

-- SQL

-- Excel

-- Python

-- Tableau

-- 💸 Mid-Level High Paying Analysts

-- Cloud tools

-- Data engineering tools

-- R / advanced Python

-- Workflow tools

-- 💰 Top-Paying “Analyst” Roles (in disguise)

-- Software engineering skills

-- Legacy systems

-- Enterprise project platforms

-- Hybrid analytics + engineering roles

-- 🚀 Strategic Career Takeaways for You

-- If your goal is high-paying data analyst jobs:

-- ✅ Step 1 (Mandatory)

-- SQL

-- Python

-- Excel

-- Tableau / Power BI

-- 🔥 Step 2 (Salary Booster Skills)

-- Cloud (Snowflake, Azure, AWS)

-- Data engineering tools

-- Git & scripting

-- 🧠 Step 3 (Top Salary Differentiators)

-- Software engineering skills (Ruby, JS frameworks)

-- Automation tools (Selenium)

-- Specialized domains (finance, healthcare)

-- 🧩 Hidden Insight from Your Data

-- 👉 High salary ≠ high demand
-- 👉 High demand ≠ high salary

-- The highest salaries go to rare skill combinations.

-- If You Want (Advanced Analysis)

-- I can:
-- ✅ Cluster these skills into categories and show salary by category
-- ✅ Plot demand vs salary scatter to show “golden skills”
-- ✅ Suggest a roadmap to reach $150k+ data analyst roles
-- ✅ Explain why “analyst” job titles are merging with engineer roles



SELECT 
    skills_dim.skills,
    COUNT(job_postings_fact.job_id) AS demand_count,
    ROUND(AVG(salary_year_avg),0) AS average_salary_per_skill
FROM
    job_postings_fact
INNER JOIN skills_job_dim 
    ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_postings_fact.job_title_short = 'Data Analyst'
    AND
    job_postings_fact.salary_year_avg IS NOT NULL
GROUP BY 
    skills_dim.skills
ORDER BY 
    average_salary_per_skill
LIMIT 25;



/*
-> What are the top skills based on the salary 
Look at the average salary associated with each skill for data analyst role
*/