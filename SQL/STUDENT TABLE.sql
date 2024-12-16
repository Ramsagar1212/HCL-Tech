-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  gender TEXT NOT NULL,
    age INTEGER NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M',23);
INSERT INTO students VALUES (2, 'Joanna', 'F',56);
INSERT INTO students VALUES (3, 'RAM', 'M',25);
INSERT INTO students VALUES (4, 'Rohan', 'M',75);
-- fetch some values

ALTER TABLE students ADD s_section int;

ALTER TABLE students ADD s_department int;

ALTER TABLE students ADD s_farzi int;


-- delete columan from the table
ALTER TABLE students DROP s_section;


-- modify the columan in the table
ALTER TABLE students MODIFY s_farzi TEXT;

-- change the name of the table and their datatype

-- ALTER TABLE students CHANGE  id serial int;


-- CHANGE THE TABLE NAMES
                                                         
-- ALTER TABLE students RENAME TO table1;


SELECT * FROM students WHERE age = (SELECT max(age) FROM students WHERE age != (SELECT MAX(age) FROM students));

SELECT * FROM students WHERE age != (SELECT max(age) FROM students ) ORDER BY age DESC LIMIT 1;


















