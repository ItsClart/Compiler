
GCC = gcc 
SRC = $(wildcard src/*.c ) $(wildcard src/MemTrack/*.c)  
INCLUDE = -Iinclude -Iinclude/MemTrack -IC:/msys64/mingw64/include

BUILD = build
OUTPUT = out.exe

ERROR_FLAGS = -Wall -Werror -Wpedantic
DEBUG_FLAGS = -g -DTRACK_ALLOCATIONS






.PHONY: default all json build_folder build run



default: build_folder build run


all: json default 


# this is for my clangd autocomplete
json:
	@compiledb -n -- make build  


build_folder:
	@if not exist "$(BUILD)" mkdir "$(BUILD)"

build:
	@${GCC} -o ${BUILD}/${OUTPUT} ${SRC} ${INCLUDE} ${DEBUG_FLAGS} ${ERROR_FLAGS} 

run:
	@${BUILD}/${OUTPUT}

