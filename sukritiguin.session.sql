-- Create Schema

create SCHEMA sales;
create SCHEMA hr;

-- Rename Schema

alter schema sales rename to programming;

-- Drop Schema

drop schema programming;

-- My default table should be added to public schema

create table employees (
    id serial primary key,
    name varchar(255),
    address varchar(255)
);

INSERT INTO employees (id, name, address)
VALUES (
    1,
    'Sukriti',
    'Nirol, Katwa'
  );


-- Move schema from public to hr schema

ALTER TABLE public.employees SET schema hr;

-- Select current schema

SELECT CURRENT_SCHEMA(); -- Current schema is public

-- Show search path

show search_path; -- "$user", public

-- Add new schema to search path

set search_path to hr, public;

show search_path; -- hr, public

SELECT CURRENT_SCHEMA(); -- Current schema is public
/*

- Order of search paths is always matters.
- Postgres searches the schemas (like table) in sequences in search path one by one.

*/

-- Change owner

ALTER schema hr owner to sukriti;


-- Show all schemas

select * from information_schema.schemata;


