.PHONY: all clean output headers library

all: headers library

clean:
	rm -rf output/

output:
	mkdir -p output/
	mkdir -p output/include/
	mkdir -p output/lib/

headers: output
	cp libhello.h output/include

library: output libhello.c libhello.h
	gcc -c -o output/libhello.o libhello.c
	ar rcs output/lib/libhello.a output/libhello.o
