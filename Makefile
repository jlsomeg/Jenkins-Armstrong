is_amstrong_number : main.o 
	gcc main.o -o is_armstrong_number -lm 
main.o : main.c
	gcc -c main.c
clean:
	rm main.o is_armstrong_number

clean-doc:
	rm -rf html latex

doc:	clean-doc
	doxygen


