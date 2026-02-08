/*
Question: What are the top paying data analyst roles
- Identify the top 10 highest paying Data analyst roles that are available remotely 
- Focuses on on job postings with specified salaries (remove nulls)
- Why ? Highlight the top-paying opportunities for data analyst, offering insights 
*/
WITH top_paying_jobs AS(
    SELECT
        jpf.job_id,
        jpf.job_title,
        jpf.salary_year_avg,
        cd.name
    FROM 
        job_postings_fact AS jpf
    LEFT JOIN company_dim as cd
        ON cd.company_id = jpf.company_id
    WHERE
        job_title_short = 'Data Analyst' 
        AND
        job_location = 'Anywhere'
        AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.* , 
    skills_dim.skills
FROM
    top_paying_jobs
INNER JOIN skills_job_dim 
    ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
    ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY 
    salary_year_avg DESC;




-- SELECT 
--     *
-- FROM
--     top_paying_jobs;