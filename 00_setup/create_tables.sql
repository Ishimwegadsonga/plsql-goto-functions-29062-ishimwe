-- ============================================
-- Setup: Create tables for the assignment
-- Student: Ishimwe Gad | ID: 29062
-- ============================================

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE departments (
    dept_id   NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL
);

CREATE TABLE employees (
    emp_id    NUMBER PRIMARY KEY,
    emp_name  VARCHAR2(50) NOT NULL,
    salary    NUMBER(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    dept_id   NUMBER REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES (10, 'IT');
INSERT INTO departments VALUES (20, 'HR');
INSERT INTO departments VALUES (30, 'Finance');
INSERT INTO departments VALUES (40, 'Marketing');

INSERT INTO employees VALUES (101, 'Alice',  5000, DATE '2018-03-15', 10);
INSERT INTO employees VALUES (102, 'Bob',    3200, DATE '2021-07-01', 20);
INSERT INTO employees VALUES (103, 'Carol',  7500, DATE '2015-01-10', 30);
INSERT INTO employees VALUES (104, 'David',  2100, DATE '2023-09-20', 40);
INSERT INTO employees VALUES (105, 'Eve',    9000, DATE '2012-05-05', 10);

COMMIT;