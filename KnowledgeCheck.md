# Practical 02 - Knowledge Check

1. **Array vs Set:** An array is ordered and allows duplicates. A set is unordered and stores only unique values.
2. **Why arrays allow duplicates:** Each item is identified by its index (position), not its value, so two positions can hold the same value (e.g. two students with the mark 65).
3. **Why sets ignore duplicates:** A set is identified by its values (they are hashed), so a value can only be a member once. Inserting an existing value does nothing.
4. **Accessing an array item:** By index in square brackets, starting from 0, e.g. `marks[0]`. An invalid index crashes the program.
5. **Accessing a dictionary value:** By key in square brackets, e.g. `marks["Amal"]`.
6. **Why dictionary lookup returns an optional:** The key might not exist, so Swift returns `nil` in that case. Unwrap it with `if let` or `??`.
7. **`...` vs `..<`:** `a...b` is a closed range that includes `b`. `a..<b` is a half-open range that stops before `b`.
8. **When to use `if`:** For true/false conditions, or a few conditions checked from top to bottom.
9. **When `switch` is clearer:** When one value is compared against many cases or ranges (e.g. mark → grade). It is shorter than a long `else if` chain, and Swift checks that every case is covered.
10. **`for-in` vs `while`:** `for-in` goes through a known collection or range. `while` repeats until a condition becomes false, when you don't know how many repetitions you need.
11. **`while` vs `repeat-while`:** `while` checks the condition first, so the body may run zero times. `repeat-while` checks it afterwards, so the body always runs at least once.
12. **`continue`:** Skips the rest of the current repetition and moves on to the next one.
13. **`break`:** Stops the loop completely.
