is_amstrong_number : main.o 
	gcc main.o -o is_armstrong_number -lm 
	cppcheck --enable=all --inconclusive --error-exitcode=1 main.c --output-file=j.xml
main.o : main.c
	gcc -c main.c
clean:
	rm main.o is_armstrong_number

clean-doc:
	rm -rf html latex

doc:	clean-doc
	doxygen


