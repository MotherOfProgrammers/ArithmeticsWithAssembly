# Assembly Arithmetic Program (`arith.asm`)

This is a simple x86-64 Linux assembly program demonstrating basic arithmetic operations and clean exit via syscall.

---

## Prerequisites

Make sure you have these tools installed on your Linux system (including WSL):

- `yasm` (assembler)  
- `ld` (linker)  
- `gdb` (debugger, optional)

On Ubuntu/Debian, install with:

```bash
sudo apt update
sudo apt install yasm build-essential gdb
# 1️⃣ Assemble the source into an object file
yasm -f elf64 -g dwarf2 arith.asm -o arith.o

# 2️⃣ Link the object file into an executable
ld arith.o -o arith
```
