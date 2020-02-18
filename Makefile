is_amstrong_number : main.o 
	gcc main.o -o is_armstrong_number -lm 
	cppcheck --enable=all --inconclusive main.c --xml --xml-version=2 2>j.xml
main.o : main.c
	gcc -c main.c -pedantic -Wall
clean:
	rm main.o is_armstrong_number

clean-doc:
	rm -rf html latex

doc:	clean-doc
	doxygen


