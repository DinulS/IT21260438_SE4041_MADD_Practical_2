// Exercise 04 - if, else if, and else

let mark = 68
if mark >= 75 {
    print("Distinction")
} else if mark >= 50 {
    print("Pass")
} else {
    print("Fail")
}

// Activity 4 - Attendance
print("\n--- Activity 4 ---")
let attendance = 78
if attendance >= 90 {
    print("Excellent attendance")
} else if attendance >= 80 {
    print("Good attendance")
} else if attendance >= 70 {
    print("Acceptable attendance")
} else {
    print("Low attendance")
}

// Testing with different values
for testAttendance in [95, 85, 78, 60] {
    if testAttendance >= 90 {
        print("\(testAttendance)% -> Excellent attendance")
    } else if testAttendance >= 80 {
        print("\(testAttendance)% -> Good attendance")
    } else if testAttendance >= 70 {
        print("\(testAttendance)% -> Acceptable attendance")
    } else {
        print("\(testAttendance)% -> Low attendance")
    }
}
