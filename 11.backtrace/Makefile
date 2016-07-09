all:
	gcc -o main -O0 -rdynamic main.c
	objdump -D main > main.txt
	./main
	
clean:
	rm -rf main main.txt