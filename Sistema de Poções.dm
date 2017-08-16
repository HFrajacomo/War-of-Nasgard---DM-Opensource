// Turfs //

mob/NPC
	MesaI
		density = 1
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				winshow(usr,"Infusão",1)
				return
			M.Dialogue(src)
		name="Mesa de Infusão"
		icon='Mesa_infusao.dmi'

// OBJ //

obj/Fragmento_de_Helix
	name = "Fragmento de Hélix"
	icon='Plantas.dmi'
	icon_state="H"

obj/Helix
	name = "Hélix"
	icon='Plantas.dmi'
	icon_state="OH"

obj/Raiz
	name="Raiz de Gaia"
	icon='Plantas.dmi'
	icon_state="Raiz de Gaia"

// Botões //

mob/verb
	CFolhas()
		var/I=0
		var/E=0
		var/obj/Raiz/D = /obj/Raiz
		for(D in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Madeira/D1 = /obj/Madeira
			var/obj/M = locate(D1) in usr.contents
			for(M in usr.contents)
				E+=1
			if(E>=3)
				var/obj/Armas/Cajado/Cajado_de_Folhas/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				BankTag()
				usr.espaco-=7
				var/obj/M1 = locate(/obj/Madeira) in usr.contents
				del(M1)
				var/obj/M2 = locate(/obj/Madeira) in usr.contents
				del(M2)
				var/obj/M3 = locate(/obj/Madeira) in usr.contents
				del(M3)

				var/obj/O1 = locate(/obj/Raiz) in usr.contents
				del(O1)
				var/obj/O2 = locate(/obj/Raiz) in usr.contents
				del(O2)
				var/obj/O3 = locate(/obj/Raiz) in usr.contents
				del(O3)
				var/obj/O4 = locate(/obj/Raiz) in usr.contents
				del(O4)
				var/obj/O5 = locate(/obj/Raiz) in usr.contents
				del(O5)
			else
				usr<<output("Precisa de 5 Raízes de Gaia e 3 Madeiras","Chat")
		else
			usr<<output("Precisa de 5 Raízes de Gaia e 3 Madeiras","Chat")

mob/verb
	CNatureza()
		var/I=0
		var/obj/peixe/D = /obj/peixe
		var/obj/P = locate(D) in usr.contents
		for(P in usr.contents)
			I+=1
		if(I>=2)
			var/obj/Armas/Cajado/Cajado_de_Folhas/M = locate(/obj/Armas/Cajado/Cajado_de_Folhas) in usr.contents
			if(locate(M) in usr.contents)
				var/obj/Carvao/J = locate(/obj/Carvao) in usr.contents
				if(locate(J) in usr.contents)
					var/obj/Armas/Cajado/Cajado_da_Natureza/W = new()
					usr.contents += W
					usr<<output("Você recebeu [W]","Chat")
					BankTag()
					usr.espaco-=3
					del(M)
					del(J)
					var/obj/peixe/D1 = locate(/obj/peixe) in usr.contents
					del(D1)
					var/obj/peixe/D2 = locate(/obj/peixe) in usr.contents
					del(D2)
				else
					usr<<output("Precisa de 2 peixes cru, 1 Carvão e 1 Cajado de Folhas","Chat")
			else
				usr<<output("Precisa de 2 peixes cru, 1 Carvão e 1 Cajado de Folhas","Chat")
		else
			usr<<output("Precisa de 2 peixes cru, 1 Carvão e 1 Cajado de Folhas","Chat")


mob/verb
	CFerro()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Helix/H = locate(/obj/Helix) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			if(H in usr.contents)
				var/obj/Armas/Cajado/Cajado_de_Ferro/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				BankTag()
				usr.espaco-=3
				del(G)
				var/obj/Barra_de_Ferro/M = locate(/obj/Barra_de_Ferro) in usr.contents
				usr.contents.Remove(M)
				var/obj/Barra_de_Ferro/T2 = locate(/obj/Barra_de_Ferro) in usr.contents
				usr.contents.Remove(T2)
				usr.contents.Remove(H)
			else
				usr<<output("Precisa de 3 Barras de Ferro e 1 Hélix","Chat")
		else
			usr<<output("Precisa de 3 Barras de Ferro e 1 Hélix","Chat")


mob/verb/Orbe()
	var/I=0
	var/obj/Fragmento_de_Helix/T = locate(/obj/Fragmento_de_Helix) in usr.contents
	var/obj/Fragmento_de_Helix/G = locate(/obj/Fragmento_de_Helix) in usr.contents
	for(T in usr.contents)
		I+=1
	if(I>=4)
		var/obj/Helix/W = new()
		usr.contents += W
		usr<<output("Você recebeu [W]","Chat")
		BankTag()
		usr.espaco-=3
		del(G)
		var/obj/Fragmento_de_Helix/M = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(M)
		var/obj/Fragmento_de_Helix/T2 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T2)
		var/obj/Fragmento_de_Helix/T3 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T3)
	else
		usr<<output("Precisa de 4 Fragmentos de Hélix","Chat")


mob/verb/PPMP()
	var/I=0
	var/obj/Fragmento_de_Helix/T = locate(/obj/Fragmento_de_Helix) in usr.contents
	var/obj/Fragmento_de_Helix/G = locate(/obj/Fragmento_de_Helix) in usr.contents
	for(T in usr.contents)
		I+=1
	if(I>=2)
		var/obj/potionm/W = new()
		usr.contents += W
		usr<<output("Você recebeu [W]","Chat")
		BankTag()
		usr.espaco-=1
		del(G)
		var/obj/Fragmento_de_Helix/M = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(M)
	else
		usr<<output("Precisa de 2 Fragmentos de Hélix","Chat")

mob/verb/PPHP()
	var/obj/Fragmento_de_Helix/T = locate(/obj/Fragmento_de_Helix) in usr.contents
	var/obj/Raiz/G = locate(/obj/Raiz) in usr.contents
	if(T && G)
		var/obj/potion/W = new()
		usr.contents += W
		usr<<output("Você recebeu [W]","Chat")
		BankTag()
		usr.espaco-=1
		del(G)
		usr.contents.Remove(T)
	else
		usr<<output("Precisa de um fragmento de hélix, e uma raiz de gaia","Chat")


mob/verb/PGMP()
	var/I=0
	var/obj/Fragmento_de_Helix/T = locate(/obj/Fragmento_de_Helix) in usr.contents
	var/obj/Ferrao/G = locate(/obj/Ferrao) in usr.contents
	for(T in usr.contents)
		I+=1
	if(G && I>=3)
		var/obj/potionmg/W = new()
		usr.contents += W
		usr<<output("Você recebeu [W]","Chat")
		BankTag()
		usr.espaco-=3
		del(G)
		var/obj/Fragmento_de_Helix/T1 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T1)
		var/obj/Fragmento_de_Helix/T2 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T2)
		var/obj/Fragmento_de_Helix/T3 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T3)
	else
		usr<<output("Precisa de 3 Fragmentos de Hélix e 1 Ferrão","Chat")

mob/verb/PGHP()
	var/I=0
	var/obj/Fragmento_de_Helix/T = locate(/obj/Fragmento_de_Helix) in usr.contents
	var/obj/BifeCoz/G = locate(/obj/BifeCoz) in usr.contents
	for(T in usr.contents)
		I+=1
	if(G && I>=3)
		var/obj/potiong/W = new()
		usr.contents += W
		usr<<output("Você recebeu [W]","Chat")
		BankTag()
		usr.espaco-=3
		del(G)
		usr.contents.Remove(T)
		var/obj/Fragmento_de_Helix/T1 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T1)
		var/obj/Fragmento_de_Helix/T2 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T2)
		var/obj/Fragmento_de_Helix/T3 = locate(/obj/Fragmento_de_Helix) in usr.contents
		usr.contents.Remove(T3)
	else
		usr<<output("Precisa de 3 Fragmentos de Hélix e 1 Bife Cozido","Chat")





















mob/verb/ESPACODAORA()
	usr.espaco+=1


mob/verb/CheatH()
	var/obj/Fragmento_de_Helix/M = new()
	usr.contents += M
	usr.espaco+=1