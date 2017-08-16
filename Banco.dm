mob/proc/ContarItems()
	var/Items = length(usr.contents)
	usr.espaco = Items




// -------------------------------------------------------------------------------------------------------------------------//
mob
	NPC
		Bau
			icon = 'chest.dmi'
			density = 1
			Interagir(mob/M)
				if(M.Dialog >= length(D))
					M.CloseDialogue()
					UpdateBanco()
					PrintarBanco()
					ContarItems()
					winshow(usr,"Banco",1)
					return
				M.Dialogue(src)

//----------------------------------------------------------------------------------------------------------------------------//





obj/var/InBank=0
mob/var/Extrato=0
mob/var/list/banco = list()
obj/var/list/Fuck = list()
obj/var/list/Treta = list()
obj/var/list/Pega = list(/obj/verb/Retirar)

area/Banco
	Exited(mob/M)
		if(ismob(M))
			if(M.ID!=0)
				return
			winshow(usr, "Banco", 0)
	verb
		RestoreBanco()
			var/obj/e = locate(/obj) in usr.contents
			for(e in usr.contents)
				e.verbs.Add(e.Fuck)
				e.verbs -= /obj/verb/Retirar
				e.verbs -= /obj/verb/Depositar
				for (var/verbos in e.verbs)
					e.verbs += verbos



proc/UpdateBanco()
	var/obj/e = locate(/obj) in usr.contents
	for (e in usr.contents)
		e.Fuck.Add(e.verbs)
		for (var/verbos in e.Fuck)
			e.verbs -= verbos
			e.verbs += /obj/verb/Depositar
			e.verbs -= /obj/verb/Retirar
	usr << output(null,"BancoBolsa")
	ValidateWithdraw()
	PrintarBanco()

proc/ValidateWithdraw()
	var/obj/t = locate(/obj) in usr.banco
	for (t in usr.banco)
		t.Fuck.Add(t.verbs)
		if(t.InBank==1)
			for (var/verbos in t.Fuck)
				t.verbs -= verbos
				t.verbs.Add(t.Pega)



proc/PrintarBanco()
	var/atom/a = locate(/atom) in usr.contents
	var/i=1
	for(a in usr.contents)
		usr<<output(a,"BancoBolsa:1x[i]")
		i++
	var/j=1
	var/atom/b = locate(/atom) in usr.banco
	for(b in usr.banco)
		usr<<output(b,"BancoGrid:1x[j]")
		j++
	usr << output("[usr.espaco] / 25","BancoSlotB")
	usr << output("[usr.carteira]", "GranaBancoB")
	usr << output("[usr.Extrato]","Extrato")

obj/verb
	Depositar()
		usr << output(null,"BancoBolsa")
		src.InBank=1
		src.verbs += /obj/verb/Retirar
		src.verbs -= /obj/verb/Depositar
		usr.contents.Remove(src)
		usr.banco.Add(src)
		winset(usr, "BancoBolsa",{"cells="1x[usr.contents.len]""})
		usr.espaco-=1
		UpdateBanco()

	Retirar()
		set src in usr
		if(usr.espaco<25)
			usr<<output(null,"BancoGrid")
			src.InBank=0
			usr.contents.Add(src)
			usr.banco.Remove(src)
			winset(usr, "BancoGrid",{"cells="1x[usr.banco.len]""})
			usr.espaco+=1
			UpdateBanco()

		else
			usr<<output("Você não tem espaço suficiente", "Chat")
			return
obj
	Click()
		if(/obj/verb/Depositar in src.verbs)
			Depositar()
		else if(/obj/verb/Retirar in src.verbs)
			Retirar()
		else
			return

//------------------------------Money----------------------------------

area/Banco/verb
	GuardarBanco()
		set hidden = 1
		var/a = winget(usr, "Carregado","text")
		var/T = text2num(a)
		if(usr.carteira>=T)
			usr.carteira-=T
			usr.Extrato+=T
			PrintarBanco()
		else
			usr<<output("Você não tem tudo isso","Chat")
		var/b = winget(usr, "Guardado","text")
		var/Y = text2num(b)
		if(usr.Extrato>=Y)
			usr.carteira+=Y
			usr.Extrato-=Y
			PrintarBanco()
		else
			usr<<output("Você não tem tudo isso","Chat")

