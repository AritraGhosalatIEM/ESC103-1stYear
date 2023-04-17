#include<ncurses.h>
#include"ui.h"
#include"keybindings.h"
WINDOW* interface;
int main(){
	bool running=true;
	interface=initscr();
	start_color();
	use_default_colors();//allow transparency
	noecho();//do not print input
	curs_set(0);//make cursor invisible
	void* (*frame)()=&home;
	while(frame!=NULL)
		frame=(*frame)();
	endwin();
	curs_set(1);
	return 0;
}
