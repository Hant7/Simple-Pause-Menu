/// Resume the game
function resumeGame() {
	pause = false;
	surface_free(pauseSurfice)
	instance_activate_all()
	audio_resume_all()
	window_set_cursor(cr_none)
}

/// execute escripts to pause
/// put here the actions to the selected options
function executePause(action) {
	switch(action) {
		case  "resumeGame":
			resumeGame();
		break
		case "openSetings":
			interface = "options";
		break
		case "ChangeLang":
			interfaceList = "lengs"
		break
		case "ChangeScreemMode":
			window_set_fullscreen(!window_get_fullscreen())
		break
		case "quit":
			game_end()
		break
		case "ChangeTheme":
			interfaceList = "themes"
		break
		case "Example":
			interface = "Example";
		break
		case "AplyTheme":
			theme = pauseOptionList_Select+1;
		break
		case "Aplyleng":
			selectLeng = pauseOptionList_Select;
			leng=getLeng(lenguages[selectLeng])
		break
		default:
			show_debug_message(string(action)+" is out of range");
		break
	}
}