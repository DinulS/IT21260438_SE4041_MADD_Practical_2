// Exercise 03 - Dictionaries

// Step 1 - Create a Dictionary
var marks = [
    "Amal": 72,
    "Nimali": 65,
    "Ruwan": 48
]
print(marks)

// Step 2 - Retrieve a Value (prints Optional(72): the key might not exist)
print(marks["Amal"] as Any)

// Step 3 - Safely Retrieve a Value
print(marks["Amal"] ?? 0)
print(marks["Kasun"] ?? 0)

// Step 4 - Use Optional Binding
if let mark = marks["Nimali"] {
    print("Nimali scored \(mark)")
} else {
    print("Student not found")
}

// Step 5 - Add, Update and Remove Values
marks["Sanduni"] = 90  // add
marks["Amal"] = 75     // update
marks["Ruwan"] = nil   // remove
print(marks)

// Activity 3 - Phone Book
print("\n--- Activity 3 ---")
var phoneBook = [
    "Amal": "0771234567",
    "Nimali": "0712345678",
    "Ruwan": "0763456789",
    "Sanduni": "0754567890"
]

phoneBook["Kasun"] = "0705678901"   // 1. Add a new contact
phoneBook["Amal"] = "0779999999"    // 2. Update one phone number
phoneBook["Ruwan"] = nil            // 3. Remove one contact

for name in phoneBook.keys.sorted() {
    print("\(name): \(phoneBook[name]!)")
}

// 4 & 5. Search using if let
for searchName in ["Nimali", "Ruwan"] {
    if let number = phoneBook[searchName] {
        print("\(searchName)'s number is \(number)")
    } else {
        print("Contact not found")
    }
}
