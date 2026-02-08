"""
Adaptive Attendance Regulation System
Core Attendance Engine
"""

class AttendanceEngine:
    def __init__(self, student_id, sgpa, attendance_percentage):
        self.student_id = student_id
        self.sgpa = sgpa
        self.attendance_percentage = attendance_percentage

    def eligibility_status(self):
        if self.attendance_percentage >= 75:
            return "Eligible"

        if self.attendance_percentage >= 65 and self.sgpa >= 8.0:
            return "Eligible with Condone"

        return "Not Eligible"
