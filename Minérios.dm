obj
	Minerio_de_Cobre
		name="Cobre Mineral"
		icon = 'minerio.dmi'
		icon_state = "Cobre"

		verb/Derreter_Cobre()
			set category=null
			var/I=0
			for(src in usr.contents)
				I+=1
			if(I>=2)
				var/obj/o = locate(/obj/IngotFire) in oview(2)
				var/obj/D = /obj/Minerio_de_Cobre
				var/obj/P = locate(D) in usr.contents
				if(o && P)
					usr<<output("Derretendo...","Chat")
					for(src in usr.contents)
						src.verbs-=/obj/verb/Removera
						src.verbs-=/obj/Minerio_de_Cobre/verb/Derreter_Cobre
					var/coz=rand(20,50)
					sleep(coz)
					var/obj/Barra_de_Cobre/W = new()
					usr.contents += W
					usr<<output("Você recebeu [W]","Chat")
					for(src in usr.contents)
						src.verbs+=/obj/verb/Removera
						src.verbs+=/obj/Minerio_de_Cobre/verb/Derreter_Cobre
					usr.espaco-=1
					usr.contents.Remove(P)
					var/obj/p = locate(D) in usr.contents
					usr.contents.Remove(p)


				else
					usr<<output("<b>Você precisa estar perto de uma fonte de fogo</b>","Chat")
			else
				usr<<output("Você precisa de dois minérios de cobre","Chat")

	Minerio_de_Estanho
		name="Estanho Mineral"
		icon = 'minerio.dmi'
		icon_state = "Estanho"
		verb/Derreter_Bronze()
			set category=null
			var/I=0
			var/obj/Minerio_de_Cobre/D = locate(/obj/Minerio_de_Cobre) in usr.contents
			for(D in usr.contents)
				I+=1
			if(I>=2)
				var/obj/o = locate(/obj/IngotFire) in oview(2)
				if(o && src)
					usr<<output("Derretendo...","Chat")
					for(src in usr.contents)
						src.verbs-=/obj/verb/Removera
						src.verbs-=/obj/Minerio_de_Estanho/verb/Derreter_Bronze
					for(D in usr.contents)
						D.verbs-=/obj/verb/Removera
						D.verbs-=/obj/Minerio_de_Cobre/verb/Derreter_Cobre
					var/coz=rand(20,50)
					sleep(coz)
					var/obj/Barra_de_Bronze/W = new()
					usr.contents += W
					usr<<output("Você recebeu [W]","Chat")
					for(src in usr.contents)
						src.verbs+=/obj/verb/Removera
						src.verbs+=/obj/Minerio_de_Estanho/verb/Derreter_Bronze
					for(D in usr.contents)
						D.verbs+=/obj/verb/Removera
						D.verbs+=/obj/Minerio_de_Cobre/verb/Derreter_Cobre
					usr.espaco-=2
					var/obj/Minerio_de_Cobre/P = locate(/obj/Minerio_de_Cobre) in usr.contents
					usr.contents.Remove(P)
					var/obj/Minerio_de_Cobre/p = locate(/obj/Minerio_de_Cobre) in usr.contents
					usr.contents.Remove(p)
					var/obj/Minerio_de_Estanho/N = locate(/obj/Minerio_de_Estanho) in usr.contents
					usr.contents.Remove(N)
					return



				else
					usr<<output("<b>Você precisa estar perto de uma fonte de fogo</b>","Chat")
			else
				usr<<output("Você precisa de dois minérios de cobre e um de estanho","Chat")

	Minerio_de_Ferro
		name="Ferro Mineral"
		icon = 'minerio.dmi'
		icon_state = "Ferro"
		verb/Derreter_Ferro	()
			set category=null
			var/I=0
			for(src in usr.contents)
				I+=1
			if(I>=2)
				var/obj/o = locate(/obj/IngotFire) in oview(2)
				var/obj/D = /obj/Minerio_de_Ferro
				var/obj/P = locate(D) in usr.contents
				if(o && P)
					usr<<output("Derretendo...","Chat")
					for(src in usr.contents)
						src.verbs-=/obj/verb/Removera
						src.verbs-=/obj/Minerio_de_Ferro/verb/Derreter_Ferro
					var/coz=rand(20,50)
					sleep(coz)
					var/obj/Barra_de_Ferro/W = new()
					usr.contents += W
					usr<<output("Você recebeu [W]","Chat")
					for(src in usr.contents)
						src.verbs+=/obj/verb/Removera
						src.verbs+=/obj/Minerio_de_Ferro/verb/Derreter_Ferro
					usr.espaco-=1
					usr.contents.Remove(P)
					var/obj/p = locate(D) in usr.contents
					usr.contents.Remove(p)




	Carvao
		name="Carbono"
		icon = 'Metais.dmi'
		icon_state = "Carvao"

		verb
			Acender()
				set category=null
				var/obj/IngotFire/o = new /obj/IngotFire
				o.loc = usr.loc
				usr.espaco-=1
				del(src)
		Click()
			Acender()












	Barra_de_Cobre
		icon = 'Metais.dmi'
		icon_state = "Cobre"

	Barra_de_Bronze
		icon = 'Metais.dmi'
		icon_state = "Bronze"

	Barra_de_Ferro
		icon = 'Metais.dmi'
		icon_state="Ferro"




