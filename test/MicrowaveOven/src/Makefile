CC=emcc
CFLAGS=-pthread -sPROXY_TO_PTHREAD -sEXPORTED_RUNTIME_METHODS=ccall -sEXPORTED_FUNCTIONS=@./exported_functions.txt --pre-js bridge.js

all: gen build

gen:
	python -m mc3020 -d ../gen ../models

build: *.c exported_functions.txt bridge.js
	$(CC) $(CFLAGS) -o mo.js *.c
