all: build/va/va.c build/va/va

build/va/va.c: bench/va.py
	cython --embed -o build/va/va.c bench/va.py

build/va/va: build/va/va.c
	gcc -Os -I /nix/store/02h77kjgs8c8hnbnv9m1w22raasjr4k9-python3-3.11.8-env/include/python3.11 -lpython3.11 -lpthread -lm -lutil -ldl -o build/va/va build/va/va.c
	
