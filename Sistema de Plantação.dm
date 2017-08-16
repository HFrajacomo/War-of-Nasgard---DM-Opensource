//---------------- PlantasR -----------------------//
obj
	Lan
		name ="Lã"
		icon='Plantas.dmi'
		icon_state="Lã"

	Seda
		icon='Plantas.dmi'
		icon_state="Seda"

obj/PlantaR

	Rubrosa
		icon='Plantas.dmi'
		icon_state="Rubrosa"

	Umburarna
		icon='Plantas.dmi'
		icon_state="Umburarna"

	Aesir
		icon='Plantas.dmi'
		icon_state="Aesir"

	Alpineia
		icon='Plantas.dmi'
		icon_state="Alpineia"

	Coeda
		icon='Plantas.dmi'
		icon_state="Coeda"

	Catalosia
		icon='Plantas.dmi'
		icon_state="Catalosia"

	Dutron
		icon='Plantas.dmi'
		icon_state="Dutron"
obj
	Ordog
		icon='Plantas.dmi'
		icon_state="Ordog"

//--------------------------------------------------
turf/Graficos
	Grama
		icon = 'grafico.dmi'
		icon_state = "grass"
		desc=""

		Click()
			if(src.desc=="")
				Arar()
			else
				if(src in view(2))
					Colher()



		verb/Arar()
			set category=null
			var/obj/A = "[usr.E1]"
			usr<<output("[src.desc]","Chat")
			if(src in view(1))
				if(A=="Enxada" && src.desc=="")
					src.desc="Plantável"
					usr<<output("Você ara a terra","Chat")
					src.overlays+='TerrenoVazio.dmi'
					sleep(300)
					if(src.desc=="Plantável")
						src.overlays-='TerrenoVazio.dmi'
						src.desc=""

		verb/Colher()
			set category=null
			var/o=rand(1,3)
			if(src.desc=="Você colheu Alface")
				src.overlays-='Alface.dmi'
				while(o>0)
					var/obj/PlantaC/Alface/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Trigo")
				src.overlays-='Trigo.dmi'
				while(o>0)
					var/obj/Prep/Trigo/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Cenoura")
				src.overlays-='Cenoura.dmi'
				while(o>0)
					var/obj/PlantaC/Cenoura/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Berinjela")
				src.overlays-='Berinjela.dmi'
				while(o>0)
					var/obj/PlantaC/Berinjela/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Tomate")
				src.overlays-='Tomate.dmi'
				while(o>0)
					var/obj/PlantaC/Tomate/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Milho")
				src.overlays-='Milho.dmi'
				while(o>0)
					var/obj/PlantaC/Milho/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Abóbora")
				src.overlays-='Abóbora.dmi'
				while(o>0)
					var/obj/Prep/Abobora/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Alho")
				src.overlays-='Alho.dmi'
				while(o>0)
					var/obj/PlantaC/Alho/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break
			if(src.desc=="Você colheu Pimentão")
				src.overlays-='Pimentão.dmi'
				while(o>0)
					var/obj/PlantaC/Pimentao/C = new()
					usr.contents+=C
					usr.espaco+=1
					BankTag()
					src.desc=""
					o-=1
					if(usr.espaco==25)
						break

obj/PlantaR/verb
	PlantarR()
		set name="Plantar"
		var/p="[src.name]"
		var/o = rand(1,3)
		var/turf/Graficos/Grama/a = locate(/turf/Graficos/Grama in oview(1))
		for(a in oview(1))
			if(a.desc=="Plantável")
				usr<<output("Você planta a [src] na terra","Chat")
				a.overlays -='TerrenoVazio.dmi'
				a.overlays +='TerrenoPlantado.dmi'
				usr.contents.Remove(src)
				usr.espaco-=1
				a.desc=""
				var/i = rand(200, 600)  // x10
				sleep(i)
				a.overlays -='TerrenoPlantado.dmi'
				a.overlays-='TerrenoVazio.dmi'
				break
		for(o, o>0, o--)
			if(p=="Rubrosa")
				var/obj/y = new/obj/PlantaR/Rubrosa(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Umburarna")
				var/obj/y = new/obj/PlantaR/Umburarna(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Aesir")
				var/obj/y = new/obj/PlantaR/Aesir(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Alpineia")
				var/obj/y = new/obj/PlantaR/Alpineia(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Coeda")
				var/obj/y = new/obj/PlantaR/Coeda(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Catalosia")
				var/obj/y = new/obj/PlantaR/Catalosia(usr.loc)
				y.Move(locate(a.x,a.y,1))
			if(p=="Dutron")
				var/obj/y = new/obj/PlantaR/Dutron(usr.loc)
				y.Move(locate(a.x,a.y,1))
			o-=1
		return



// ------------------------------PlantaC------------------------------------------------
obj/PlantaC
	var/comida
	var/hhp
	var/mmp

	Alface
		icon='Agro.dmi'
		icon_state="Alface"
		comida=250
		hhp=25
		mmp=0

	Milho
		icon='Agro.dmi'
		icon_state="Milho"
		comida=400
		hhp=20
		mmp=0

	Tomate
		icon='Agro.dmi'
		icon_state="Tomate"
		comida=150
		hhp=10
		mmp=25

	Alho
		icon='Agro.dmi'
		icon_state="Alho"
		comida=100
		hhp=0
		mmp=30

	Berinjela
		icon='Agro.dmi'
		icon_state="Berinjela"
		comida=500
		hhp=0
		mmp=20

	Cenoura
		icon='Agro.dmi'
		icon_state="Cenoura"
		comida=350
		hhp=20
		mmp=5

	Pimentao
		name="Pimentão"
		icon='Agro.dmi'
		icon_state="Pimentão"
		comida=200
		hhp=0
		mmp=35

	DblClick()
		Comer()

obj/PlantaE
	var/comida
	var/hhp
	var/mmp
	Pao
		name="Pão"
		icon='Plantas.dmi'
		icon_state="Pão"
		comida=600
		hhp=50
		mmp=20

	Doce_de_Abobora
		name="Doce de Abóbora"
		icon='Plantas.dmi'
		icon_state="Doce"
		comida=500
		hhp=20
		mmp=50

	verb/Comer()
		usr.fome+=src.comida
		usr.HP+=src.hhp
		usr.MP+=src.mmp
		usr<<output("Você comeu [src] e restaurou [src.comida] de energia","Chat")
		usr.espaco-=1
		del(src)

obj/PlantaE/Click()
	Comer()


obj/Prep
	Abobora
		name="Abóbora"
		icon='Agro.dmi'
		icon_state="Abóbora"

	Trigo
		icon='Agro.dmi'
		icon_state="Trigo"
	verb
		PlantarC()
			set name="Plantar"
			var/p="[src.name]"
			var/turf/Graficos/Grama/a = locate(/turf/Graficos/Grama in oview(1))
			for(a in oview(1))
				if(a.desc=="Plantável")
					usr<<output("Você planta a [src] na terra","Chat")
					usr.espaco-=1
					usr.contents.Remove(src)
					a.overlays -='TerrenoVazio.dmi'
					a.overlays +='TerrenoPlantado.dmi'
					a.desc="Crescendo..."
					var/i=rand(200,300)
					sleep(i)
					a.overlays-='TerrenoVazio.dmi'
					a.overlays -='TerrenoPlantado.dmi'
					if(p=="Alface")
						a.overlays+='Alface.dmi'
						a.desc="Você colheu Alface"
					if(p=="Cenoura")
						a.overlays+='Cenoura.dmi'
						a.desc="Você colheu Cenoura"
					if(p=="Berinjela")
						a.overlays+='Berinjela.dmi'
						a.desc="Você colheu Berinjela"
					if(p=="Trigo")
						a.overlays+='Trigo.dmi'
						a.desc="Você colheu Trigo"
					if(p=="Abóbora")
						a.overlays+='Abóbora.dmi'
						a.desc="Você colheu Abóbora"
					if(p=="Alho")
						a.overlays+='Alho.dmi'
						a.desc="Você colheu Alho"
					if(p=="Tomate")
						a.overlays+='Tomate.dmi'
						a.desc="Você colheu Tomate"
					if(p=="Milho")
						a.overlays+='Milho.dmi'
						a.desc="Você colheu Milho"
					if(p=="Pimentão")
						a.overlays+='Pimentão.dmi'
						a.desc="Você colheu Pimentão"
					return

	verb/Preparar()
		set category=null
		var/obj/o = locate(/turf/Graficos/Fogueira) in oview(2)
		var/obj/a = locate(/obj/Camp) in oview(2)
		var/obj/P = locate(src) in usr.contents
		if(o || a && P)
			usr<<output("Preparando...","Chat")
			var/coz=rand(20,50)
			sleep(coz)
			if(src.name=="Trigo")
				var/obj/PlantaE/Pao/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				del(src)
			else
				var/obj/PlantaE/Doce_de_Abobora/W = new()
				usr.contents += W
				usr<<output("Você recebeu [W]","Chat")
				del(src)
		else
			usr<<output("<b>Você precisa estar perto de uma fonte de fogo</b>","Chat")

	DblClick()
		var/obj/o = locate(/turf/Graficos/Fogueira) in oview(2)
		var/obj/a = locate(/obj/Camp) in oview(2)
		var/obj/P = locate(src) in usr.contents
		if(o || a && P)
			Preparar()



obj/PlantaC
	verb
		Comer()
			usr.fome+=src.comida
			usr.HP+=src.hhp
			usr.MP+=src.mmp
			usr<<output("Você comeu [src] e restaurou [src.comida] de energia","Chat")
			usr.espaco-=1
			del(src)

		PlantarC()
			set name="Plantar"
			var/p="[src.name]"
			var/turf/Graficos/Grama/a = locate(/turf/Graficos/Grama in oview(1))
			for(a in oview(1))
				if(a.desc=="Plantável")
					usr<<output("Você planta a [src] na terra","Chat")
					a.overlays -='TerrenoVazio.dmi'
					a.overlays +='TerrenoPlantado.dmi'
					usr.espaco-=1
					usr.contents.Remove(src)
					a.desc="Crescendo..."
					var/i=rand(200,600) //x10
					sleep(i)
					a.overlays -='TerrenoPlantado.dmi'
					if(p=="Alface")
						a.overlays+='Alface.dmi'
						a.desc="Você colheu Alface"
					if(p=="Cenoura")
						a.overlays+='Cenoura.dmi'
						a.desc="Você colheu Cenoura"
					if(p=="Berinjela")
						a.overlays+='Berinjela.dmi'
						a.desc="Você colheu Berinjela"
					if(p=="Trigo")
						a.overlays+='Trigo.dmi'
						a.desc="Você colheu Trigo"
					if(p=="Abobora")
						a.overlays+='Abóbora.dmi'
						a.desc="Você colheu Abóbora"
					if(p=="Alho")
						a.overlays+='Alho.dmi'
						a.desc="Você colheu Alho"
					if(p=="Tomate")
						a.overlays+='Tomate.dmi'
						a.desc="Você colheu Tomate"
					if(p=="Milho")
						a.overlays+='Milho.dmi'
						a.desc="Você colheu Milho"
					if(p=="Pimentão")
						a.overlays+='Pimentão.dmi'
						a.desc="Você colheu Pimentão"
					return


turf/Terrenos
	Alface
		icon='Alface.dmi'
	Cenoura
		icon='Cenoura.dmi'
	Berinjela
		icon='Berinjela.dmi'
	Trigo
		icon='Trigo.dmi'
	Abobora
		icon='Abóbora.dmi'
	Alho
		icon='Alho.dmi'
	Tomate
		icon='Tomate.dmi'
	Milho
		icon='Milho.dmi'
	Pimentao
		icon='Pimentão.dmi'