// Exercise 05 - switch and Ranges

let grade = "B"
switch grade {
case "A":
    print("Excellent")
case "B", "C":
    print("Good")
case "D":
    print("Needs Work")
default:
    print("Unknown Grade")
}

// Using Ranges in a Switch
// 75...100 includes both 75 and 100; 50..<75 includes 50 but stops before 75
let mark = 68
switch mark {
case 75...100:
    print("Distinction")
case 50..<75:
    print("Pass")
case 0..<50:
    print("Fail")
default:
    print("Invalid Mark")
}

// Activity 5 - Temperature Description
print("\n--- Activity 5 ---")
let temperature = 27
switch temperature {
case ..<0:
    print("Freezing")
case 0...15:
    print("Cold")
case 16...25:
    print("Moderate")
case 26...35:
    print("Warm")
default:
    print("Hot")
}

// Testing with more temperatures
for testTemperature in [-5, 10, 20, 27, 40] {
    switch testTemperature {
    case ..<0:
        print("\(testTemperature)°C -> Freezing")
    case 0...15:
        print("\(testTemperature)°C -> Cold")
    case 16...25:
        print("\(testTemperature)°C -> Moderate")
    case 26...35:
        print("\(testTemperature)°C -> Warm")
    default:
        print("\(testTemperature)°C -> Hot")
    }
}
