-- (a)
select instructor.dept_name, avg(salary)
from department, instructor
where department.dept_name = instructor.dept_name
group by instructor.dept_name;
-- (b)
select building, count(building)
from department, course
where department.dept_name = course.dept_name
group by building
having count(building) = (select count(building) from department, course
                                                 where department.dept_name = course.dept_name
                                                 group by building
                                                 order by count(building) desc limit 1) order by count(building) desc;
-- (c)
select building, count(building)
from department, course
where department.dept_name = course.dept_name
group by building
having count(building) = (select count(building) from department, course
                                                 where department.dept_name = course.dept_name
                                                 group by building
                                                 order by count(building) limit 1) order by count(building);
-- (d)
select student.id, name, count(takes.id)
from takes, student
where takes.id = student.id and student.dept_name = 'Comp. Sci.'
group by student.id, name
having count(takes.id) > 3;
-- (e)
select id, name
from instructor, department
where department.building = 'Taylor' and instructor.dept_name = department.dept_name;
-- (f)
select *
from instructor
where dept_name in ('Biology', 'Philosophy', 'Music');
-- (g)
(select instructor.*
from instructor, teaches
where instructor.id = teaches.id and teaches.year = 2018) except
                                                         (select instructor.* from instructor, teaches
                                                          where instructor.id = teaches.id and teaches.year = 2017);







