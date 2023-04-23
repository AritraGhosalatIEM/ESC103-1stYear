#include<ncurses.h>
#include<stdlib.h>
#include<mysql.h>
#include"ui.h"
#include"settings.h"
#include"keybindings.h"
WINDOW* interface;
MYSQL* connection;
int main(){
	bool running=true;
	interface=initscr();
	start_color();
	use_default_colors();//allow transparency
	noecho();//do not print input
	curs_set(0);//make cursor invisible
	connection=mysql_init(NULL);//initialize connection
	mysql_optionsv(connection,MYSQL_READ_DEFAULT_FILE,(void*)"./mysql_conf.cnf");//load password
	if(!mysql_real_connect(//connect to database
		connection,
		HOST,
		(char*)USER,
		NULL,
		DATABASE,
		SQL_PORT,
		NULL,
		0
	)){
		printf("Database connection failed");
		return 1;
	};
	void* (*frame)()=&home;
	do
		frame=(*frame)();
	while(frame!=NULL);
	endwin();
	curs_set(1);
	mysql_close(connection);
	return 0;
}
