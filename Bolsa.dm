mob/proc/AbrirBolsa()
	usr.BolsaAtiva=1
	winshow(usr, "Bolsa", 1)
	winshow(usr, "Bolsalbl", 1)
	winshow(usr, "Bolsabtn", 1)
	winshow(usr, "BolsaSlot", 1)
	winshow(usr, "BolsaOuro", 1)
	ContarItems()
	UpdateBolsa()

mob/proc/FecharBolsa()
	usr.BolsaAtiva=0
	winshow(usr, "Bolsa",0)
	winshow(usr, "Bolsalbl",0)
	winshow(usr, "Bolsabtn",0)
	winshow(usr, "BolsaSlot", 0)
	winshow(usr, "BolsaOuro", 0)

mob/verb/CheckBolsa()
	set hidden=1
	if(usr.BolsaAtiva==1)
		FecharBolsa()
	else
		AbrirBolsa()

proc/UpdateBolsa()
	var/i=1
	var/l=1
	if(usr==null)
		return
	winset(usr, "Bolsa",{"cells="1x[usr.contents.len]""})
	for(var/atom/a in usr.contents)
		usr<<output(a,"Bolsa:[l]x[i]")
		i++
	winset(usr, "BolsaSlot", "text=\"Slot [usr.espaco]/25\"")
	winset(usr, "BolsaOuro", "text=\"Ouro: [usr.carteira]\"")
	usr << output("Dinheiro: [usr.carteira]", "Grana")
	usr << output("Dinheiro: [usr.carteira]", "GranaArm")
	winset(usr, "Grana1","text=\"Dinheiro: [usr.carteira]\"")
	winset(usr, "Grana2","text=\"Dinheiro: [usr.carteira]\"")
	winset(usr, "Grana3","text=\"Dinheiro: [usr.carteira]\"")

mob/proc/ClockBolsa()
	fuck
	sleep(3)
	var/i=1
	var/l=1
	winset(usr, "Bolsa",{"cells="1x[usr.contents.len]""})
	for(var/atom/a in usr.contents)
		usr<<output(a,"Bolsa:[l]x[i]")
		i++
	winset(usr, "BolsaSlot", "text=\"Slot [usr.espaco]/25\"")
	winset(usr, "BolsaOuro", "text=\"Ouro: [usr.carteira]\"")
	goto fuck

