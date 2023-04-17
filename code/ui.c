#include<ncurses.h>
#include"ui.h"
#include"keybindings.h"
#define SELECTED 1
#define UNSELECTED 2
void* item_page(){
	erase();
	refresh();
	for(;;)switch(getch()){
		case QUIT:
			return NULL;
	}
}
void* home(){
	init_pair(SELECTED,COLOR_BLACK,COLOR_WHITE);
	init_pair(UNSELECTED,-1,-1);
	mvprintw(0,0,"\
.d88888b    dP                     dP                oo dP                   \n\
88.    \"'   88                     88                   88                   \n\
`Y88888b. d8888P .d8888b. .d8888b. 88  .dP  88d888b. dP 88 .d8888b. 88d888b. \n\
      `8b   88   88'  `88 88'  `\"\" 88888\"   88'  `88 88 88 88ooood8 88'  `88 \n\
d8'   .8P   88   88.  .88 88.  ... 88  `8b. 88.  .88 88 88 88.  ... 88       \n\
 Y88888P    dP   `88888P' `88888P' dP   `YP 88Y888P' dP dP `88888P' dP       \n\
                                            88                               \n\
                                            dP                               \n\
");//```figlet Stockpiler -f Nancyj
	refresh();
	WINDOW* add_item=newwin(interface->_maxy/2-9,interface->_maxx/2-15,13,5);
	box(add_item,0,0);
	mvwprintw(add_item,add_item->_maxy/2,add_item->_maxx/2-4,"Add Items");
	box(add_item,0,0);
	wbkgd(add_item,COLOR_PAIR(SELECTED));
	WINDOW* selected=add_item;
	wrefresh(add_item);
	WINDOW* remove_item=newwin(interface->_maxy/2-9,interface->_maxx/2-15,13,10+interface->_maxx/2);
	box(remove_item,0,0);
	mvwprintw(remove_item,remove_item->_maxy/2,remove_item->_maxx/2-6,"Remove Items");
	box(remove_item,0,0);
	wrefresh(remove_item);
	WINDOW* new_item=newwin(interface->_maxy/2-9,interface->_maxx/2-15,5+interface->_maxy/2,5);
	box(new_item,0,0);
	mvwprintw(new_item,new_item->_maxy/2,new_item->_maxx/2-4,"New Item");
	box(new_item,0,0);
	wrefresh(new_item);
	WINDOW* generate_report=newwin(interface->_maxy/2-9,interface->_maxx/2-15,5+interface->_maxy/2,10+interface->_maxx/2);
	box(generate_report,0,0);
	mvwprintw(generate_report,generate_report->_maxy/2,generate_report->_maxx/2-7,"Generate Report");
	box(generate_report,0,0);
	wrefresh(generate_report);
	for(;;)switch(getch()){
		case QUIT:
			return NULL;
		case LEFT:
		case RIGHT:
			wbkgd(selected,COLOR_PAIR(UNSELECTED));
			wrefresh(selected);
			if(selected==add_item)
					selected=remove_item;
			else if(selected==remove_item)
					selected=add_item;
			else if(selected==new_item)
					selected=generate_report;
			else if(selected==generate_report)
					selected=new_item;
			wbkgd(selected,COLOR_PAIR(SELECTED));
			wrefresh(selected);
			break;
		case UP:
		case DOWN:
			wbkgd(selected,COLOR_PAIR(UNSELECTED));
			wrefresh(selected);
			if(selected==add_item)
					selected=new_item;
			else if(selected==remove_item)
					selected=generate_report;
			else if(selected==new_item)
					selected=add_item;
			else if(selected==generate_report)
					selected=remove_item;
			wbkgd(selected,COLOR_PAIR(SELECTED));
			wrefresh(selected);
			break;
		case SELECT:
			delwin(add_item);
			delwin(remove_item);
			delwin(new_item);
			delwin(generate_report);
			if(selected==add_item)
				return &item_page;
			break;
	}
}
