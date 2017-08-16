obj
	BifeCrua
		icon='Carnes.dmi'
		icon_state="bifecr"
		name="Bisteca Crua"

		DblClick()
			Cozinhar()
		verb
			Cozinhar()
				set category=null
				var/obj/o = locate(/turf/Graficos/Fogueira) in oview(2)
				var/obj/a = locate(/obj/Camp) in oview(2)
				var/obj/P = locate(src) in usr.contents
				if(o || a && P)
					usr<<output("Cozinhando...","Chat")
					var/coz=rand(20,50)
					sleep(coz)
					var/obj/BifeCoz/W = new()
					usr.contents += W
					BankTag()
					usr<<output("Você recebeu [W]","Chat")
					del(src)
				else
					usr<<output("<b>Você precisa estar perto de uma fonte de fogo</b>","Chat")

	BifeCoz
		icon='Carnes.dmi'
		icon_state="bifeco"
		name="Bisteca"

		verb/Comer()
			set category = null
			src.verbs-=/obj/BifeCoz/verb/Comer
			usr.fome+=2000
			usr.HP+=80
			usr.MP+=30
			usr.espaco-=1
			del(src)

		DblClick()
			Comer()


	Maca
		icon='Frutas.dmi'
		icon_state="verm"
		name="Maçã"

		verb/Comer()
			set category = null
			src.verbs-=/obj/Maca/verb/Comer
			usr.fome+=20
			usr.HP+=12
			usr.MP+=4
			usr.espaco-=1
			del(src)

		DblClick()
			Comer()


	Laranja
		icon='Frutas.dmi'
		icon_state="amar"

		verb/Comer()
			set category = null
			src.verbs-=/obj/Laranja/verb/Comer
			usr.fome+=10
			usr.HP+=8
			usr.MP+=6
			usr.espaco-=1
			del(src)

		DblClick()
			Comer()

	Mirtilo
		icon='Frutas.dmi'
		icon_state="blue"

		verb/Comer()
			set category = null
			src.verbs-=/obj/Mirtilo/verb/Comer
			usr.fome+=4
			usr.HP+=4
			usr.MP+=10
			usr.espaco-=1
			del(src)

		DblClick()
			Comer()

	BaconCrua
		icon='Carnes.dmi'
		icon_state="baconcr"
		name="Bacon Cru"


		DblClick()
			Cozinhar()
		verb
			Cozinhar()
				set category =null
				var/obj/o = locate(/turf/Graficos/Fogueira) in oview(2)
				var/obj/a = locate(/obj/Camp) in oview(2)
				var/obj/P = locate(src) in usr.contents
				if(o || a && P)
					usr<<output("Cozinhando...","Chat")
					var/coz=rand(20,50)
					sleep(coz)
					var/obj/BaconCoz/W = new()
					usr.contents += W
					BankTag()
					usr<<output("Você recebeu [W]","Chat")
					del(src)


	BaconCoz
		icon='Carnes.dmi'
		icon_state="baconco"
		name="Bacon"
		verb/Comer()
			set category = null
			src.verbs-=/obj/BaconCoz/verb/Comer
			usr.fome+=850
			usr.HP+=50
			usr.MP+=30
			usr.espaco-=1
			del(src)

		DblClick()
			Comer()


	peixe
		name = "Peixe Cru"
		icon = 'Peixe.dmi'
		icon_state="cru"

		verb/Cozinhar()
			set category =null
			var/obj/o = locate(/turf/Graficos/Fogueira) in oview(2)
			var/obj/a = locate(/obj/Camp) in oview(2)
			var/obj/P = locate(src) in usr.contents
			if(o || a && P)
				usr<<output("Cozinhando...","Chat")
				var/coz=rand(20,50)
				sleep(coz)
				var/obj/peixecoz/W = new()
				usr.contents += W
				BankTag()
				usr<<output("Você recebeu [W]","Chat")
				del(src)

		DblClick()
			Cozinhar()



	peixecoz
		name = "Peixe"
		icon = 'Peixe.dmi'
		icon_state = "coz"

		verb/Comer()
			if(src.loc == usr)
				src.verbs-=/obj/peixecoz/verb/Comer
				usr.HP += 30
				usr.MP += 40
				usr.fome += 1000
				usr.espaco-=1
				usr <<output("<b>O peixe recupera um pouco de suas energias e saceia sua fome..","Chat")
				del(src)

		DblClick()
			Comer()
