/* the most in demand skills for data analyst roles*/

WITH remote_job_skills as (
SELECT 
count(*) as skill_count, 
skill_id
FROM public.skills_job_dim
inner join job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
WHERE 
job_work_from_home = true
And  job_title like '%Data%Analyst%'
GROUP BY skill_id )

SELECT 
skills,
skill_count, 
skills_dim.skill_id
FROM remote_job_skills
inner join public.skills_dim on skills_dim.skill_id = remote_job_skills.skill_id
ORDER BY skill_count DESC
limit 5;