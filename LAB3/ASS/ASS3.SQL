create table if not exists students
(
    full_name varchar(20),
    primary key(full_name),
    age int,
    birth_date varchar(15),
    gender varchar(10),
    average_grade numeric(10, 2),
    nationality varchar(10),
    phone_number int,
    soc_category varchar(10)
);

create table if not exists instructors
(
    full_name varchar(20) NOT NULL,
    lang varchar(20),
    experience_level int,
    poss_rem_Less varchar(7)
);

create table if not exists relative_student
(
    full_name varchar(15),
    address varchar(8),
    phone_number integer default 100,
    position integer default 15
);

create table if not exists social_data
(
    school varchar(20),
    grad_data int,
    address varchar(8),
    region varchar(15),
    country varchar(12),
    gpa int,
    honors varchar(15)
);


