```
emcc -o mo.js -pthread -sPROXY_TO_PTHREAD -sEXPORTED_RUNTIME_METHODS=ccall -sEXPORTED_FUNCTIONS=_MicrowaveOven_UI_cancel_cooking --pre-js pre.js *.c
emcc -o mo.js -pthread -sPROXY_TO_PTHREAD *.c
```
