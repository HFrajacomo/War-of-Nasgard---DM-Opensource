var/list/Cmd = list("Entregar", "Entregar Ouro", "Mensagem Privada", "Jogadores Online", "Opções", "Cancelar")

mob/verb/Options()
	var/O = SelectCmd()
	if(O=="Jogadores Online")
		Jogadores_Online()
	if(O=="Entregar")
		var/list/Y = list()
		for(var/mob/M in oview(1))
			Y.Add(M)
		var/mob/N = input(usr, "Escolha um jogador","Troca") in Y
		Entregar(N)
	if(O=="Entregar Ouro")
		var/list/Y = list()
		for(var/mob/M in oview(1))
			Y.Add(M)
		var/mob/N = input(usr, "Escolha um jogador","Troca") in Y
		Entregar_Ouro(N)
	if(O=="Mensagem Privada")
		Mensagem_Privada()
	if(O=="Opções")
		Opcoes()
	if(O=="Cancelar")
		return



proc/SelectCmd()
	var/O = input(usr, "Comandos", "Painel de Comandos",) in Cmd
	return O






mob
	verb
		Jogadores_Online()
			set category = "Comandos"
			var/PlayerCount
			usr <<output("<font color = darkgreen size = 4>(Jogadores Online)","Chat")
			for (var/mob/M in world)
				if (M.client)
					PlayerCount ++
					usr <<output("-- <font color = black>[M] ( Level [M.Level] )<font color=black> --","Chat")
			usr <<output("<font color = darkred size = 2> ([PlayerCount] Jogadores Online)","Chat")

mob
	verb
		Entregar(var/mob/M as mob in oview(1))
			set category = "Comandos"
			if(M==null)
				return
			if(M.client)
				if(M.espaco >= 25)
					usr <<output("<b>Ele não tem espaço no inventário!</b>","Chat")
					return
				var/trade1=input("O que você pretende trocar?","Troca") in src.contents
				if(trade1!=usr.E1)
					M.contents += trade1
					src.contents -= trade1
					src<<output("<font color=white>Item dado com sucesso","Chat")
					usr.espaco -= 1
					M.espaco +=1
					M<<output("Você recebeu [trade1] de [src]","Chat")
				else
					usr<<output("Você não pode oferecer um ítem equipado","Chat")
			else
				return

mob
	verb
		Entregar_Ouro(var/mob/M as mob in oview(1))
			set category = "Comandos"
			if(M==null)
				return
			if(M.client)
				var/x=input("Quanto deseja dar?") as num
				if (src.carteira<x)
					usr<<output("<font color=white>Você não possui essa quantia","Chat")
				else
					M.carteira += x
					src.contents -= x
					src<<output("<font color=white>Dinheiro entregue com sucesso","Chat")
					M<<output("<font color=white>Você recebeu [x] Ouros de [src]","Chat")
			else
				return




mob
	var
		Muted = 0
		BlockList = list()
		PM = 1
	Topic(href,href_list[])
		switch(href_list["Comandos"])
			if("PM")
				if(usr.Muted) {usr<<output("<font color=silver>Você não pode fazer isso enquanto está mutado. </font color>","Chat"); return}
				if(!src.PM) {usr<<output("<font color=red>[src] colocou sua PM offline</font color>", "Chat"); return}
				if(!usr.PM) {usr<<output("<font color=red>Você colocou sua PM offline</font color>", "Chat"); return}
				if(usr.key in src.BlockList){usr<<output("<font color=red>[src] bloqueou você</font color>", "Chat"); return}
				if(src.key in usr.BlockList){usr<<output("<font color=red>You have [src] blocked</font color>","Chat"); return}
				var/msg = input("O que você quer falar para [src] ([src.key])?","Mensagem Privada") as text|null
				if(!msg) return
				usr<<output("<font color=red>(PM)</font color><font color=blue><--- Para: <a href=?src=\ref[src];action=PM>[src]</a>:</font color> [html_encode(msg)]","Chat")
				src<<output("<font color=red>(PM)</font color><font color=blue>---> De: <a href=?src=\ref[usr];action=PM>[usr]</a>:</font color> [html_encode(msg)]","Chat")
		. = ..()
	verb
		Mensagem_Privada()
			var/list/players = list()
			for(var/mob/M in world)
				if(M.client && M.PM) players += M
				if(M == usr) players-=M
			var/mob/M = input("Com quem você gostaria de mandar a mensagem?","Mensagem Privada")as null|anything in players
			if(!M) return
			var/msg = input("O que você quer mandar para [M] ([M.key])?","Mensagem Privada") as text|null
			if(!msg) return
			if(!M.PM) {usr<<output("<font color=red>[M] Colocou sua PM offline</font color>","Chat"); return}
			if(usr.key in M.BlockList){usr<<output("<font color=red>[M] bloqueou você.</font color>","Chat"); return}
			if(M.key in usr.BlockList){usr<<output("<font color=red>Você bloqueou [M]</font color>","Chat"); return}
			usr<<output("<font color=red>(PM)</font color><font color=blue><--- Para: <a href=?src=\ref[M];action=PM>[M]</a>:</font color> [html_encode(msg)]","Chat")
			M<<output("<font color=red>(PM)</font color><font color=blue>---> De: <a href=?src=\ref[usr];action=PM>[usr]</a>:</font color> [html_encode(msg)]","Chat")
		Opcoes()
			set category = "Comandos"
			switch(input("Mensagem Privada Opções","Opções")\
			in list("PM On/Off","Bloquear uma pessoa","Desbloquear alguem","Ver lista de bloqueados","Cancelar"))
				if("PM On/Off")
					if(usr.PM)
						usr.PM = 0
						usr<<output("<font color=red>PM Offline","Chat")
					else
						usr.PM = 1
						usr<<output("<font color=red>PM Online","Chat")
				if("Bloquear uma pessoa")
					var/list/players = list()
					for(var/mob/M in world)
						if(M.client) players+=M
						if(M == usr) players-=M
						if(M.key in usr.BlockList) players-=M
					var/mob/M = input("Quem você queria desbloquear?\n- Isso ira bloquear a pessoa","PM Bloqueio")as null|anything in players
					if(!M) return
					usr.BlockList+="[M.key]"
					usr<<output("<font color=green>Você tem todo mundo bloquado [M] ([M.key])</font color>","Chat")
				if("Desbloquear alguem")
					var/list/players = list()
					for(var/M in usr.BlockList)
						players+=M
					var/mob/M = input("Quem você queria desbloquear?\n- Isso ira desbloquaer a pessoa","PM Desbloqueio")as null|anything in players
					if(!M) return
					usr.BlockList-="[M]"
					usr<<output("<font color=green>Você não tem ninguem bloqueado. \"[M]\"</font color>","Chat")
				if("Ver lista de bloqueados")
					usr<<output("<font color=red><big>[usr] Lista de Bloqueados</big></font color>","Chat")
					var/Blocked = 0
					for(var/B in usr.BlockList)
						Blocked++
						usr<<output("<font color=yellow>[B]</font color>","Chat")
					usr<<output("<font color=red>Pessoas bloqueadas: [Blocked]</font color>","Chat")
				if("Cancelar")
					return
