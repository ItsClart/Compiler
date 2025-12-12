PROGRAM	=	out
SRC		=	src/main.c
BUILD	= 	build

$(BUILD)/$(PROGRAM): $(SRC)
	mkdir $(BUILD)
	gcc $(SRC) -o $(BUILD)/$(PROGRAM)