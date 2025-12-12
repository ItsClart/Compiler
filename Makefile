
PROGRAM	= out
SRC = src/*.c src/MemTrack/*.c
INCLUDE = -Iinclude -Iinclude/MemTrack
BUILD = build


default: build_folder build run

all: json default 

json:
	compiledb -n -- make build 




build_folder:
	mkdir $(BUILD)

build:
	gcc -o $(BUILD)/$(PROGRAM) ${SRC} ${INCLUDE}


run:
	$(BUILD)/$(PROGRAM)

