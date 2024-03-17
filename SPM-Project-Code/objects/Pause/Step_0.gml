Key_up = keyboard_check(vk_up);
Key_down = keyboard_check(vk_down);
Key_enter = keyboard_check(vk_enter);
Key_return = keyboard_check(vk_escape);
if (pause) {
    // Control for option selection
	if (interfaceList == "") {
	    if (Key_up && !Move_pressed) {
	        pauseOption_Select--;
	        Move_pressed = true;
	    }
	    if (Key_down && !Move_pressed) {
	        pauseOption_Select++;
	        Move_pressed = true;
	    }
	    if (!Key_up && !Key_down) {
	        Move_pressed = false;
	    }
	} else {
		if (Key_up && !Move_pressed) {
	        pauseOptionList_Select--;
	        Move_pressed = true;
	    }
	    if (Key_down && !Move_pressed) {
	        pauseOptionList_Select++;
	        Move_pressed = true;
	    }
	    if (!Key_up && !Key_down) {
	        Move_pressed = false;
	    }
	}
	
    // Control for executing options
	// add a && Key_enter to end in a firsh if with dom't auto aplicate changes.
	if (interfaceList = "themes" && !option_pressed) {
		executePause("AplyTheme");
        option_pressed = true;
    } else if (interfaceList = "lengs" && !option_pressed && Key_enter) {
		executePause("Aplyleng");
        option_pressed = true;
    } else if (interfaceList == "" && interface == "" && Key_enter && !option_pressed) {
        executePause(pauseOptions[pauseOption_Select].execute);
        option_pressed = true;
    } else if (interfaceList == "" && interface == "interfaceName" && Key_enter && !option_pressed) {
        executePause(NewOption[pauseOption_Select].execute);
        option_pressed = true;
    } else if (interfaceList == "" && interface == "options" && Key_enter && !option_pressed) {
        executePause(setingsOptions[pauseOption_Select].execute);
        option_pressed = true;
    } else if (!Key_enter) {
        option_pressed = false;
    }
}
if (Key_return && !return_pressed) {
	if (interface == "") {
		pause = !pause;
	}
	if (pause && interface == "") {
		audio_pause_all();
		window_set_cursor(cr_none)
	} else if (interface == "") {
		surface_free(pauseSurfice)
		instance_activate_all()
		audio_resume_all()
		window_set_cursor(cr_none)
		pauseOption_Select = 0;
	} else if (interfaceList == "") {
		interface = "";
		option_pressed = true;
	} else {
		interfaceList = "";
		option_pressed = true;
	}
	return_pressed = true
} else if (!Key_return) { return_pressed = false }

// Pause Options
pauseOptions = [
    {
        text: leng.menu.resumne,
        execute: "resumeGame",
    },
    {
        text: leng.menu.setings,
        execute: "openSetings",
    },
	 {
        text: leng.menu.Example,
        execute: "Example",
    },
    {
        text: leng.menu.quit,
        execute: "quit",
    },
];

// Settings Options
setingsOptions = [
    {
        text: leng.setings_menu.lang,
        execute: "ChangeLang",
        variable: leng.lang_name,
    },
    {
        text: leng.setings_menu.winMode,
        execute: "ChangeScreemMode",
        variable: ((window_get_fullscreen()) ? leng.setings_menu.FullscreemOn : leng.setings_menu.FullscreemOff),
    },
	{
        text: leng.setings_menu.Theme,
        execute: "ChangeTheme",
        variable: themeName,
    },
];

// this is a example
themes = 22;
themeList = [
	"Simple",
	"Space Blue",
	"Forest Green",
	"Star Orange",
	"Purple Stars",
	"Simple Pink",
	"Space 1",
	"Space 2",
	"Crimson Red",
	"House Brown",
	"Sunny Aqua",
	"Silver Gray",
	"Mystic Magenta",
	"Royal Purple",
	"Lime Green",
	"Teal Blue",
	"Goldenrod",
	"Ocean Blue",
	"Dark Orchid",
	"Stranger",
	"Bg Test 1",
	"Bg Test 2"
]
if (theme <= array_length(themeList) && theme > 0) {
	themeName = themeList[theme - 1]
}

switch(theme) {
	case 1:
		Background_color = $FF000000;
		Font_color = $FFFFFFFF;
		Borders_Color = $FFFFFFFF;
		Image_Background_Use = false
	break
	case 2:
		Background_color = $FF191911;
		Font_color = $FFFFFFCC;
		Borders_Color = $FFFFFFCC;
		Image_Background_Use = false
	break
	case 3:
		Background_color = $FF001900;
		Font_color = $FF00D826;
		Borders_Color = $FF00D826;
		Image_Background_Use = false
	break
	case 4:
		Background_color = $FF000B19;
		Font_color = $FF328CFF;
		Borders_Color = $FF328CFF;
		Image_Background_Use = false
	break
	case 5:
		Background_color = $FF330023;
		Font_color = $FFFF45C8;
		Borders_Color = $FFFF45C8;
		Image_Background_Use = false
	break
	case 6:
		Background_color = $FF423D4C;
		Font_color = $FFAD51CC;
		Borders_Color = $FF6C19FF;
		Image_Background_Use = false
	break
	case 7:
		Background_color = $FF191414;
		Font_color = $FF32A4FF;
		Borders_Color = $FFFF3232;
		Image_Background_Use = false
	break
	case 8:
		Background_color = $FF050F19;
		Font_color = $FFFF3232;
		Borders_Color = $FF32A4FF;
		Image_Background_Use = false
	break
	    case 9:
        Background_color = $FF190009;
        Font_color = $FFFF1923;
        Borders_Color = $FF1923FF;
		Image_Background_Use = false
        break;
    case 10:
        Background_color = $FF001F3F;
        Font_color = $FF8ED6FF;
        Borders_Color = $FF8ED6FF;
		Image_Background_Use = false
        break;
    case 11:
        Background_color = $FFFFFF00;
        Font_color = $FF008080;
        Borders_Color = $FF008080;
		Image_Background_Use = false
        break;
    case 12:
        Background_color = $FF808080;
        Font_color = $FF000000;
        Borders_Color = $FF000000;
		Image_Background_Use = false
        break;
    case 13:
        Background_color = $FF33001B;
        Font_color = $FFFF5CCD;
        Borders_Color = $FFFF5CCD;
		Image_Background_Use = false
        break;
    case 14:
        Background_color = $FF4B0082;
        Font_color = $FFFFF700;
        Borders_Color = $FFFFF700;
		Image_Background_Use = false
        break;
    case 15:
        Background_color = $FF32CD32;
        Font_color = $FF8B0000;
        Borders_Color = $FF8B0000;
		Image_Background_Use = false
        break;
    case 16:
        Background_color = $FF008080;
        Font_color = $FFFFD700;
        Borders_Color = $FFFFD700;
		Image_Background_Use = false
        break;
    case 17:
        Background_color = $FFDAA520;
        Font_color = $FF2F4F4F;
        Borders_Color = $FF2F4F4F;
		Image_Background_Use = false
        break;
    case 18:
        Background_color = $FF5C3317;
        Font_color = $FFFFF8DC;
        Borders_Color = $FFFFF8DC;
		Image_Background_Use = false
        break;
    case 19:
        Background_color = $FF87CEEB;
        Font_color = $FF191970;
        Borders_Color = $FF191970;
		Image_Background_Use = false
        break;
    case 20:
        Background_color = $FF9932CC;
        Font_color = $FF00FF7F;
        Borders_Color = $FF00FF7F;
		Image_Background_Use = false
        break;
	case 21:
		Background_color = $FF9932CC;
        Font_color = $00ffffff;
        Borders_Color = $00E565FF;
		Image_Background_Use = true;
		Image_Background = Background_1;
		break;
	case 22:
		Background_color = $007FFF7F;
        Font_color = $00000000;
        Borders_Color = $007FFF7F;
		Image_Background_Use = true;
		Image_Background = Background_2;
		break;
    default:
        themeName = "out of range";
        Background_color = $00000000;
        Font_color = $000000FF;
        Borders_Color = $000000FF;
		Image_Background_Use = false
    break;
}

if (!window_has_focus() && Pause_On_Unfocus) {
	pause = true
}