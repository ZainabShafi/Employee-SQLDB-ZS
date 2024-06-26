--Creating schemas for Employee Data Tables 
CREATE TABLE Titles(
	title_id VARCHAR(255) PRIMARY KEY NOT NULL,
	title VARCHAR (255),
); 

CREATE TABLE Employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(255),
	birth_date DATE,
	first_name VARCHAR(255) NOT NULL,
	last_name  VARCHAR (255) NOT NULL,
	sex VARCHAR (255),
	hire_date DATE,
	PRIMARY KEY (emp_no) NOT NULL ,
	FOREIGN KEY (emp_title_id) REFERENCES TITLES (title_id)
);

CREATE TABLE Departments(
	dept_no VARCHAR(255),
	dept_name VARCHAR (255),
	PRIMARY KEY (dept_no) NOT NULL
); 

CREATE TABLE Department_Employee (
    emp_no INT,
    dept_no VARCHAR(255),
    PRIMARY KEY (emp_no, dept_no) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);


CREATE TABLE Salaries( 
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no) 
);


CREATE TABLE Department_Manager(
	dept_no VARCHAR(255),
	emp_no INT, 
	FOREIGN KEY(emp_no) REFERENCES Employees (emp_no),
	FOREIGN KEY(dept_no)REFERENCES Departments (dept_no)
);
