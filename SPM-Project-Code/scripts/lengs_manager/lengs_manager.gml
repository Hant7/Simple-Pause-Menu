function allLengs() {
	return [
	    {
	        lang_name: "English",
			menu: {
		        resumne: "Resume",
		        setings: "Settings",
		        quit: "Quit",
				Example: "Example",
			},
			setings_menu:{
				winMode: "Window Mode",
		        lang: "Language",
		        FullscreemOff: "Window",
		        FullscreemOn: "Fullscreen",
				Theme: "Theme",
			},
			example_menu: {
				Example_Text : [
					"",
					"Hello, this is a sample text. I will take this opportunity to introduce myself as a",
				    "developer. I am Hant7 and I am a fairly new programmer who wants to contribute to the",
				    "community with simple and functional solutions that can be freely used, and I hope you",
				    "enjoy Simple Pause Menu.",
				    "",
				],
			},
	    },
		{
		    "lang_name": "Spanish",
		    "menu": {
		        "resumne": "Resumen",
		        "setings": "Configuracion",
		        "quit": "Salir",
		        "Example": "Ejemplo"
		    },
		    "setings_menu": {
		        "winMode": "Modo de Ventana",
		        "lang": "Idioma",
		        "FullscreemOff": "Ventana",
		        "FullscreemOn": "Pantalla Completa",
		        "Theme": "Tema"
		    },
		    "example_menu": {
		        "Example_Text": [
		            "",
		            "Hola, este es un texto de ejemplo. Aprovechare esta oportunidad para presentarme como",
		            "desarrollador. Soy Hant7 y soy un programador bastante nuevo que quiere contribuir a la",
		            "comunidad con soluciones simples y funcionales que puedan ser utilizadas libremente,",
		            "y espero que tu disfrutes de Simple Pause Menu.",
		            ""
		        ],
		    },
		},
	];
}

function getLengs(){
	var lenguages = allLengs()
	var lengs = [];
	for (var i = 0; i < array_length(lenguages); i++) {
		lengs[i] = lenguages[i].lang_name;
	};
	return lengs
}

function getLeng(lang) {
	var lenguages = allLengs()
	for (var i = 0; i < array_length(lenguages); i++) {
		if (lenguages[i].lang_name == lang) {
			return lenguages[i]
		};
	};
	return lenguages[0]
}