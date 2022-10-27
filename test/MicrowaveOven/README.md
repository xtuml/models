# MicrowaveOven WASM example

## Requirements

- python3
- pymc3020 (`pip install pymc3020`)
- GNU Make
- Emscripten

## Build

```bash
cd src
make
```

## Run

- From the main project folder:
  ```bash
  python gen/server.py
  ```
- In a browser navigate to `localhost:8000/src/mo.html`
- Open the JS console to see xtUML trace

