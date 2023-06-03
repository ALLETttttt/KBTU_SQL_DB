-- 1
-- create database assignment_5;

-- 2
create table if not exists Warehouses
(
    code integer,
    location character varying(255),
    capacity integer
);


create table if not exists Packs
(
    code character(4),
    contents character varying(255),
    value real,
    warehouses integer
);

-- 4
select * from Packs;

-- 5
select * from Packs
where value > 190;

-- 6
select distinct(contents) from Packs;

-- 7
select Warehouses.code, count(Packs.warehouses) as number from Warehouses, Packs
where Warehouses.code = Packs.warehouses
group by Warehouses.code;

-- 8
select Warehouses.* from Packs, Warehouses
where Packs.warehouses = Warehouses.code
group by Warehouses.code, Warehouses.location, Warehouses.capacity
having count(Packs.warehouses) > 2;

-- 9
insert into Warehouses(code, location, capacity) values (6, 'Texas', 5);

-- 10
INSERT INTO Packs(code, contents, value, warehouses) VALUES ('H5RT', 'Papers', 150, 2);

-- 11
update Packs
    set value = value - (value * 0.18)
    where value in(select distinct value from Packs
                                         order by value desc limit 1 offset 2);

-- 12
delete from Packs
where value < 150;

-- 13
delete from Packs
where Packs.warehouses in(select warehouses from Packs, Warehouses
                                            where Warehouses.code = Packs.warehouses
                                            and Warehouses.location = 'Chicago') returning *;