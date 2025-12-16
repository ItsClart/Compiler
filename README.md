## Short term goals (12/15/25)

#### Get the compiler pipeline working for simple syntax features (i.e. `const byte string[] = "Hello, World!\n"` --> `byte *string = "Hello, World!\n`). 

- Compiler CLI command input and response (i.e. `vorp build main.vorp -o main.exe`)
- All compiler pipeline stages built around simple syntax
- Output as a C file translation of the source (stage 0 will compile to C)
