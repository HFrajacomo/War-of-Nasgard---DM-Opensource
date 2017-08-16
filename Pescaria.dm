turf/Graficos
	Agua
		icon = 'agua.dmi'
		density = 1

		Click()
			Pescar()

		verb/Pescar()
			set category=null
			var/A="[usr.E1]"
			if(A=="Vara de Pesca" && src in oview(1))
				usr<<output("Você atira a bóia na água","Chat")
				var/E=rand(20,150)
				src.verbs-=/turf/Graficos/Agua/verb/Pescar
				sleep(E)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Vara de Pesca")
						var/obj/peixe/c = new()
						usr.contents += c
						usr.espaco+=1
						usr<<output("Você pegou um peixe","Chat")
						src.verbs+=/turf/Graficos/Agua/verb/Pescar
					else
						src.verbs+=/turf/Graficos/Agua/verb/Pescar
						usr<<output("Você está sem vara","Chat")
						return
				else
					src.verbs+=/turf/Graficos/Agua/verb/Pescar
					usr<<output("Volte para perto da água","Chat")
					return






