// Exercise 02 - Sets

// Step 1 - Create a Set
var towns: Set = ["Malabe", "Kandy", "Galle"]
print(towns)

// Step 2 - Insert Values ("Kandy" is already there, so it is not added again)
towns.insert("Jaffna")
towns.insert("Kandy")
print(towns)
print(towns.count)

// Step 3 - Check Membership
print(towns.contains("Kandy"))
print(towns.contains("Colombo"))

// Step 4 - Remove an Item
towns.remove("Galle")
print(towns)

// Step 5 - Set Operations
let swiftClass: Set = ["Amal", "Nimali", "Ruwan"]
let kotlinClass: Set = ["Nimali", "Ruwan", "Sanduni"]

print(swiftClass.union(kotlinClass).sorted())               // in either set
print(swiftClass.intersection(kotlinClass).sorted())        // in both sets
print(swiftClass.subtracting(kotlinClass).sorted())         // only in swiftClass
print(swiftClass.symmetricDifference(kotlinClass).sorted()) // in exactly one set

// Activity 2
print("\n--- Activity 2 ---")
let mobileDevelopmentStudents: Set = ["Amal", "Nimali", "Ruwan", "Kasun"]
let gameTechnologyStudents: Set = ["Nimali", "Kasun", "Sanduni", "Tharindu"]

print("All students: \(mobileDevelopmentStudents.union(gameTechnologyStudents).sorted())")
print("Taking both modules: \(mobileDevelopmentStudents.intersection(gameTechnologyStudents).sorted())")
print("Only Mobile Development: \(mobileDevelopmentStudents.subtracting(gameTechnologyStudents).sorted())")
print("Only one of the modules: \(mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents).sorted())")
