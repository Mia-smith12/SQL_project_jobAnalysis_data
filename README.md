# Introduction
Dive into the data job market with a focus on data analyst roles, uncovering the highest‑paying positions, the most in‑demand skills, and where strong demand aligns with top salaries in analytics.

SQL queries - check them out here:
 [projectSql folder](/projectSql/)

 # Background
 Driven by a desire to better understand the data analyst job market, this project focuses on identifying the highest‑paying roles and the most in‑demand skills, helping others quickly pinpoint the best opportunities.

 ### Questions I wanted to answer through SQL queries were:
 1. What are the top paying data anayst jobs?
 2. What skills are required for these top-paying jobs?
 3. What skills are most in demand for data analysts?
 4. Which skills are associated woth higher salaries?
 5. What are the most optilam skills to learn?

 # Tools I used
 - **SQL**: powered the core of my analysis, helping me dig into the database and uncover key insights.

- **PostgreSQL**: acted as the backbone of my data storage and management, perfectly suited for handling structured job‑market data.

- **Visual Studio Code**: provided a streamlined workspace for writing, testing, and refining SQL queries.

- **Git & GitHub**: ensured clean version control and made it easy to share and track progress throughout the project.

# The Analysis
Each query was designed to answer a distinct question about the data analyst job market.

Here is how I aproached each problem:

1. I queried the job postings database for remote data analyst roles, filtered out listings without salary data, joined company information, and sorted the results by highest average yearly salary **to identify the top‑paying positions**.

2. I identified the top‑paying data analyst roles by first selecting the ten highest‑salary remote positions, then joining those jobs with their associated skill requirements. This allowed me to analyze which technical skills consistently appear in the highest‑earning roles and highlight the core tools that top employers value most.

3. I analyzed all remote data analyst job postings and counted how often each skill appeared. By grouping skills and ranking them by frequency, I identified the top five most in‑demand skills for remote data analyst roles.

4. I analyzed remote data analyst job postings by joining salary data with associated skills, then calculated the average salary for each skill. Ranking these skills by their average pay revealed which technical abilities are most financially rewarding for data analysts to learn or improve.

5. I combined skill demand and salary data to find the most valuable skills for data analysts—those that are both highly requested by employers and associated with higher‑than‑average salaries. By calculating demand counts and average salaries separately, then joining them together, I identified the skills that offer the strongest mix of job security and earning potential.

Here’s a quick view of the top data analyst roles from 2023, along with the skills most in demand:

- **Wide Salary Range**: The top 10 roles span from $184,000 to $650,000, highlighting the strong earning potential in the field.

- **Diverse Employers**: Companies such as SmartAsset, Meta, and AT&T offer these high‑paying positions, showing broad industry demand.

- **Varied Job Titles**: Roles range from Data Analyst to Director of Analytics, reflecting the wide spectrum of responsibilities and specializations available.
  
- **In Demand Skills**:  Core skills across these roles include SQL, Python, Tableau, and Excel, which remain foundational for analytics work.
  
# What I learned
- **Complex Query Building**

- **Data Aggregation** 
- **Analytical Skillset**

# Closing Thoughts
This project strengthened my SQL expertise and offered meaningful insights into the data analyst job market. The results help highlight which skills to prioritize for both career growth and job searching. By focusing on high‑demand, high‑salary skills, aspiring analysts can better position themselves in a competitive field. Overall, the analysis underscores the value of continuous learning and staying aligned with evolving trends in data analytics.
