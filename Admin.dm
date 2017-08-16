turf/PiscaTela
	icon='PiscaTela.dmi'

turf/PiscaVerm
	icon='PiscaVermelho.dmi'

turf/PiscaVin
	icon='PiscaVinho.dmi'

turf/PiscaB
	icon='PiscaBranco.dmi'

mob/verb/PiscaAmarelo()
	var/list/Cu = newlist()
	var/turf/A = /turf/PiscaTela
	for(var/turf/T in view())
		T.overlays+=A
		Cu.Add(T)
	sleep(12)
	for(var/turf/T in Cu)
		T.overlays-=A

mob/verb/PiscaBranco()
	var/list/Cu = newlist()
	var/turf/A = /turf/PiscaB
	for(var/turf/T in view())
		T.overlays+=A
		Cu.Add(T)
	sleep(12)
	for(var/turf/T in Cu)
		T.overlays-=A

mob/verb/PiscaVermelho()
	var/list/Cu = newlist()
	var/turf/A = /turf/PiscaVerm
	for(var/turf/T in view())
		T.overlays+=A
		Cu.Add(T)
	sleep(12)
	for(var/turf/T in Cu)
		T.overlays-=A

mob/verb/PiscaVinho()
	var/list/Cu = newlist()
	var/turf/A = /turf/PiscaVin
	for(var/turf/T in view())
		T.overlays+=A
		Cu.Add(T)
	sleep(12)
	for(var/turf/T in Cu)
		T.overlays-=A


// ----------------------------------------------------- //
var/list/Cheat = list("HP","MP","Ouro","Level","Velocidade","Anunciar","Debug","Banir","Invisibilidade","Voar","Reconectar","Teleportar","Sumonar","Cancelar")


mob/verb/Admin()
	if(usr.Admin==1)
		var/O = SelectCheat()
		if(O=="HP")
			HP()
		if(O=="MP")
			Mana()
		if(O=="Ouro")
			var/N = input(usr, "Digite o dinheiro","Painel Administrador") as num
			Ouro(N)
		if(O=="Level")
			Level()
		if(O=="Velocidade")
			Velocidade()
		if(O=="Anunciar")
			var/message = input(usr, "Anuncie","Painel Administrador") as text
			Anunciar(message)
		if(O=="Debug")
			Debug()
		if(O=="Banir")
			var/mob/M = SelectPlayer()
			Banir(M)
		if(O=="Invisibilidade")
			Forma_Fantasma()
		if(O=="Voar")
			Voar()
		if(O=="Reconectar")
			Reconectar()
		if(O=="Teleportar")
			var/mob/M = SelectMob()
			Teleportar(M)
		if(O=="Sumonar")
			var/mob/M = SelectMob()
			Sumonar(M)
		if(O=="Cancelar")
			return


proc/SelectMob()
	var/list/S = list()
	for(var/mob/M in world)
		S.Add(M)
	var/mob/N = input(usr, "Selecione um Mob","Painel Administrador",) in S
	return N

proc/SelectPlayer()
	var/list/S = list()
	for(var/mob/usr/M in world)
		S.Add(M)
	var/mob/N = input(usr, "Selecione um Jogador","Painel Administrador",) in S
	return N

proc/SelectCheat()
	var/O = input(usr, "Comandos de Admin", "Painel Administrador",) in Cheat
	return O

// --------------------------------------------------------- //




mob
	verb
		Debug()
			set category = "Admin"
			if(bug==0)
				winshow(usr, "MainOutput", 1)
				bug=bug+1
				return
			else
				winshow(usr, "MainOutput", 0)
				bug=0
				return
		Banir(mob/M in world)
			set category = "Admin"
			set hidden=1
			world <<output("<center><font color=green>[M] foi banido por [src]","Chat")
			del(M)
		Sumonar(mob/M in world)
			set category = "Admin"
			set hidden=1
			M.x = src.x; M.y = src.y; M.z = src.z; if(M.client) M.client.eye = M;
		Teleportar(mob/M in world)
			set category = "Admin"
			set hidden=1
			src.x = M.x; src.y = M.y; src.z = M.z; src.client.eye = src;
		Reconectar()
			set category = "Admin"
			switch(alert("Você tem certeza ?","Reboot","Sim","Não"))
				if("Sim")
					world <<output("<center><b>O War of Nasgard Irá dar Rebooting em 5 Segundos...","Chat")
					sleep(50)
					world.Reboot()
		Desconectar_Server()
			set category = "Admin"
			switch(alert("Você tem certeza ??","Desconectar o server","Sim","Não"))
				if("Sim")
					world <<output("<center><b>O War of Nasgard Irá Se Desconectar em 5 Segundos...","Chat")
					sleep(50)
					del(world)
		Anunciar(message as text)
			set category = "Admin"
			set name = "Anunciar"
			set desc = "O que você gostaria de Anunciar?"
			world <<output("<center>----------------------------------------------------------------- <br><font color=red><B>[src] Está Anunciando:</font><br><font color=black><B>[message]</font><br>----------------------------------------------------------------- </center>","Chat")
		Forma_Fantasma()
			set desc = "Você pode atravessar paredes."
			set category = "Admin"
			src.invisibility = !invisibility
		Voar()
			set desc = "Você pode voar."
			set category = "Admin"
			src.density = !density
		Level()
			set category = "Admin"
			src.Exp += src.Nexp
			LevelCheck()
		Mana()
			set category = "Admin"
			usr.MP += 3000
		HP()
			set category = "Admin"
			usr.HP += 3000
		Velocidade()
			set category = "Admin"
			usr.step_size = 16
			if(usr.step_size > 16)usr.step_size = 16
			usr.speed +=1
			if(usr.speed >1)
				usr.speed = 0
				usr.step_size = 4
			if(usr.wp==4)
				usr.step_size = 6


proc/Ouro(var/N)
		usr.carteira += N

