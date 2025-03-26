# Contributing
A basic guide to the specifics of contributing to this decomp.

## Decompiling a Function
It is impossible to explain all of matching decompilation in this brief explaination, but here is an overview.

1. Find the function in ghidra or ida. I reccomend ghidra if you are just getting started, as it is free.
2. Split off a seperate assembly file for the function you are decompiling (see [Splitting Assembly File](https://github.com/aplerdal/mksc/new/master#splitting-assembly-file)). This is so we can get a .o file to compare to our c version of the function
3. Get a tool like [decomp.me](https://decomp.me/)(online) or [objdiff](https://github.com/encounter/objdiff)(local) to compare your code to the assembly version. This guide will be using objdiff.
4. Using ghidra's/ida's decompiler code as a reference, create a new c file in the `src/` directory and try to match the original functionality of the code. Once you have something you believe is close, we can try to make it match.
5. If using objdiff, make sure your file assembly version of the function and the c file you made have the same name. If the functions themselves are the same name it may not compile correctly though, so keep that in mind. Build the project.
6. In objdiff, set the target directory to `build/asm/` and the base path to `build/src/` and open the object file for the function you are trying to match.
7. Modify the function to make it more similar to the assembly code until both files are fully matching. Now you can add the function.

## Adding a Function
Once you have decompiled a function, the process of adding it is relatively simple.

1. Replace the assembly object in the linker script with the c one (ex: `asm/example.o(.text);` > `src/example.o(.text);`). Make sure that if the function has a different name than the asm version of the same function that you update it across all of the files in the project.
2. Ensure the project builds correctly. `make` will automatically check that the files match. If they do not and your asm and c objects match, it is likely a issue with the linker script. Make sure everything is in the correct order.

## Splitting Assembly File
Splitting an assembly file is relatively simple, but it is done a lot.

1. Break the file into multiple files, copying a portion of the code to either based on where you want to split it.
2. Update the linker script replacing the existing `text0x___.o(.text);` block with new blocks one for each file you split it into. Add them in an order so that it maintains the original order of the assembly code.
3. Ensure the rom matches again to avoid errors down the line. You didn't change any code yet, so everything should compile to exactly the same rom.
