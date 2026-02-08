CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    program VARCHAR(50)
);

CREATE TABLE Semester_Result (
    result_id INT PRIMARY KEY,
    student_id INT,
    semester INT,
    sgpa FLOAT,
    cgpa FLOAT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Attendance_Log (
    log_id INT PRIMARY KEY,
    student_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

CREATE TABLE Attendance_Status (
    student_id INT PRIMARY KEY,
    attendance_percentage FLOAT,
    continuous_absent_days INT,
    rolling_absent_days INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
