CREATE DATABASE datajobsng;
USE datajobsng; 
SELECT * FROM datajobs LIMIT 10;
SELECT * FROM datajobs_desc_requ LIMIT 10;


#total jobs
select count(*) as total_jobs
from datajobs;

#unique job titles
select distinct title
from datajobs; 

#count of jobs by location
select location, count(*) as job_count
from  datajobs
group by location
order by job_count desc; 

#count of job title by job types
select job_type, count(*) as job_type_count
from datajobs
group by job_type
order by 2 desc;

#top 5 most demand job title
select title, count(*) as title_count
from datajobs
group by title
order by title_count desc
limit 5;

#count of job_types per location
select location, job_type, count(*) as job_count
from datajobs
group by location, job_type
order by location, job_count desc;

#locations with more than 1 job
select location, count(*) as job_count
from datajobs
group by location
having count(*) >1; 

select
	case 
		when title like '%Analyst%' then 'Analyst'
        when title like '%Engineer%' then 'Engineer'
        when title like '%Scientist%' then 'Scientist'
        else 'Other'
	end as role_category,
    count(*) as job_count
from datajobs
group by role_category;

