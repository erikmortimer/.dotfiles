//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "~/.local/bin/status_date",	60,		1},
	{"Mem:", "~/.local/bin/status_mem",	5,		1},
	{"Temp:", "~/.local/bin/status_temp",	5,		2},
	{"Cpu:", "~/.local/bin/status_cpu",	5,		3},
	{"Vol:", "~/.local/bin/status_vol",	5,		4},
	{"SSID:", "~/.local/bin/status_ssid",	5,		4},
	{"Bat:", "~/.local/bin/status_bat",	60,		5},

    //Maybe add an ETC or BTC price or SPX price
    //Maybe add a Q1/Q2/Q3/Q4 date thing
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
