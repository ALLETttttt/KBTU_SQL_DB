create table if not exists office
(
    building varchar(15),
    budget numeric(12, 2),
    office_name varchar(20),
    primary key (office_name)
);

create table if not exists course
(
    title       varchar(50),
    office_name varchar(20),
    foreign key (office_name) references office (office_name),
    credits     numeric(2),
    course_id   varchar(7),
    primary key (course_id)
);

create table if not exists instructor
(
    name varchar(20),
    office_name varchar(20),
    foreign key (office_name) references office(office_name),
    salary numeric(8, 2),
    id varchar(5),
    primary key(id)
);

create table if not exists section
(
    building varchar(15),
    room_number varchar(7),
    time_slot_id varchar(4),
    course_id varchar(8),
    foreign key (course_id) references course(course_id),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4),
    primary key (course_id, sec_id, semester, year)
);

create table if not exists teaches
(
    id varchar(5),
    foreign key (id) references instructor(id),

    course_id varchar(8),
    sec_id varchar(8),
    semester varchar(6),
    year numeric(4),
    foreign key (course_id, sec_id, semester, year) references section(course_id, sec_id, semester, year),
    primary key (id, course_id, sec_id, semester, year)
);