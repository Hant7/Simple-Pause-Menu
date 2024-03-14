draw_set_halign(fa_left)

if (pause) {
	draw_set_font(Font)
	if (!surface_exists(pauseSurfice)) {
		pauseSurfice = surface_create(surface_get_width(application_surface), surface_get_height(application_surface))
		surface_set_target(pauseSurfice);
		draw_surface(application_surface, 0, 0);
		surface_reset_target();
		instance_deactivate_all(true)
	}
	draw_set_color(Background_color)
	draw_set_alpha(Background_Alpha)
	draw_rectangle(0,0,width,height, false)
	draw_set_color(Font_color)
	draw_set_alpha(pauseMenu_Alpha)
	draw_set_color(Background_color)
	draw_rectangle(Border_Space,Border_Space,PauseMenu_sise,height-Border_Space,false)
	draw_set_color(Borders_Color)
	draw_set_alpha(Borders_Alpha)
	draw_rectangle(Border_Space,Border_Space,PauseMenu_sise,height-Border_Space,true)
	Min_move = 0;
	Max_move = array_length(pauseOptions);
	
	for (var i = 0; i < array_length(pauseOptions); i++) {
		if i = pauseOption_Select && interface == "" { draw_set_alpha(Select) } else { draw_set_alpha(Unselect) }
		draw_set_color(Font_color)
		draw_text(Border_Space+10,Border_Space + 5 + ((i) * font_size) + (i * (font_size/2)),pauseOptions[i].text);
	}
	if (ShowVersion) {
		draw_set_halign(fa_left)
		draw_set_alpha(Version_Alpha)
		if (CimetrickVersion) {
			draw_text(Border_Space+10,height-Border_Space-(font_size)-10,"S.P.M:")
			draw_set_halign(fa_right)
			draw_text(PauseMenu_sise-10,height-Border_Space-(font_size)-10,version)
		} else {
			draw_text(Border_Space+10,height-Border_Space-(font_size*2.5)-10,"S.P.M:")
			draw_text(Border_Space+10,height-Border_Space-(font_size)-10,version)
		}
	}

	// Menus
	ExecuteOptions(setingsOptions,"options")
	ExecuteText(leng.Example_Text,"Example")
	ExecuteList(themeList,"themes",180);
	ExecuteList(getLengs(),"lengs",100);
} 
if (Show_Window_Debug_Border) { draw_rectangle_color(Border_Space/2,Border_Space/2,width-(Border_Space/2),height-(Border_Space/2),Borders_Color,Background_color,Borders_Color,Background_color,true) }