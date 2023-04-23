CC=gcc
CFLAGS=$$(mariadb_config --cflags)
LIBS=-lncurses $$(mariadb_config --libs)
system: code/main.c ui.o
	${CC} ${CFLAGS} ${LIBS} code/main.c ui.o -o system
ui.o: code/ui.c code/ui.h code/keybindings.h
	${CC} ${CFLAGS} ${LIBS} -c code/ui.c -o ui.o
ui_debug.o: code/ui.c code/ui.h code/keybindings.h
	${CC} ${CFLAGS} ${LIBS} -ggdb3 -c code/ui.c -o ui_debug.o
debug: code/main.c ui_debug.o
	${CC} ${CFLAGS} -ggdb3 ${LIBS} code/main.c ui_debug.o -o debug
databases/inventory.sql:
	mariadb-dump -u ${USER} -p inventory > databases/inventory.sql
clean:
	rm databases/inventory.sql system debug ui.o ui_debug.o
.PHONY:clean
