# C Preprocessor Implementation

## Project Overview
This project implements a simplified C Preprocessor using the C programming language. It processes a C source file and generates a preprocessed output file with comments removed, header file contents included, and macros expanded.

## Features
- **Comment Removal:** Removes single-line (`//`) and multi-line (`/* */`) comments.
- **File Inclusion:** Supports system header files using angle brackets and user-defined header files using double quotes.
- **Object-like Macros:** Stores and replaces object-like macro definitions.
- **Function-like Macros:** Supports function-like macros with a single argument.
- **String and Character Preservation:** Prevents macro substitution inside string and character literals.
- **Output Generation:** Generates a `.i` file containing the preprocessed source code.

## Technologies Used
- Programming Language: C
- Compiler: GCC
- Build Tool: GNU Make
- Platform: Windows

## Project Structure

```text
Preprocessor/
│
├── main.c
├── preprocessor.h
├── output.c
├── comment_removal.c
├── file_inclusion.c
├── macro_handler.c
├── macro_arguments.c
├── Makefile
├── input.c
├── myheader.h
└── input.i
```

## Compilation

Compile the project using the Makefile:

```bash
mingw32-make
```

## Execution

Run the executable with the input C file as a command-line argument:

```bash
mypreprocessor input.c
```

## Output

The preprocessor generates an output file named `input.i` in the same directory.

## Clean

To remove object files and the executable:

```bash
mingw32-make clean
```

## Example Macro Definitions

```c
#define PI 3.14
#define SQUARE(x) ((x) * (x))
```

## Example Output

```c
float area = 3.14 * ((5) * (5));
```

## Limitations
- Supports function-like macros with one argument.
- Nested header file inclusion is not implemented.
- Conditional preprocessing directives such as `#ifdef` and `#if` are not implemented.
- This is a simplified preprocessor, not a complete implementation of the standard C preprocessor.

## Author
Raparthi Hemalatha
