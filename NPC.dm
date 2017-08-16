mob
	NPC
		Informacao
			icon='loja de pocoes.dmi'
			icon_state=	"9"
			npc=1
			HP=999999999999999999999
			vivo = 1
			D=list(
			1 = "Ol�, bem-vindo ao sal�o dos artes�os!",
			2 = "Na mesa que h� po��es, � poss�vel criar po��es e cajados",
			3 = "E na mesa ao fundo, � poss�vel criar armaduras de pele e tecido",
			)
			Interagir(mob/M)
				if(M.Dialog >= length(D))
					M.CloseDialogue()
					return
				M.Dialogue(src)

mob/NPC
	Bigorna
		icon='bigorna.dmi'
		npc=1
		HP=999999999999999999999
		vivo = 1
		D=list()
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				winshow(usr,"ForjaMain")
				return
			M.Dialogue(src)


mob/NPC
	Armor
		icon = 'NPC.dmi'
		icon_state="Armor"
		npc=1
		HP = 30000000000000000000000000000
		vivo = 1
		D = list(
		1 = "Eu sou o Vendedor de Armaduras!",
		2 = "Temos armaduras de todos tamanhos e jeitos",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				usr.trocaArm=""
				usr << output("", "NovaArm")
				usr << output("", "SNovaArm")
				call(/obj/proc/UpdateLojaArmadura)()
				winshow(usr,"LojadeArmor",1)
				return
			M.Dialogue(src)

mob/NPC
	Potions
		icon = 'npc de potions.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
		D = list(
		1 = "Eu sou o Vendedor de Po��es!",
		2 = "Posso fazer po��es de cura b�sicas",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				usr<<output("<font color =red><b> A tecla 'A' usa automaticamente a maior po��o de HP que existe no invent�rio","Chat")
				usr<<output("<font color =blue><b> A tecla 'S' usa automaticamente a maior po��o de MP que existe no invent�rio","Chat")
				winshow(usr,"LojadePocao",1)
				return
			M.Dialogue(src)

mob/NPC
	Verduras
		icon = 'quitanda.dmi'
		icon_state="vendedor2"
		npc=1
		HP = 30000000000000000000000000000
		vivo = 1
		D = list(
		1 = "Ol�, eu cuido dos legumes e verduras da cidade!",
		2 = "Gostaria de ver meus pre�os?",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				winshow(usr,"Quitanda",1)
				return
			M.Dialogue(src)

mob/NPC
	Equipamento
		icon = 'npc equips.dmi'
		npc=1
		HP = 30000000000000000000000000000
		vivo = 1
		D = list(
		1 = "Eu sou o Vendedor de armas",
		2 = "Vendo armas cortantes e flechas",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				usr.troca=""
				usr << output("", "NomeNova")
				usr << output("", "For�aNova")
				call(/obj/proc/UpdateLojaArmas)()
				winshow(usr,"LojadeArmas",1)
				return
			M.Dialogue(src)

mob/NPC
	Quest
		D = list(
		1 = "Eu sou o Ca�ador de Loot!",
		2 = "Compro qualquer coisa relacionada � monstros",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				winshow(usr, "LojadeLoot",1)
				return
			M.Dialogue(src)


		icon = 'npc quest.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1
mob/NPC
	PVP
		icon = 'arena.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1
mob/NPC
	Rei_de_Guardia
		icon = 'rei.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1
mob/NPC
	PVP2
		icon = 'arena.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1
mob/NPC
	Teleporte1
		D = list(
		1 = "Seja Bem-Vindo � Nasgard!",
		2 = "Come�aremos sua jornada agora pelas terras de Guardia",
		3 = "Haver�o v�rias cobras por l�, mas tudo bem",
		4 = "Te darei uma arma de madeira para se defender",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				usr.x+=155
				usr.y+=577
				if(usr.wp == 1)
					if(usr.espaco >= 25)
						usr <<output("<b>Voc� n�o tem espa�o no invent�rio!</b>","Chat")
						return
					var/obj/Armas/Espada/Espada_de_Madeira/C = new()
					usr.contents+=C
					usr.espaco +=1
					BankTag()
					CheckBolsa()
					usr<<output("<font color=red><b>Pressione 'I' para abrir e fechar o invent�rio","Chat")
				if(usr.wp == 2)
					if(usr.espaco >= 25)
						usr <<output("<b>Voc� n�o tem espa�o no invent�rio!</b>","Chat")
						return
					var/obj/Armas/Arco/Arco_de_Madeira/C = new()
					usr.contents+=C
					usr.espaco +=1
					BankTag()
					CheckBolsa()
					usr<<output("<font color=red><b>Pressione 'I' para abrir e fechar o invent�rio","Chat")
				if(usr.wp == 3)
					if(usr.espaco >= 25)
						usr <<output("<b>Voc� n�o tem espa�o no invent�rio!</b>","Chat")
						return
					var/obj/Armas/Cajado/Cajado_de_Madeira/C = new()
					usr.contents+=C
					usr.espaco +=1
					BankTag()
					CheckBolsa()
					usr<<output("<font color=red><b>Pressione 'I' para abrir e fechar o invent�rio","Chat")
				if(usr.wp == 4)
					if(usr.espaco >= 25)
						usr <<output("<b>Voc� n�o tem espa�o no invent�rio!</b>","Chat")
						return
					var/obj/Armas/Adaga/Adaga_de_Madeira/C = new()
					usr.contents+=C
					BankTag()
					var/obj/Armas/Adaga/Adaga_de_Madeira/c = new()
					usr.contents+=c
					usr.espaco +=2
					BankTag()
					CheckBolsa()
					usr<<output("<font color=red><b>Pressione 'I' para abrir e fechar o invent�rio","Chat")
				if(usr.wp == 5)
					if(usr.espaco >= 25)
						usr <<output("<b>Voc� n�o tem espa�o no invent�rio!</b>","Chat")
						return
					var/obj/Armas/Montante/Montante_de_Madeira/C = new()
					usr.contents+=C
					usr.espaco +=1
					BankTag()
					CheckBolsa()
					usr<<output("<font color=red><b>Pressione 'I' para abrir e fechar o invent�rio","Chat")
				return
			M.Dialogue(src)

		icon = 'gm.dmi'
		npc=1
		HP = 30000000000000000000000000000
		vivo = 1
mob/NPC
	Bau
		icon = 'chest.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1

mob/NPC
	Teleporte2
		icon = 'gm.dmi'
		HP = 30000000000000000000000000000
		vivo = 1
		npc=1

mob/NPC
	Cura
		icon ='npccura.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
		D = list(
		1 = "Um aventureiro se machuca de vez em quando",
		2 = "Venha c�, deixe-me te curar",
		3 = "(Sua vida e mana foram restauradas)",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				usr.HP = usr.MaxHP
				usr.MP = usr.MaxMP
				return
			M.Dialogue(src)
mob/NPC
	Guarda
		icon = 'npc banqueiro.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
		D = list(
		1 = "Bom dia, Aventureiro",
		2 = "N�o cause confus�o!",
		3 = "Cuidado com os orcs do lado leste da muralha",
		4 = "Existem v�rias �rvores e animais selvagens na floresta de Guardia",
		5 = "Tome uma moeda, aventureiro",
		)
		Interagir(mob/M)
			var/r=rand(100)
			if(r<=33)
				M.Dialog=1
			if(r>33 && r<=66)
				M.Dialog=2
			if(r>66 && r<=80)
				M.Dialog=3
			if(r>80 && r<=95)
				M.Dialog=4
			if(r>95)
				M.Dialog=5
				M.Dialogue2(src)
				sleep(10)
				M.CloseDialogue()
				usr.carteira+=1
				UpdateBolsa()
				return
			M.Dialogue2(src)
			sleep(10)
			M.CloseDialogue()

mob/NPC
	Cama
		icon = 'diverso.dmi'
		icon_state = "cama"
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Tenente
		icon = 'npc tenente.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Vendedor_de_Casas
		icon = 'vendedor.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Porta
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Porta2
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Porta3
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
mob/NPC
	Porta4
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1

mob/NPC
	Porta5
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1

mob/NPC
	Porta6
		icon = 'Porta1.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1

mob/NPC
	Tenente2
		icon = 'npc tenente.dmi'
		HP = 30000000000000000000000000000
		npc=1
		vivo = 1
		D = list(
		1 = "Eu sou o Vendendor de Ferramentas",
		2 = "Um bom aventureiro est� sempre ativo e trabalhando",
		)
		Interagir(mob/M)
			if(M.Dialog >= length(D))
				M.CloseDialogue()
				winshow(usr, "LojadeFerramentas",1)
				return
			M.Dialogue(src)