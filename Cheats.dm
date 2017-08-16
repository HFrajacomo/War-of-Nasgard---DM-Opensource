mob/verb
	Cheatando()
		var/obj/Prep/Trigo/O = new()
		src.contents +=O
		usr.espaco+=1

	Cheatando2()
		var/obj/PlantaR/Rubrosa/O = new()
		src.contents +=O
		usr.espaco+=1
	Give()
		set category="Cheat"
		set name="Teia"
		if(usr.espaco<25)
			var/obj/Teia/E = new()
			usr.contents += E
			usr.espaco+=1
			usr<<"Cheat Activated"
		else
			usr<<"Cheat Failed"

	Give2()
		set category="Cheat"
		set name="Cobre"
		if(usr.espaco<25)
			var/obj/Barra_de_Cobre/E = new()
			usr.contents += E
			usr.espaco+=1
			usr<<"Cheat Activated"
		else
			usr<<"Cheat Failed"

	Give3()
		set category="Cheat"
		set name="Bronze"
		if(usr.espaco<25)
			var/obj/Barra_de_Bronze/E = new()
			usr.contents += E
			usr.espaco+=1
			usr<<"Cheat Activated"
		else
			usr<<"Cheat Failed"

	Give4()
		set category="Cheat"
		set name="Ferro"
		if(usr.espaco<25)
			var/obj/Barra_de_Ferro/E = new()
			usr.contents += E
			usr.espaco+=1
			usr<<"Cheat Activated"
		else
			usr<<"Cheat Failed"

	Give5()
		set category="Cheat"
		set name="Madeira"
		if(usr.espaco<25)
			var/obj/Madeira/E = new()
			usr.contents += E
			usr.espaco+=1
			usr<<"Cheat Activated"
		else
			usr<<"Cheat Failed"