# Adaptive Attendance Regulation System

A policy-compliant, data-driven attendance governance system that adjusts student attendance based on academic performance (SGPA/CGPA).

## Tech Stack
- C++ → Core attendance rule engine
- Python → Backend logic & database integration
- SQLite → Data layer
- GitHub → Version control

## Features
- SGPA-based attendance reduction
- 7-day absence rule override
- Continuous absence tracking
- Modular design (Python + C++ + SQL)

## How it works
1. SQL database stores student info, attendance, and results.
2. Python backend fetches data and applies logic.
3. C++ engine calculates attendance reduction based on rules.
4. Attendance eligibility is determined considering SGPA/CGPA and continuous absences.

## Future Scope
- Integrate with college portal
- Add web or mobile interface
- Generate automated reports for students and admins
