obj/proc/Apagar()
	var/R=300
	sleep(R)
	del(src)

obj
	IngotFire
		icon='Ingot Fire.dmi'
		New()
			.=..()
			spawn(1)
				Apagar()



turf/Graficos
	CavernaCobre
		icon = 'Pedra de Minério.dmi'
		icon_state="Cobre"
		density=1


		Click()
			Minerar()

		verb/Minerar()
			set category=null
			var/A="[usr.E1]"
			if(A=="Picareta" && src in oview(1))
				usr<<output("Você começa à minerar a pedra","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/CavernaCobre/verb/Minerar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Picareta")
						usr<<output("Você pega um pouco de cobre","Chat")
						new/obj/Minerio_de_Cobre(usr.loc)
						src.overlays+='ParedeDaCaverna.dmi'
						BankTag()
						sleep(600)
						src.verbs+=/turf/Graficos/CavernaCobre/verb/Minerar
						src.overlays-='ParedeDaCaverna.dmi'
					else
						usr<<output("Você está sem picareta","Chat")
						src.verbs+=/turf/Graficos/CavernaCobre/verb/Minerar
						return
				else
					src.verbs+=/turf/Graficos/CavernaCobre/verb/Minerar
					usr<<output("Você não está no alcance do minério","Chat")
					return

turf/Graficos
	CavernaHelix
		icon = 'ParedeHelix.dmi'
		icon_state="Caverna"
		density=1


		Click()
			Minerar()

		verb/Minerar()
			set category=null
			var/A="[usr.E1]"
			if(A=="Picareta" && src in oview(1))
				usr<<output("Você começa à minerar a pedra","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/CavernaHelix/verb/Minerar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Picareta")
						usr<<output("Você pega um pouco de hélix","Chat")
						if(prob(40))
							new/obj/Fragmento_de_Helix(usr.loc)
						new/obj/Fragmento_de_Helix(usr.loc)
						src.overlays+='ParedeDaCaverna.dmi'
						BankTag()
						sleep(1000)
						src.verbs+=/turf/Graficos/CavernaHelix/verb/Minerar
						src.overlays-='ParedeDaCaverna.dmi'
					else
						usr<<output("Você está sem picareta","Chat")
						src.verbs+=/turf/Graficos/CavernaHelix/verb/Minerar
						return
				else
					src.verbs+=/turf/Graficos/CavernaHelix/verb/Minerar
					usr<<output("Você não está no alcance do minério","Chat")
					return







turf/Graficos
	CavernaEstanho
		icon = 'Pedra de Minério.dmi'
		icon_state="Estanho"
		density=1


		Click()
			Minerar()

		verb/Minerar()
			set category=null
			var/A = "[usr.E1]"
			if(A=="Picareta" && src in oview(1))
				usr<<output("Você começa à minerar a pedra","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/CavernaEstanho/verb/Minerar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Picareta")
						usr<<output("Você pega um pouco de estanho","Chat")
						new/obj/Minerio_de_Estanho(usr.loc)
						src.overlays+='ParedeDaCaverna.dmi'
						BankTag()
						sleep(600)
						src.verbs+=/turf/Graficos/CavernaEstanho/verb/Minerar
						src.overlays-='ParedeDaCaverna.dmi'
					else
						usr<<output("Você está sem picareta","Chat")
						src.verbs+=/turf/Graficos/CavernaEstanho/verb/Minerar
						return
				else
					src.verbs+=/turf/Graficos/CavernaEstanho/verb/Minerar
					usr<<output("Você não está no alcance do minério","Chat")
					return


turf/Graficos
	CavernaCarvao
		icon = 'Pedra de Minério.dmi'
		icon_state="Carvao"
		density=1


		Click()
			Minerar()

		verb/Minerar()
			set category=null
			var/A = "[usr.E1]"
			if(A=="Picareta" && src in oview(1))
				usr<<output("Você começa à minerar a pedra","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/CavernaCarvao/verb/Minerar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Picareta")
						usr<<output("Você pega um pouco de carvão","Chat")
						new/obj/Carvao(usr.loc)
						src.overlays+='ParedeDaCaverna.dmi'
						BankTag()
						sleep(600)
						src.verbs+=/turf/Graficos/CavernaCarvao/verb/Minerar
						src.overlays-='ParedeDaCaverna.dmi'
					else
						usr<<output("Você está sem picareta","Chat")
						src.verbs+=/turf/Graficos/CavernaCarvao/verb/Minerar
						return
				else
					src.verbs+=/turf/Graficos/CavernaCarvao/verb/Minerar
					usr<<output("Você não está no alcance do minério","Chat")
					return

turf/Graficos
	CavernaFerro
		icon = 'Pedra de Minério.dmi'
		icon_state="Ferro"
		density=1


		Click()
			Minerar()

		verb/Minerar()
			set category=null
			var/A = "[usr.E1]"
			if(A=="Picareta" && src in oview(1))
				usr<<output("Você começa à minerar a pedra","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/CavernaFerro/verb/Minerar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Picareta")
						usr<<output("Você pega um pouco de ferro","Chat")
						new/obj/Minerio_de_Ferro(usr.loc)
						src.overlays+='ParedeDaCaverna.dmi'
						BankTag()
						sleep(600)
						src.verbs+=/turf/Graficos/CavernaFerro/verb/Minerar
						src.overlays-='ParedeDaCaverna.dmi'
					else
						usr<<output("Você está sem picareta","Chat")
						src.verbs+=/turf/Graficos/CavernaFerro/verb/Minerar
						return
				else
					src.verbs+=/turf/Graficos/CavernaFerro/verb/Minerar
					usr<<output("Você não está no alcance do minério","Chat")
					return