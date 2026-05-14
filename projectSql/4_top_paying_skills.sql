/* top skills based on salary
reveal how different skills impact salary levels. 
identify the most financially rewarding skills to acquire or improve*/


SELECT skills,
ROUND(AVG(salary_year_avg), 2) as avg_salary
FROM job_postings_fact
inner join skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
where job_work_from_home = true AND
job_title_short = 'Data Analyst' AND
salary_year_avg IS NOT NULL
group by 
skills
order by 
avg_salary DESC
limit 25;