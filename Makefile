

mypreprocessor: main.o output.o comment_removal.o file_inclusion.o macro_handler.o macro_arguments.o
	gcc main.o output.o comment_removal.o file_inclusion.o macro_handler.o macro_arguments.o -o mypreprocessor

main.o: main.c preprocessor.h
	gcc -c main.c

output.o: output.c preprocessor.h
	gcc -c output.c

comment_removal.o: comment_removal.c preprocessor.h
	gcc -c comment_removal.c

file_inclusion.o: file_inclusion.c preprocessor.h
	gcc -c file_inclusion.c

macro_handler.o: macro_handler.c preprocessor.h
	gcc -c macro_handler.c

macro_arguments.o: macro_arguments.c preprocessor.h
	gcc -c macro_arguments.c

clean:
	del /Q *.o 2>nul
	del /Q mypreprocessor.exe 2>nul