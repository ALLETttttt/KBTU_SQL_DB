-- 1
create database assignment_6;

-- 2
create table locations
(
    location_id serial primary key,
    street_address varchar(25),
    postal_code varchar (12),
    city varchar(30),
    state_province varchar(12)
);

create table departments
(
    department_id serial primary key,
    department_name varchar(50) unique,
    budget integer,
    location_id integer references locations
);

create table employee
(
    employee_id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(50),
    phone_number varchar(20),
    salary integer,
    department_id integer references departments
);

-- 3
INSERT INTO locations(location_id, street_address, postal_code, city, state_province)
VALUES (1, 'ABAY-44', '96C5B85E', 'ALMATY', 'BOSTANDIKSKI');
INSERT INTO LOCATIONS(location_id, street_address, postal_code, city, state_province)
VALUES (2, 'ROZABAKIEVA-67', '9Q284Q1661CE', 'SHYMKENT', 'ALMALINSKI');
INSERT INTO LOCATIONS(location_id, street_address, postal_code, city, state_province)
VALUES (3, 'AL-FARABI-27', '1023548FDSVE', 'ASTANA', 'JETISUSKI');
INSERT INTO LOCATIONS(location_id, street_address, postal_code, city, state_province)
VALUES (4, 'KABANBAI-89', '96C5B85E', 'MOSKOW', 'MEDEUSKI');
INSERT INTO LOCATIONS(location_id, street_address, postal_code, city, state_province)
VALUES (5, 'ERIMBETOVA-2', '96C5B85E', 'TURKISTAN', 'NAURISBAISKI');

INSERT INTO DEPARTMENTS(department_id, department_name, budget, location_id)
VALUES (30, 'HALYK-BANK', 980000, 1);
INSERT INTO DEPARTMENTS(department_id, department_name, budget, location_id)
VALUES (50, 'JUSAN', 540000, 2);
INSERT INTO DEPARTMENTS(department_id, department_name, budget, location_id)
VALUES (60, 'HACKATON', 700000, 3);
INSERT INTO DEPARTMENTS(department_id, department_name, budget, location_id)
VALUES (70, 'CENTERCREDIT', 893000, 4);
INSERT INTO DEPARTMENTS(department_id, department_name, budget, location_id)
VALUES (80, 'SBERBANK', 300000, 5);

INSERT INTO EMPLOYEE(employee_id, first_name, last_name, email, phone_number, salary, department_id)
VALUES (110, 'ALEX', 'GERAR', 'ALEX@GMAIL.COM', '74581245852', 700, 30);
INSERT INTO EMPLOYEE(employee_id, first_name, last_name, email, phone_number, salary, department_id)
VALUES (401, 'KARL', 'BOSTOV', 'BOSTOV@MAIL.RU', '74125145852', 400, 50);
INSERT INTO EMPLOYEE(employee_id, first_name, last_name, email, phone_number, salary, department_id)
VALUES (745, 'OLEG', 'CHREKIN', 'OLELE@GMAIL.COM', '12347485459', 430, 60);
INSERT INTO EMPLOYEE(employee_id, first_name, last_name, email, phone_number, salary, department_id)
VALUES (998, 'MAKS', 'POVEDKIN', 'MAKAKAKARONA@KBTU.KZ', '50874144596', 870, 70);
INSERT INTO EMPLOYEE(employee_id, first_name, last_name, email, phone_number, salary, department_id)
VALUES (321, 'DEBIL', 'SRACHOVSKI', 'DEBOVSKI@MAIL.RU', '47748514543', 550, 80);

INSERT INTO EMPLOYEE(email,phone_number,salary, department_id)
VALUES ('QWERTY@KBTU.KZ', '89663602021', 330, 50);

-- 4
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, E.DEPARTMENT_ID
FROM EMPLOYEE E JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;

-- 5
SELECT FIRST_NAME, LAST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME
FROM EMPLOYEE E JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID = 80 OR D.DEPARTMENT_ID = 30;

-- 6
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY, STATE_PROVINCE
FROM EMPLOYEE E
         JOIN DEPARTMENTS D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
         JOIN LOCATIONS L ON L.LOCATION_ID = D.LOCATION_ID;

-- 7
SELECT DEPARTMENT_NAME FROM EMPLOYEE E
RIGHT OUTER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- 8
SELECT FIRST_NAME, LAST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME FROM EMPLOYEE E
FULL JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- 9
SELECT FIRST_NAME, LAST_NAME FROM EMPLOYEE E
JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L ON L.LOCATION_ID = D.LOCATION_ID
WHERE CITY = 'MOSKOW';