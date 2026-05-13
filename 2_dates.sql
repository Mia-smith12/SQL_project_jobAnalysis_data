with remote_job_skills as (
select count(*)as skill_count, skill_id
from public.skills_job_dim
 join job_postings_fact ON skills_job_dim.job_id = job_postings_fact.job_id
where job_work_from_home = true
And  job_title like '%Data%Analyst%'
group by skill_id )

select skills,skill_count, skills_dim.skill_id
FROM remote_job_skills
join public.skills_dim on skills_dim.skill_id = remote_job_skills.skill_id
order by skill_count DESC
limit 5;

WITH q1 AS (
    SELECT * FROM january_jobs
    UNION ALL
    SELECT * FROM february_jobs
    UNION ALL
    SELECT * FROM march_jobs)

select skills_dim.skills, skills_dim.skill_id, salary_year_avg, skills_dim.type
from skills_job_dim
join q1 on skills_job_dim.job_id = q1.job_id
join skills_dim on skills_dim.skill_id = skills_job_dim.skill_id
where q1.salary_year_avg > 70000
order by salary_year_avg asc;
 