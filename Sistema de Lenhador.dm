turf
	Graficos

		ArbRubrosa
			icon = 'Fruit Trees.dmi'
			icon_state = "Rubrosa"
			density = 1

			Click()
				Cortar()

			verb/Cortar()
				set category=null
				var/A ="[usr.E1]"
				if(A=="Machete" && src in oview(1))
					usr<<output("Voc� come�a � cortar o arbusto","Chat")
					src.verbs-=/turf/Graficos/ArbRubrosa/verb/Cortar
					sleep(10)
					if(src in oview(1))
						usr<<output("Voc� pega um pouco de madeira","Chat")
						new/obj/PlantaR/Rubrosa(usr.loc)
						src.overlays+=image('Fruit Trees.dmi',"SemRubrosa")
						BankTag()
						sleep(1000)
						src.verbs+=/turf/Graficos/ArbRubrosa/verb/Cortar
						src.overlays-=image('Fruit Trees.dmi',"SemRubrosa")
						src.verbs+=/turf/Graficos/ArbRubrosa/verb/Cortar
					else
						usr<<output("Voc� parou de cortar o arbusto","Chat")
						src.verbs+=/turf/Graficos/ArbRubrosa/verb/Cortar

		ArbSeda
			icon = 'Fruit Trees.dmi'
			icon_state = "Seda"
			density = 1

			Click()
				Cortar()

			verb/Cortar()
				set category=null
				var/A ="[usr.E1]"
				if(A=="Machete" && src in oview(1))
					usr<<output("Voc� come�a � cortar o arbusto","Chat")
					src.verbs-=/turf/Graficos/ArbSeda/verb/Cortar
					sleep(10)
					if(src in oview(1))
						usr<<output("Voc� pega um pouco de madeira","Chat")
						new/obj/Seda(usr.loc)
						src.overlays+=image('Fruit Trees.dmi',"SemSeda")
						BankTag()
						sleep(1000)
						src.verbs+=/turf/Graficos/ArbSeda/verb/Cortar
						src.overlays-=image('Fruit Trees.dmi',"SemSeda")
						src.verbs+=/turf/Graficos/ArbSeda/verb/Cortar
					else
						usr<<output("Voc� parou de cortar o arbusto","Chat")
						src.verbs+=/turf/Graficos/ArbSeda/verb/Cortar





turf
	Graficos

		ArvoreVermelha
			icon = 'Fruit Trees.dmi'
			icon_state = "�rvore Vermelha"
			density = 1
			var/O="Ma��"
			Click()
				if(src in oview(1))
					Chacoalhar()

			verb/Chacoalhar()
				if(usr in view(1))
					src.verbs-=/turf/Graficos/ArvoreVermelha/verb/Chacoalhar
					sleep(10)
					usr<<output("Voc� chacoalha a �rvore","Chat")
					src.overlays+='�rvore.dmi'
					new /obj/Maca(usr.loc)
					if(prob(50))
						new /obj/Maca(usr.loc)
					sleep(600)
					src.overlays-='�rvore.dmi'
					src.verbs+=/turf/Graficos/ArvoreVermelha/verb/Chacoalhar




		ArvoreAmarela
			icon = 'Fruit Trees.dmi'
			icon_state = "�rvore Amarela"
			density = 1
			var/O="Laranja"
			Click()
				if(src in oview(1))
					Chacoalhar()

			verb/Chacoalhar()
				if(usr in view(1))
					src.verbs-=/turf/Graficos/ArvoreAmarela/verb/Chacoalhar
					sleep(10)
					usr<<output("Voc� chacoalha a �rvore","Chat")
					src.overlays+='�rvore.dmi'
					new /obj/Laranja(usr.loc)
					if(prob(50))
						new /obj/Laranja(usr.loc)
					sleep(600)
					src.overlays-='�rvore.dmi'
					src.verbs+=/turf/Graficos/ArvoreAmarela/verb/Chacoalhar

		Arbusto
			icon = 'Fruit Trees.dmi'
			icon_state = "Arbusto de Blueberry"
			density = 1
			Click()
				if(src in oview(1))
					Chacoalhar()

			verb/Chacoalhar()
				if(usr in view(1))
					src.verbs-=/turf/Graficos/Arbusto/verb/Chacoalhar
					sleep(10)
					usr<<output("Voc� chacoalha o arbusto","Chat")
					src.overlays+='Arbusto.dmi'
					new /obj/Mirtilo(usr.loc)
					new /obj/Mirtilo(usr.loc)
					if(prob(75))
						new /obj/Mirtilo(usr.loc)
						if(prob(50))
							new /obj/Mirtilo(usr.loc)
							if(prob(25))
								new /obj/Mirtilo(usr.loc)
					sleep(600)
					src.overlays-='�rvore.dmi'
					src.verbs+=/turf/Graficos/Arbusto/verb/Chacoalhar

turf/Graficos
	Arvore
		icon = 'Fruit Trees.dmi'
		icon_state="Arvore"
		density=1


		Click()
			Cortar()



		verb/Cortar()
			set category=null
			var/A ="[usr.E1]"
			if(A=="Machado de Lenhador" && src in oview(1))
				usr<<output("Voc� come�a � cortar a �rvore","Chat")
				var/S=rand(30,150)
				src.verbs-=/turf/Graficos/Arvore/verb/Cortar
				sleep(S)
				if(src in oview(1))
					A="[usr.E1]"
					if(A=="Machado de Lenhador")
						usr<<output("Voc� pega um pouco de madeira","Chat")
						new/obj/Madeira(usr.loc)
						if(prob(25))
							new/obj/Raiz(usr.loc)
						src.overlays+='invisible.dmi'
						BankTag()
						src.density=0
						sleep(600)
						src.verbs+=/turf/Graficos/Arvore/verb/Cortar
						src.overlays-='invisible.dmi'
						src.density=1
					else
						usr<<output("Voc� est� sem machado","Chat")
						src.verbs+=/turf/Graficos/Arvore/verb/Cortar
						return
				else
					src.verbs+=/turf/Graficos/Arvore/verb/Cortar
					usr<<output("Volte para perto da �rvore","Chat")
					return
