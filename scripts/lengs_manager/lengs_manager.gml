function allLengs() {
	return [
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
		{
	        lang_name: "English 2",
	        resumne: "Resume",
	        setings: "Settings",
	        quit: "Quit",
	        winMode: "Window Mode",
	        lang: "Languagessss",
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
}

function getLengs(){
	lenguages = allLengs()
	var lengs = [];
	for (var i = 0; i < array_length(lenguages); i++) {
		lengs[i] = lenguages[i].lang_name;
	};
	return lengs
}

function getLeng(lang) {
	lenguages = allLengs()
	for (var i = 0; i < array_length(lenguages); i++) {
		if (lenguages[i].lang_name == lang) {
			return lenguages[i]
		};
	};
	return lenguages[0]
}