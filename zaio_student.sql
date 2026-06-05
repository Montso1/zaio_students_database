CREATE DATABASE zaio_bootcamp;

--Task 2 - Table creation.

CREATE TABLE zaio_students (
  id int PRIMARY KEY,
  full_name varchar(100),
  bootcamp_track varchar(50),
  cohort_year int DEFAULT (2026) ,
);
--Task 3 - Data ingestion.

Copy zaio_students from (full_name, bootcamp_track, cohort_year)
'C:\Users\Tsholanang\Documents\zaio_setup.sql\zaio_50_students_data.docx'
with(ormat csv, delimiter ',');

--Task 4 - Data verification.
select count (*) from zaio_students;

select bootcamp_track
count(*) as total_num_students
group by bootcamp_track
order by total_num_students desc;