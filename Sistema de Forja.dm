mob/verb/SwordBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaEspada",1)

mob/verb/BowBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaArco",1)

mob/verb/ShieldBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaEscudo",1)

mob/verb/HelmetBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaElmo",1)

mob/verb/BootsBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaBota",1)

mob/verb/ArmorBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaArmadura",1)

mob/verb/DaggersBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaAdaga",1)

mob/verb/BroadBS()
	winshow(usr,"ForjaMain",0)
	winshow(usr,"ForjaMontante",1)


area/Forja
	Exited(mob/M)
		if(M.ID!=0)
			return
		if(usr.Tgt!=null)
			usr.Tgt=null
		winshow(usr, "ForjaMain",0)
		winshow(usr, "ForjaEspada",0)
		winshow(usr, "ForjaArco",0)
		winshow(usr, "ForjaAdaga",0)
		winshow(usr, "ForjaMontante",0)
		winshow(usr, "ForjaBota",0)
		winshow(usr, "ForjaArmadura",0)
		winshow(usr, "ForjaElmo",0)
		winshow(usr, "ForjaEscudo",0)
		winshow(usr, "ForjaCajado",0)
		winshow(usr, "ForjaBotaL",0)
		winshow(usr, "ForjaCota",0)
		winshow(usr, "ForjaChapéu",0)
		winshow(usr, "ForjaCartola",0)
		winshow(usr, "ForjaTúnica",0)


mob/verb
	CopperSwordBS()
		var/I=0
		var/obj/Barra_de_Cobre/D = /obj/Barra_de_Cobre
		var/obj/P = locate(D) in usr.contents
		for(D in usr.contents)
			I+=1
		if(I>=2)
			var/obj/M = locate(/obj/Madeira) in usr.contents
			if(locate(M) in usr.contents)
				var/obj/Armas/Espada/Espada_de_Cobre/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				BankTag()
				usr.espaco-=2
				del(M)
				del(P)
				var/obj/Barra_de_Cobre/p = locate(/obj/Barra_de_Cobre) in usr.contents
				del(p)
			else
				usr<<output("Precisa de 2 barras de cobre e 1 madeira para forjar a espada","Chat")
		else
			usr<<output("Precisa de 2 barras de cobre e 1 madeira para forjar a espada","Chat")

	BronzeSwordBS()
		var/I=0
		var/obj/Barra_de_Bronze/D = /obj/Barra_de_Bronze
		var/obj/P = locate(D) in usr.contents
		for(D in usr.contents)
			I+=1
		if(I>=2)
			var/obj/M = locate(/obj/Madeira) in usr.contents
			if(locate(M) in usr.contents)
				var/obj/Armas/Espada/Espada_de_Bronze/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				BankTag()
				usr.espaco-=2
				del(M)
				del(P)
				var/obj/Barra_de_Bronze/p = locate(/obj/Barra_de_Bronze) in usr.contents
				del(p)
			else
				usr<<output("Precisa de 2 barras de bronze e 1 madeira para forjar a espada","Chat")
		else
			usr<<output("Precisa de 2 barras de bronze e 1 madeira para forjar a espada","Chat")

	IronSwordBS()
		var/I=0
		var/obj/Barra_de_Ferro/D = /obj/Barra_de_Ferro
		var/obj/P = locate(D) in usr.contents
		for(D in usr.contents)
			I+=1
		if(I>=2)
			var/obj/M = locate(/obj/Madeira) in usr.contents
			if(locate(M) in usr.contents)
				var/obj/Armas/Espada/Espada_de_Ferro/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				BankTag()
				usr.espaco-=2
				del(M)
				del(P)
				var/obj/Barra_de_Ferro/p = locate(/obj/Barra_de_Ferro) in usr.contents
				del(p)
			else
				usr<<output("Precisa de 2 barras de ferro e 1 madeira para forjar a espada","Chat")
		else
			usr<<output("Precisa de 2 barras de ferro e 1 madeira para forjar a espada","Chat")

	WoodenSwordBS()
		var/I=0
		var/obj/Madeira/M = locate(/obj/Madeira) in usr.contents
		var/obj/Madeira/M2 = locate(/obj/Madeira) in usr.contents
		for(M in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Armas/Espada/Espada_de_Madeira/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			usr.contents.Remove(M2)
			var/obj/M3 = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(M3)
			var/obj/M4 = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(M4)
		else
			usr<<output("Precisa de 3 madeiras","Chat")

			// Arcos //

	WoodenBowBS()
		var/I=0
		var/obj/Madeira/M = locate(/obj/Madeira) in usr.contents
		var/obj/Teia/T = locate(/obj/Teia) in usr.contents
		var/obj/Teia/T2 = locate(/obj/Teia) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3 && M)
			var/obj/Armas/Arco/Arco_de_Madeira/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(M)
			usr.contents.Remove(T2)
			var/obj/T3 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T3)
			var/obj/T4 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 3 teias e 1 madeira","Chat")

	CopperBowBS()
		var/I=0
		var/obj/Madeira/M = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Teia/T = locate(/obj/Teia) in usr.contents
		var/obj/Teia/T2 = locate(/obj/Teia) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3 && M)
			var/obj/Armas/Arco/Arco_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(M)
			usr.contents.Remove(T2)
			var/obj/T3 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T3)
			var/obj/T4 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 3 teias e 1 Barra de Cobre","Chat")

	BronzeBowBS()
		var/I=0
		var/obj/Madeira/M = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Teia/T = locate(/obj/Teia) in usr.contents
		var/obj/Teia/T2 = locate(/obj/Teia) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3 && M)
			var/obj/Armas/Arco/Arco_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(M)
			usr.contents.Remove(T2)
			var/obj/T3 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T3)
			var/obj/T4 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 3 teias e 1 Barra de Bronze","Chat")

	IronBowBS()
		var/I=0
		var/obj/Madeira/M = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Teia/T = locate(/obj/Teia) in usr.contents
		var/obj/Teia/T2 = locate(/obj/Teia) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3 && M)
			var/obj/Armas/Arco/Arco_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(M)
			usr.contents.Remove(T2)
			var/obj/T3 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T3)
			var/obj/T4 = locate(/obj/Teia) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 3 teias e 1 Barra de Ferro","Chat")

			// Escudos //

	WoodenShieldBS()
		var/I=0
		var/obj/Madeira/T = locate(/obj/Madeira) in usr.contents
		var/obj/Madeira/G = locate(/obj/Madeira) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Escudos/Escudo_de_Madeira/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Madeira/M = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(M)
			var/obj/Madeira/T2 = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Madeiras","Chat")

	CopperShieldBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I+=1
			usr<<output("[I]","Chat")
		if(I>=3)
			var/obj/Escudos/Escudo_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Barra_de_Cobre/M = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Cobre/T2 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Barras de Cobre","Chat")

	BronzeShieldBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Escudos/Escudo_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Barra_de_Bronze/M = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Bronze/T2 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Barras de Bronze","Chat")

	IronShieldBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Escudos/Escudo_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Barra_de_Ferro/M = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Ferro/T2 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Barras de Ferro","Chat")


			// Elmos //

	CopperHelmetBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=2)
			var/obj/Elmo/Elmo_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=1
			del(G)
			var/obj/Barra_de_Cobre/M = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(M)
		else
			usr<<output("Precisa de 2 Barras de Cobre","Chat")

	BronzeHelmetBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=2)
			var/obj/Elmo/Elmo_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=1
			del(G)
			var/obj/Barra_de_Bronze/M = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(M)
		else
			usr<<output("Precisa de 2 Barras de Bronze","Chat")

	IronHelmetBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=2)
			var/obj/Elmo/Elmo_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=1
			del(G)
			var/obj/Barra_de_Ferro/M = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(M)
		else
			usr<<output("Precisa de 2 Barras de Ferro","Chat")

			// BotaF //


	CopperBootsBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaF/Bota_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Cobre","Chat")

	BronzeBootsBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaF/Bota_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Bronze","Chat")

	IronBootsBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaF/Bota_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Ferro","Chat")


			// Armadura //

	CopperArmorBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Armadura/Armadura_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Barra_de_Cobre/M = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Cobre/T2 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Cobre/T3 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Barra_de_Cobre/T4 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Barras de Cobre","Chat")

	BronzeArmorBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Armadura/Armadura_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Barra_de_Bronze/M = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Bronze/T2 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Bronze/T3 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Barra_de_Bronze/T4 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Barras de Bronze","Chat")

	IronArmorBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Armadura/Armadura_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Barra_de_Ferro/M = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Ferro/T2 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Ferro/T3 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Barra_de_Ferro/T4 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Barras de Ferro","Chat")


		// Adagas //

	CopperDaggersBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/Armas/Adaga/Adaga_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Cobre","Chat")

	BronzeDaggersBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/Armas/Adaga/Adaga_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Bronze","Chat")

	IronDaggersBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/Armas/Adaga/Adaga_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Barra de Ferro","Chat")

	WoodenDaggersBS()
		var/I=0
		var/obj/Madeira/T = locate(/obj/Madeira) in usr.contents
		var/obj/Madeira/G = locate(/obj/Madeira) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/Armas/Adaga/Adaga_de_Madeira/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma Madeira","Chat")

	CopperBroadBS()
		var/I=0
		var/obj/Barra_de_Cobre/T = locate(/obj/Barra_de_Cobre) in usr.contents
		var/obj/Barra_de_Cobre/G = locate(/obj/Barra_de_Cobre) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=4)
			var/obj/Armas/Montante/Montante_de_Cobre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(G)
			var/obj/Barra_de_Cobre/M = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Cobre/T2 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Cobre/T3 = locate(/obj/Barra_de_Cobre) in usr.contents
			usr.contents.Remove(T3)
		else
			usr<<output("Precisa de 4 Barras de Cobre","Chat")

	BronzeBroadBS()
		var/I=0
		var/obj/Barra_de_Bronze/T = locate(/obj/Barra_de_Bronze) in usr.contents
		var/obj/Barra_de_Bronze/G = locate(/obj/Barra_de_Bronze) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=4)
			var/obj/Armas/Montante/Montante_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(G)
			var/obj/Barra_de_Bronze/M = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Bronze/T2 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Bronze/T3 = locate(/obj/Barra_de_Bronze) in usr.contents
			usr.contents.Remove(T3)
		else
			usr<<output("Precisa de 4 Barras de Bronze","Chat")

	IronBroadBS()
		var/I=0
		var/obj/Barra_de_Ferro/T = locate(/obj/Barra_de_Ferro) in usr.contents
		var/obj/Barra_de_Ferro/G = locate(/obj/Barra_de_Ferro) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=4)
			var/obj/Armas/Montante/Montante_de_Ferro/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(G)
			var/obj/Barra_de_Ferro/M = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(M)
			var/obj/Barra_de_Ferro/T2 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Barra_de_Ferro/T3 = locate(/obj/Barra_de_Ferro) in usr.contents
			usr.contents.Remove(T3)
		else
			usr<<output("Precisa de 4 Barras de Ferro","Chat")

	WoodenBroadBS()
		var/I=0
		var/obj/Madeira/T = locate(/obj/Madeira) in usr.contents
		var/obj/Madeira/G = locate(/obj/Madeira) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=4)
			var/obj/Armas/Montante/Montante_de_Bronze/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=3
			del(G)
			var/obj/Madeira/M = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(M)
			var/obj/Madeira/T2 = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Madeira/T3 = locate(/obj/Madeira) in usr.contents
			usr.contents.Remove(T3)
		else
			usr<<output("Precisa de 4 Madeiras","Chat")