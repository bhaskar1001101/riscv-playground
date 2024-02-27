## Use a RISC-V cross-compiler
```bash
# risv64-unknown-elf-gcc -o main main.c
risv64-linux-gnu-gcc -o main.o main.c
riscv64-linux-gnu-objdump -d main.o > main.s
```
## Example
- [main.c](src/main.c)
- [main.o](src/main.o)
- [main.s](src/main.s)

