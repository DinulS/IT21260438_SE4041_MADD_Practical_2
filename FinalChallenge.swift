// Final Practical Task - Student Performance Manager

// Part A - Store Student Marks
var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Ruwan": 68,
    "Sanduni": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []
var passCount = 0
var failCount = 0

print("==================================")
print("        STUDENT PERFORMANCE")
print("==================================")

// Parts B, C, D, E - display, grade, passes, unique grades
// Keys are sorted because dictionary order is not guaranteed
for name in studentMarks.keys.sorted() {
    let mark = studentMarks[name]!

    let grade: String
    switch mark {
    case 80...100: grade = "A"
    case 75..<80:  grade = "A-"
    case 70..<75:  grade = "B+"
    case 65..<70:  grade = "B"
    case 60..<65:  grade = "B-"
    case 55..<60:  grade = "C+"
    case 45..<55:  grade = "C"
    case 40..<45:  grade = "C-"
    case 0..<40:   grade = "F"
    default:       grade = "Invalid"
    }

    print("\(name) - \(mark) - \(grade)")
    gradesAwarded.insert(grade)

    if mark >= 50 {
        passedStudents.append(name)
        passCount += 1
    } else {
        failCount += 1
    }
}

print("\n----------------------------------")
print("\nPassed Students:")
for name in passedStudents {
    print(name)
}

print("\n----------------------------------")
print("\nGrades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

// Parts F & G - Average, Highest, Lowest
let allMarks = Array(studentMarks.values)
let total = allMarks.reduce(0, +)
let average = Double(total) / Double(allMarks.count)

print("\n----------------------------------")
print("\nClass Average: \(average)")
print("Highest Mark: \(allMarks.max() ?? 0)")
print("Lowest Mark: \(allMarks.min() ?? 0)")

// Additional Challenge - Search for a Student
print("\n----------------------------------")
let searchName = "Amal"
if let mark = studentMarks[searchName] {
    print("\(searchName)'s mark is \(mark)")
} else {
    print("Student not found")
}

// Additional Challenge - Count Passes and Fails
print("Passed: \(passCount)")
print("Failed: \(failCount)")
