/// Show a window with a options and variables. 
/// Options is a array to 3 elements. 1: text. 2: execute. 3: variable. 
/// option is a string uset to referenced this window
function ExecuteOptions(Options,option) {
	if (interface == option) {
		Min_move = 0;
		Max_move = array_length(Options);
		draw_set_alpha(pauseMenu_Alpha)
		draw_set_color(Background_color)
		if ((height < Border_Space + array_length(Options) * font_size) + (array_length(Options) * (font_size/2))*2  && height < (Border_Space + ((array_length(Options)) * font_size) + (array_length(Options) * (font_size/2)))) {
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,height-Border_Space,false)
			draw_set_color(Borders_Color)
			draw_set_alpha(Borders_Alpha)
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,height-Border_Space,true)
		} else {
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,Border_Space + array_length(Options) * font_size + array_length(Options) * (font_size/2) + Border_Space,false)
			draw_set_color(Borders_Color)
			draw_set_alpha(Borders_Alpha)
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,Border_Space  + array_length(Options) * font_size + array_length(Options) * (font_size/2) + Border_Space,true)
		}
		Scroll = 0;
		if (height < (Border_Space + ((pauseOption_Select) * font_size) + (pauseOption_Select * (font_size/2)))*2 && height < (Border_Space + ((array_length(Options)) * font_size) + (array_length(Options) * (font_size/2)))) {
			Scroll =((pauseOption_Select) * font_size + (pauseOption_Select * font_size*2) / 4) - ((height-Border_Space) / 2)
		}
		if (Scroll - (Scroll_Speed/2) > FluidScroll) {
			FluidScroll += Scroll_Speed
		} else if (Scroll + (Scroll_Speed/2) < FluidScroll) {
			FluidScroll -= Scroll_Speed
		}
		draw_set_color(Font_color)
		for (var i = 0; i < array_length(Options); i++) {
			if i = pauseOption_Select { draw_set_alpha(Select) } else { draw_set_alpha(Unselect) }
			if ((i * font_size) * 1.5 - FluidScroll > height - (Border_Space*2) - font_size*1.5) {
				 draw_set_alpha(0)
			} else if ((i * font_size) * 1.5 - FluidScroll < 0 + 10 - font_size) {
				draw_set_alpha(0)
			}
			draw_text((Border_Space * 2)+10 + PauseMenu_sise,Border_Space + 5 + ((i) * font_size) + (i * (font_size/2)) - FluidScroll,Options[i].text);
		}
		draw_set_halign(fa_right)
		for (var i = 0; i < array_length(Options); i++) {
			if i = pauseOption_Select { draw_set_alpha(Select) } else { draw_set_alpha(Unselect) }
			if ((i * font_size) * 1.5 - FluidScroll > height - (Border_Space*2) - font_size*1.5) {
				 draw_set_alpha(0)
			} else if ((i * font_size) * 1.5 - FluidScroll < 0 + 10 - font_size) {
				draw_set_alpha(0)
			}
			draw_text(width - Border_Space - 10,Border_Space + 5 + ((i) * font_size) + (i * (font_size/2)) - FluidScroll,Options[i].variable);
		}
		draw_set_halign(fa_left)
	}
	
	draw_set_halign(fa_left)
	draw_set_alpha(1)
	draw_set_color(c_white)
}

/// Show a windows whit a text
/// Options is a array to the text in lines, example: "line 1","line 2',
/// option is a string uset to referenced this window
function ExecuteText(text,option) {
	if (interface == option) {
		Min_move = 0;
		Max_move = array_length(text);
		draw_set_alpha(pauseMenu_Alpha)
		draw_set_color(Background_color)
		if ((height < Border_Space + array_length(text) * font_size) + (array_length(text) * (font_size/2))*2  && height < (Border_Space + ((array_length(text)) * font_size) + (array_length(text) * (font_size/2)))) {
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,height-Border_Space,false)
			draw_set_color(Borders_Color)
			draw_set_alpha(Borders_Alpha)
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,height-Border_Space,true)
		} else {
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,Border_Space + array_length(text) * font_size + array_length(text) * (font_size/2) + Border_Space,false)
			draw_set_color(Borders_Color)
			draw_set_alpha(Borders_Alpha)
			draw_rectangle(Border_Space * 2 + PauseMenu_sise,Border_Space,width-Border_Space,Border_Space  + array_length(text) * font_size + array_length(text) * (font_size/2) + Border_Space,true)
		}
		Scroll = 0;
		if (height < (Border_Space + ((pauseOption_Select) * font_size) + (pauseOption_Select * (font_size/2)))*2 && height < (Border_Space + ((array_length(text)) * font_size) + (array_length(text) * (font_size/2)))) {
			Scroll =((pauseOption_Select) * font_size + (pauseOption_Select * font_size*2) / 4) - ((height-Border_Space) / 2)
		}
		if (Scroll - (Scroll_Speed/2) > FluidScroll) {
			FluidScroll += Scroll_Speed
		} else if (Scroll + (Scroll_Speed/2) < FluidScroll) {
			FluidScroll -= Scroll_Speed
		}
		draw_set_color(Font_color)
		draw_set_halign(fa_center)
		for (var i = 0; i < array_length(text); i++) {
			if ((i * font_size) * 1.5 - FluidScroll > height - (Border_Space*2) - font_size*1.5) {
				 draw_set_alpha(0)
			} else if ((i * font_size) * 1.5 - FluidScroll < 0 + 10 - font_size) {
				draw_set_alpha(0)
			}
			var a = (width-Border_Space);
			var b = (Border_Space * 2 + PauseMenu_sise);
			var c = a  - b;
			var d = (Border_Space * 2 + PauseMenu_sise);
			var e = c / 2;
			var f = c / 2;
			var center = f + d;
			draw_text(center,(Border_Space + 5 + ((i) * font_size) + (i * (font_size/2))) - FluidScroll, text[i]);
		}
	}

	draw_set_halign(fa_left)
	draw_set_alpha(1)
	draw_set_color(c_white)
}

///create a list to your elements, suport 3 variables. 1 text array 2 option selected 3 optional Size, if you don't put a Size the sise is equals to the var List_Size
function ExecuteList(text,option,Size = List_Size) {
	if (interfaceList == option) {
		
		var Scrolling = 0
		while (pauseOption_Select*(font_size*1.5)-Scroll+Border_Space+array_length(text)*(font_size*1.5)+Border_Space-Scrolling > height - Border_Space/2) {
			Scrolling++
		}
		MinList_move = 0;
		MaxList_move = array_length(text);
		draw_set_color(Background_color)
		draw_set_alpha(1)
		draw_rectangle((width)-Border_Space-List_Border,pauseOption_Select*(font_size*1.5)-Scroll+Border_Space-Scrolling,(width)-Border_Space-Size-List_Border,pauseOption_Select*(font_size*1.5)-Scroll+Border_Space+array_length(text)*(font_size*1.5)+Border_Space-Scrolling,false)
		draw_set_color(Borders_Color)
		draw_set_alpha(1)
		draw_rectangle((width)-Border_Space-List_Border,pauseOption_Select*(font_size*1.5)-Scroll+Border_Space-Scrolling,(width)-Border_Space-Size-List_Border,pauseOption_Select*(font_size*1.5)-Scroll+Border_Space+array_length(text)*(font_size*1.5)+Border_Space-Scrolling,true)
		draw_set_halign(fa_right)
		for (var i = 0; i < array_length(text); i++) {
			draw_set_color(Font_color)
			if i = pauseOptionList_Select { draw_set_alpha(Select) } else { draw_set_alpha(Unselect) }
			draw_text(width-Border_Space-10-List_Border,pauseOption_Select*(font_size*1.5) + (i*(font_size*1.5))+Border_Space+5-Scroll-Scrolling,text[i])
		}
	}
	
	draw_set_halign(fa_left);
	draw_set_alpha(1);
	draw_set_color(c_white);
}