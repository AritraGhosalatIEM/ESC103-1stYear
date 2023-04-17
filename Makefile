CC=gcc
LIBS=-lncurses
system: code/main.c ui.o
	${CC} ${LIBS} code/main.c ui.o -o system
ui.o: code/ui.c code/ui.h code/keybindings.h
	${CC} -c code/ui.c -o ui.o
ui_debug.o: code/ui.c code/ui.h code/keybindings.h
	${CC} -ggdb3 -c code/ui.c -o ui_debug.o
debug: code/main.c ui_debug.o
	${CC} -ggdb3 ${LIBS} code/main.c ui_debug.o -o debug
clean:
	rm system debug ui.o ui_debug.o
.PHONY:clean
