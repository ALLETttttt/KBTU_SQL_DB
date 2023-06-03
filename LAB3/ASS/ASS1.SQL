create database SQL;

create table if not exists ddml(
    id serial primary key,
    name varchar(100),
    university varchar(100)
);

alter table ddml
    add salary integer default 1;

alter table ddml
    alter column university type varchar(200);

alter table ddml
    alter column salary set default 1000;

insert into ddml (name, university, salary)
values ('Bakdaulet', 'KBTU', 500);

insert into ddml (name, university, salary)
values ('Erbolka', 'KBTU', 200);

truncate table ddml;

drop table ddml;

alter table ddml
    rename to newddml;

insert into newddml (name, university, salary)
values ('Zholbarys', 'KBTU', 1000);

delete
from ddml
where salary=500;

update newddml
set salary = 5000
where salary = 500;

create table if not exists right_table
(
    id serial primary key,
    rightt varchar(100)
);

create table if not exists left_table
(
    id serial primary key,
    leftt char(100)
);

insert into left_table (leftt)
values ('RS8');

insert into right_table (rightt)
values ('RS7');

select * from newddml;
select * from left_table;
select * from right_table;

select *
from left_table
inner join right_table
using (id);