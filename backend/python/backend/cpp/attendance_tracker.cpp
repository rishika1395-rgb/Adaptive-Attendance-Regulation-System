#include <iostream>
using namespace std;

class AttendanceTracker {
private:
    int continuous_absent_days;
    int rolling_absent_days;
    float sgpa;

public:
    AttendanceTracker(float sgpa_value) {
        sgpa = sgpa_value;
        continuous_absent_days = 0;
        rolling_absent_days = 0;
    }

    void markPresent() {
        continuous_absent_days = 0;
    }

    void markAbsent() {
        continuous_absent_days++;
        rolling_absent_days++;
    }

    bool applyCollegeRule() {
        if (continuous_absent_days > 7) {
            return true; // strict rule applies
        }
        return false;
    }

    float attendanceReductionRate() {
        if (applyCollegeRule()) {
            return 0.5; // college rule
        }

        if (sgpa >= 8.0) {
            return 0.2; // SGPA advantage
        }

        return 0.5;
    }
};
