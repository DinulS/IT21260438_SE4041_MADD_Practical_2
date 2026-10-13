// Exercise 01 - Arrays

// Step 1 - Create an Array
var marks = [72, 65, 48, 90, 55]
print(marks)

// Step 2 - Access Array Elements
print(marks[0])
print(marks[2])
print(marks[4])

// Step 3 - Useful Array Properties
print(marks.count)
print(marks.isEmpty)
print(marks.first as Any) // Optional(72) - first/last are optional because the array might be empty
print(marks.last as Any)  // Optional(55)

// Step 4 - Modify an Array
marks[2] = 52
print(marks)

marks.append(88)
marks.insert(60, at: 1)
print(marks)

marks.removeLast()
marks.remove(at: 1)
print(marks)

// Step 5 - Useful Array Methods
// Wrapped in `do` so this `let marks` does not clash with the `var marks` above
do {
    let marks = [72, 65, 48, 90, 55]
    print(marks.max()!)
    print(marks.min()!)
    print(marks.contains(90))
    print(marks.sorted())
    print(marks.sorted(by: >))

    let total = marks.reduce(0, +)
    print(total)

    let average = Double(total) / Double(marks.count)
    print(average)
}

// Activity 1 - Modules
print("\n--- Activity 1 ---")
var modules = ["SE4041", "SE4010", "SE4020", "SE4030", "IT4010"]

print("All modules: \(modules)")                         // 1
print("First module: \(modules.first ?? "None")")        // 2
print("Last module: \(modules.last ?? "None")")          // 3
modules.append("SE4050")                                 // 4
print("After adding: \(modules)")
print("Number of modules: \(modules.count)")             // 5
print("Contains SE4041: \(modules.contains("SE4041"))")  // 6
