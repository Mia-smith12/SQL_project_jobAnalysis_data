/* the most in demand skills for data analyst roles*/

with remote_job_skills as (
select 
count(*) as skill_count, 
skill_id
from public.skills_job_dim
inner join job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
where 
job_work_from_home = true
And  job_title like '%Data%Analyst%'
group by 
skill_id )

select 
skills,
skill_count, 
skills_dim.skill_id
FROM remote_job_skills
inner join public.skills_dim on skills_dim.skill_id = remote_job_skills.skill_id
order by skill_count DESC
limit 5;