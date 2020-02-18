is_amstrong_number : main.o stack.o
	gcc main.o stack.o -Wall -o is_armstrong_number -lm 
	cppcheck --enable=all --inconclusive main.c --xml --xml-version=2 2>j.xml
main.o : main.c
	gcc -c main.c -pedantic -Wall -o main.o

stack.o : stack.c
	gcc -c stack.c -pedantic -Wall -o stack.o
clean:
	rm -rf main.o stack.o is_armstrong_number

clean-doc:
	rm -rf html latex

doc:	clean-doc
	doxygen


