proc/UpdateNum()
	if(usr==null)
		usr<<output("Ocorreu um erro, por favor, reconecte","Chat")
		return
	winset(usr, "HPlabel", "text=\"[usr.HP]/[usr.MaxHP]\"")
	var/life=usr.HP/usr.MaxHP*100
	winset(usr, "HPbar", "value=[life]")
	winset(usr, "Manalabel", "text=\"[usr.MP]/[usr.MaxMP]\"")
	var/mana=usr.MP/usr.MaxMP*100
	winset(usr, "Manabar", "value=[mana]")
	var/experiencia=round(usr.Exp/usr.Nexp*100)
	winset(usr, "Explabel", "text=\"[experiencia]%\"")
	winset(usr, "Expbar", "value=[experiencia]")
	var/barrafome=usr.fome/50
	winset(usr, "Fomelabel", "text=\"[barrafome]%\"")
	winset(usr, "Fomebar", "value=[barrafome]")


proc/UpdateInv()
	if(usr.E1!=null)
		usr << output(usr.E1, "Arma1")
	else
		usr<< output("(Arma Primária)", "Arma1")

	if(usr.E2!=null)
		usr << output(usr.E2, "Arma2")
	else
		usr << output("(Arma Secundária)", "Arma2")

	if(usr.Capacete!=null)
		usr << output(usr.Capacete, "Capacete")
	else
		usr << output("(Cabeça)", "Capacete")

	if(usr.Armadura!=null)
		usr << output(usr.Armadura, "Armadura")
	else
		usr << output("(Corpo)", "Armadura")

	if(usr.Bota!=null)
		usr << output(usr.Bota, "Bota")
	else
		usr << output("(Pés)", "Bota")
	UpdateBolsa()


obj/proc/UpdateLojaArmas()
	if(usr.E1!=null)
		src=usr.E1
		usr << output(src.name, "ArmaAtual")
		usr << output(src.desc, "ForçaAtual")
	else
		usr << output("Desarmado", "ArmaAtual")
		usr << output("", "ForçaAtual")

obj/proc/UpdateLojaArmadura()
	if(usr.E2!=null)
		if(usr.wp==1)
			src=usr.E2
			usr << output(src.name, "ShieldAtual")
			usr << output(src.desc, "SShieldAtual")
		else
			usr << output("","ShieldAtual")
			usr << output("","SShieldAtual")
	else
		usr << output("(Desarmado)", "ShieldAtual")
		usr << output("", "SShieldAtual")

	if(usr.Capacete!=null)
		src=usr.Capacete
		usr << output(src.name, "HelmAtual")
		usr << output(src.desc, "SHelmAtual")
	else
		usr << output("(Cabeça)", "HelmAtual")
		usr << output("", "SHelmAtual")

	if(usr.Armadura!=null)
		src=usr.Armadura
		usr << output(src.name, "ArmorAtual")
		usr << output(src.desc, "SArmorAtual")
	else
		usr << output("(Corpo)", "ArmorAtual")
		usr << output("", "SArmorAtual")

	if(usr.Bota!=null)
		src=usr.Bota
		usr << output(src.name, "BootAtual")
		usr << output(src.desc, "SBootAtual")
	else
		usr << output("(Pés)", "BootAtual")
		usr << output("", "SBootAtual")

