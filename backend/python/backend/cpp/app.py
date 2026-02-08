import sqlite3

def get_attendance(student_id):
    with sqlite3.connect("attendance.db") as conn:
        cur = conn.cursor()
        cur.execute(
            "SELECT attendance_percentage, continuous_absent_days FROM Attendance_Status WHERE student_id=?",
            (student_id,)
        )
        return cur.fetchone()

print("Python backend for Adaptive Attendance System")
