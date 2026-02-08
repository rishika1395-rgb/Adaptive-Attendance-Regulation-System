CREATE TABLE Student (
    student_id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT
);

CREATE TABLE Semester_Result (
    result_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    semester INTEGER,
    sgpa REAL,
    cgpa REAL
);

CREATE TABLE Attendance_Status (
    student_id INTEGER PRIMARY KEY,
    attendance_percentage REAL,
    continuous_absent_days INTEGER
);
