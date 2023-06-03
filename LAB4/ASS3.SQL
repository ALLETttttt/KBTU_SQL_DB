-- (a)
select student.*
from student, takes
where student.id = takes.id and student.dept_name = 'Comp. Sci.' and takes.grade in ('A', 'A-')
order by name;
-- (b)
select distinct advisor.*
from advisor, takes
where advisor.s_id = takes.id and takes.grade in ('B+', 'A-', 'A');
-- (c)
select distinct department.*
from department, student, takes
where department.dept_name = student.dept_name and takes.grade not in ('F', 'C');
-- (d)
select distinct instructor.*
from instructor, takes, teaches
where instructor.id = teaches.id and
      teaches.course_id = takes.course_id and
      teaches.sec_id = takes.sec_id and
      teaches.semester = takes.semester and
      teaches.year = teaches.year and takes.grade not in ('A', 'A-');
-- (e)
select distinct course.*
from course, section, time_slot
where course.course_id = section.course_id and
      time_slot.time_slot_id = section.time_slot_id and
      time_slot.end_hr < 13;