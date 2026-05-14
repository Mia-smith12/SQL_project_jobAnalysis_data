/* the most optimal skills to learn for data analyst roles
aka its in high demand and a high paying skill
targets skills that offer job security and financial benefits, 
offering insights for career development*/

WITH skills_demand AS(
    SELECT 
    skills_dim.skills,
    skills_dim.skill_id,
    count(skills_job_dim.job_id) AS demand_count
    From job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE job_title_short = 'Data Analyst' AND
    job_work_from_home = true AND
    salary_year_avg IS NOT NULL
    GROUP BY skills_dim.skill_id
    ),

average_salary AS(
    SELECT 
    ROUND(AVG(salary_year_avg), 2) as avg_salary,
    skills_job_dim.skill_id
    FROM job_postings_fact
    inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
    inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
    where job_work_from_home = true AND
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    group by 
    skills_job_dim.skill_id
)

SELECT
skills_demand.skills,
demand_count,
skills_demand.skill_id,
avg_salary
FROM skills_demand
INNER JOIN average_salary ON skills_demand.skill_id = average_salary.skill_id
ORDER BY demand_count DESC, 
         avg_salary DESC
LIMIT 25;