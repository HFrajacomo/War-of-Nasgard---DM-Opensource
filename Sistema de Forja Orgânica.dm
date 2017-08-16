mob/NPC/MesaT
	icon='mesa_tecer.dmi'
	npc=1
	HP=999999999999999999999
	vivo = 1
	D=list()
	Interagir(mob/M)
		if(M.Dialog >= length(D))
			M.CloseDialogue()
			winshow(usr,"ForjaOrgMain")
			return
		M.Dialogue(src)


mob/verb/CoatBS()
	winshow(usr,"ForjaOrgMain",0)
	winshow(usr,"ForjaCota",1)

mob/verb/CapBS()
	winshow(usr,"ForjaOrgMain",0)
	winshow(usr,"ForjaChapéu",1)

mob/verb/LBootBS()
	winshow(usr,"ForjaOrgMain",0)
	winshow(usr,"ForjaBotaL",1)

mob/verb/TunicBS()
	winshow(usr,"ForjaOrgMain",0)
	winshow(usr,"ForjaTúnica",1)

mob/verb/HatBS()
	winshow(usr,"ForjaOrgMain",0)
	winshow(usr,"ForjaCartola",1)






/////////////////////////////////////////////////////////////////////////////
         // Cotas //

mob/verb
	SnakeCoatBS()
		var/I=0
		var/obj/Pele_de_Cobra/T = locate(/obj/Pele_de_Cobra) in usr.contents
		var/obj/Pele_de_Cobra/G = locate(/obj/Pele_de_Cobra) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Cota/Cota_de_Cobra/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Pele_de_Cobra/M = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Cobra/T2 = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Pele_de_Cobra/T3 = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Pele_de_Cobra/T4 = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Peles de Cobra","Chat")

mob/verb
	WolfCoatBS()
		var/I=0
		var/obj/Pele_de_Lobo/T = locate(/obj/Pele_de_Lobo) in usr.contents
		var/obj/Pele_de_Lobo/G = locate(/obj/Pele_de_Lobo) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Cota/Cota_de_Lobo/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Pele_de_Lobo/M = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Lobo/T2 = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Pele_de_Lobo/T3 = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Pele_de_Lobo/T4 = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Peles de Lobo","Chat")

mob/verb
	TigerCoatBS()
		var/I=0
		var/obj/Pele_de_Tigre/T = locate(/obj/Pele_de_Tigre) in usr.contents
		var/obj/Pele_de_Tigre/G = locate(/obj/Pele_de_Tigre) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Cota/Cota_de_Lobo/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Pele_de_Tigre/M = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Tigre/T2 = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Pele_de_Tigre/T3 = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Pele_de_Tigre/T4 = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Peles de Tigre","Chat")

      //  Chapéis  //

mob/verb
	SnakeCapBS()
		var/I=0
		var/obj/Pele_de_Cobra/T = locate(/obj/Pele_de_Cobra) in usr.contents
		var/obj/Pele_de_Cobra/G = locate(/obj/Pele_de_Cobra) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Chapeu/Chapeu_de_Cobra/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Pele_de_Cobra/M = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Cobra/T2 = locate(/obj/Pele_de_Cobra) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Peles de Cobra","Chat")

mob/verb
	WolfCapBS()
		var/I=0
		var/obj/Pele_de_Lobo/T = locate(/obj/Pele_de_Lobo) in usr.contents
		var/obj/Pele_de_Lobo/G = locate(/obj/Pele_de_Lobo) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Chapeu/Chapeu_de_Lobo/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Pele_de_Lobo/M = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Lobo/T2 = locate(/obj/Pele_de_Lobo) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Peles de Lobo","Chat")

mob/verb
	TigerCapBS()
		var/I=0
		var/obj/Pele_de_Tigre/T = locate(/obj/Pele_de_Tigre) in usr.contents
		var/obj/Pele_de_Tigre/G = locate(/obj/Pele_de_Tigre) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Chapeu/Chapeu_de_Lobo/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Pele_de_Tigre/M = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(M)
			var/obj/Pele_de_Tigre/T2 = locate(/obj/Pele_de_Tigre) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Peles de Tigre","Chat")


			// Botas Leves //

mob/verb
	SnakeBootsBS()
		var/I=0
		var/obj/Pele_de_Cobra/T = locate(/obj/Pele_de_Cobra) in usr.contents
		var/obj/Pele_de_Cobra/G = locate(/obj/Pele_de_Cobra) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaL/Bota_de_Cobra/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma pele de cobra","Chat")

mob/verb
	WolfBootsBS()
		var/I=0
		var/obj/Pele_de_Lobo/T = locate(/obj/Pele_de_Lobo) in usr.contents
		var/obj/Pele_de_Lobo/G = locate(/obj/Pele_de_Lobo) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaL/Bota_de_Lobo/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma pele de lobo","Chat")

mob/verb
	TigerBootsBS()
		var/I=0
		var/obj/Pele_de_Tigre/T = locate(/obj/Pele_de_Tigre) in usr.contents
		var/obj/Pele_de_Tigre/G = locate(/obj/Pele_de_Tigre) in usr.contents
		for(T in usr.contents)
			I++
		if(I>=1)
			var/obj/BotaL/Bota_de_Tigre/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			del(G)
		else
			usr<<output("Precisa de uma pele de tigre","Chat")

mob/verb
	WoolTunicBS()
		var/I=0
		var/obj/Lan/T = locate(/obj/Lan) in usr.contents
		var/obj/Lan/G = locate(/obj/Lan) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Tunica/Tunica_de_La/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Lan/M = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(M)
			var/obj/Lan/T2 = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Lan/T3 = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Lan/T4 = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Lãs","Chat")

mob/verb
	SilkTunicBS()
		var/I=0
		var/obj/Seda/T = locate(/obj/Seda) in usr.contents
		var/obj/Seda/G = locate(/obj/Seda) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Tunica/Tunica_de_Seda/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/Seda/M = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(M)
			var/obj/Seda/T2 = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(T2)
			var/obj/Seda/T3 = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(T3)
			var/obj/Seda/T4 = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Sedas","Chat")

mob/verb
	RubrosaTunicBS()
		var/I=0
		var/obj/PlantaR/Rubrosa/T = locate(/obj/PlantaR/Rubrosa) in usr.contents
		var/obj/PlantaR/Rubrosa/G = locate(/obj/PlantaR/Rubrosa) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=5)
			var/obj/Tunica/Tunica_de_Rubrosa/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=4
			del(G)
			var/obj/PlantaR/Rubrosa/M = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(M)
			var/obj/PlantaR/Rubrosa/T2 = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(T2)
			var/obj/PlantaR/Rubrosa/T3 = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(T3)
			var/obj/PlantaR/Rubrosa/T4 = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(T4)
		else
			usr<<output("Precisa de 5 Rubrosas","Chat")


mob/verb
	WoolHatBS()
		var/I=0
		var/obj/Lan/T = locate(/obj/Lan) in usr.contents
		var/obj/Lan/G = locate(/obj/Lan) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Cartola/Cartola_de_La/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Lan/M = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(M)
			var/obj/Lan/T2 = locate(/obj/Lan) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Lãs","Chat")

mob/verb
	SilkHatBS()
		var/I=0
		var/obj/Seda/T = locate(/obj/Seda) in usr.contents
		var/obj/Seda/G = locate(/obj/Seda) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Cartola/Cartola_de_Seda/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/Seda/M = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(M)
			var/obj/Seda/T2 = locate(/obj/Seda) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Sedas","Chat")

mob/verb
	RubrosaHatBS()
		var/I=0
		var/obj/PlantaR/Rubrosa/T = locate(/obj/PlantaR/Rubrosa) in usr.contents
		var/obj/PlantaR/Rubrosa/G = locate(/obj/PlantaR/Rubrosa) in usr.contents
		for(T in usr.contents)
			I+=1
		if(I>=3)
			var/obj/Cartola/Cartola_de_Rubrosa/W = new()
			usr.contents += W
			usr<<output("Você recebeu [W]","Chat")
			BankTag()
			usr.espaco-=2
			del(G)
			var/obj/PlantaR/Rubrosa/M = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(M)
			var/obj/PlantaR/Rubrosa/T2 = locate(/obj/PlantaR/Rubrosa) in usr.contents
			usr.contents.Remove(T2)
		else
			usr<<output("Precisa de 3 Rubrosas","Chat")