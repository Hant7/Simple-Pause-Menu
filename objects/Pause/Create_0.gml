pauseSurfice = noone;

FluidScroll = 0;

pause = false;

width = window_get_width();
height = window_get_height();

font_size = font_get_size(Font);

pauseOption_Select = 0;
pauseOptionList_Select = 0;

Move_pressed = false;

Min_move = 0;
Max_move = 1;

MinList_move = 0;
MaxList_move = 1;

interface = "";
interfaceList = "";

option_pressed = false;
return_pressed = false;
version = "Alpha v1.2.5";
lang = 0;

Scroll = 0;

pauseOptions = [];

setingsOptions = [];

lenguages = [
    {
        lang_name: "English",
        resumne: "Resume",
        setings: "Settings",
        quit: "Quit",
        winMode: "Window Mode",
        lang: "Language",
        FullscreemOff: "Window",
        FullscreemOn: "Fullscreen",
		Theme: "Theme",
		Example: "Example",
		Example_Text : [
			"",
			"Hello, this is a sample text. I will take this opportunity to introduce myself as a",
		    "developer. I am Hant7 and I am a fairly new programmer who wants to contribute to the",
		    "community with simple and functional solutions that can be freely used, and I hope you",
		    "enjoy Simple Pause Menu.",
		    "",
		],
    },
];

// Example
themeName = "";
theme = 1;