# 8086 Assembly Language Lab Programs

A collection of 8086 assembly language programs written using MASM (Microsoft Macro Assembler) syntax, covering fundamental programming concepts from basic I/O to arithmetic operations, loops, and bitwise operations.

---


## 🔬 Experiment Details

### Experiment 1: User Input and Display Output
Reads a single character from the keyboard using `INT 21h` (AH=01h) and prints it back to the console after a newline.

**Key Concepts:** `INT 21h` AH=01h (keyboard input), AH=02h (character output), carriage return/line feed handling.

---

### Experiment 2: Addition of Two Numbers
Takes two single-digit numeric characters as input, converts them from ASCII to integer by subtracting `30h`, adds them, converts back to ASCII, and displays the result.

**Key Concepts:** ASCII-to-integer conversion, register arithmetic, single-digit addition.

---

### Experiment 3: Subtraction of Two Numbers
Similar to addition — reads two digits, subtracts the second from the first, and displays the result.

**Key Concepts:** `SUB` instruction, ASCII encoding/decoding.

---

### Experiment 4: Multiplication of Two Numbers
Multiplies two single-digit numbers using the `MUL` instruction. Handles two-digit results by dividing by 10 to extract tens and units digits separately.

**Key Concepts:** `MUL` instruction, multi-digit result display using `DIV`, quotient/remainder extraction.

---

### Experiment 5: Division of Two Numbers
Divides the first input digit by the second using the `DIV` instruction and displays the integer quotient.

**Key Concepts:** `DIV` instruction, AH=0 for unsigned 8-bit division, remainder discarding.

---

### Experiment 6: Sum of N Numbers Using a Loop
Uses `CX` as a loop counter (set to 5) and the `LOOP` instruction to sum 5 user-entered digits. Displays the two-digit result.

**Key Concepts:** `LOOP` instruction, `CX` counter register, multi-digit output.

---

### Experiment 7: Find Largest/Smallest Between Two Numbers
Compares two user-entered single-digit numbers using `CMP` and `JGE`. Displays the larger value.

**Key Concepts:** `CMP`, `JGE` (jump if greater or equal), conditional branching.

---

### Experiment 8: Find Smallest Among Three Numbers
Reads three characters and finds the minimum by comparing pairs sequentially using `CMP` and `JLE`.

**Key Concepts:** Sequential comparison, `JLE` (jump if less or equal), minimum-finding algorithm.

---

### Experiment 9: Find Largest Among Three Numbers
Same structure as Experiment 8, but uses `JGE` to find the maximum value among three inputs.

**Key Concepts:** Maximum-finding algorithm, `JGE` (jump if greater or equal).

---

### Experiment 10: Print a Simple Pattern
Prints a 3×3 grid of asterisks using nested loops. The outer loop tracks rows and uses `PUSH`/`POP` to preserve `CX` across the inner loop.

**Key Concepts:** Nested loops, `PUSH`/`POP` for register preservation, newline printing inside loops.

---

### Experiment 11A: Shift Right Operation
Reads a digit, subtracts ASCII offset, performs `SHR AL, 1` (divides by 2), and prints the result.

**Key Concepts:** `SHR` (Shift Right Logical), integer division by powers of 2.

---

### Experiment 11B: Shift Left Operation
Reads a digit, performs `SHL AL, 1` (multiplies by 2), then uses the `AAM` instruction to split the result into tens and units digits for two-digit display.

**Key Concepts:** `SHL` (Shift Left Logical), `AAM` (ASCII Adjust After Multiply) for BCD-style digit separation.

---

## 📌 DOS Interrupt Reference

| Interrupt | AH Value | Function |
|-----------|----------|----------|
| `INT 21h` | `01h` | Read character from keyboard (echo to screen) |
| `INT 21h` | `02h` | Write character in `DL` to screen |
| `INT 21h` | `4Ch` | Terminate program |

---

## 📝 Notes

- All programs target the **16-bit 8086** real-mode environment.
- Single-digit arithmetic assumes inputs are in the range `0–9`.
- Multi-digit outputs (Experiments 4, 6, 11B) use division or `AAM` to split results into individual displayable digits.
- Carriage return (`0Dh`) and line feed (`0Ah`) are used together for newline output.
