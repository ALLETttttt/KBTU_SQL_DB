-- (a)
select title
from course
where dept_name = 'Biology'
    and credits > 3;
-- (b)
select *
from classroom
where building = 'Watson'
    or building = 'Painter';
-- (c)
select *
from course
where dept_name = 'Comp. Sci.';
-- (d)
select course.*
from section, course
where course.course_id = section.course_id and section.semester = 'Spring';
-- (e)
select *
from student
where tot_cred > 45 and tot_cred < 85;
-- (f)
select name
from student
where name LIKE '%a'
OR name LIKE '%e'
OR name LIKE '%i'
OR name LIKE '%o'
OR name LIKE '%u';
-- (g)
select *
from prereq, course
where course.course_id = prereq.course_id and prereq_id = 'EE-181';





