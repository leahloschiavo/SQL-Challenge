
CREATE TABLE Departments (
    dept_no Varchar  NOT NULL,
    dept_name Varchar  NOT NULL,
    	 PRIMARY KEY (dept_no
       
     )
);

CREATE TABLE Dept_emp (
    emp_no int   NOT NULL,
    dept_no Varchar   NOT NULL,
     PRIMARY KEY (emp_no, dept_no
        
     )
);

CREATE TABLE Dept_manager (
    dept_no Varchar  NOT NULL,
    emp_no int   NOT NULL,
     PRIMARY KEY (dept_no, emp_no
      
     )
);

CREATE TABLE Employees (
     emp_no Int   NOT NULL,
     emp_title_id Varchar  NOT NULL,
     birth_date date   NOT NULL,
    first_name Varchar   NOT NULL,
    last_name Varchar  NOT NULL,
    sex Varchar  NOT NULL,
    hire_date date   NOT NULL,
    PRIMARY KEY (emp_no
        
     )
);

CREATE TABLE Salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    PRIMARY KEY (emp_no
       
     )
);

CREATE TABLE Titles (
    title_id Varchar   NOT NULL,
    title Varchar  NOT NULL,
      PRIMARY KEY (title_id
        
     )
);


