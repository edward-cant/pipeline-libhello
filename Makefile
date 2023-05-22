.PHONY: all clean output headers library package

all: headers library package

clean:
	rm -rf output/

output:
	mkdir -p output/
	mkdir -p output/package/include/
	mkdir -p output/package/lib/

headers: output
	cp libhello.h output/package/include

library: output libhello.c libhello.h
	gcc -c -o output/libhello.o libhello.c
	ar rcs output/package/lib/libhello.a output/libhello.o

package:
	tar -cvzf output/libhello.tar.gz -C output/package/ .

