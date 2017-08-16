proc/CheckHP()
	usr.HP=(usr.MaxHP-usr.HP)+usr.HP
	if(usr)
		UpdateNum()


proc/CheckMP()
	usr.MP=(usr.MaxMP-usr.MP)+usr.MP
	if(usr)
		UpdateNum()

proc/Checkfome()
	usr.fome=(usr.Maxfome-usr.fome)+usr.fome
	if(usr)
		UpdateNum()


var/i=1

mob/proc/RegenK()
	if(usr.wp==1)
		begin4
		sleep(7)
		if (usr.Folego>=2)
			usr.Folego = 1
		if (usr.Folego <1)
			usr.Folego += 1
		if(usr.speed == 0)
			usr.step_size = 4
		if(usr.speed >= 1)
			usr.step_size = 16
		if (usr.HP < usr.MaxHP)
			usr.HP += 1
		if (usr.MP <usr.MaxMP)
			usr.MP += 1
		if (usr.HP>usr.MaxHP) CheckHP()
		if (usr.MP>usr.MaxMP) CheckMP()
		if (usr.fome <= 10000)
			usr.fome -= 2
		if (usr.fome>usr.Maxfome) Checkfome()
		if(usr.fome < 1)
			world <<output("<font color = white>[usr] morreu!","Chat")
			usr.Move(locate(151,541,1))
			usr.HP = usr.MaxHP
			usr.carteira-= 1000000
			if(usr.carteira < 0) usr.carteira = 0
			usr.Exp-= 1000000
			if(usr.Exp < 0)usr.Exp = 0
			usr.MP = usr.MaxMP
			usr.fome = 5000
		goto begin4





mob/proc/Regen()
	if(usr.wp!=1)
		begin3
		sleep(8)
		if(usr.speed == 0)
			usr.step_size = 4
		if(usr.speed >= 1)
			usr.step_size = 16
		if (usr.HP < usr.MaxHP)
			usr.HP += 1
		if (usr.MP <usr.MaxMP)
			usr.MP += 1
		if (usr.Folego>=2)
			usr.Folego = 1
		if (usr.Folego <1)
			usr.Folego += 1
		if (usr.HP>usr.MaxHP) CheckHP()
		if (usr.MP>usr.MaxMP) CheckMP()
		if (usr.Folego>=2)
			usr.Folego = 1
		if (usr.Folego <1)
			usr.Folego += 1
		if (usr.fome <= 10000)
			usr.fome -= 2
		if (usr.fome>usr.Maxfome) Checkfome()
		if(usr.fome < 1)
			world <<output("<font color = white>[usr] morreu!","Chat")
			usr.Move(locate(151,541,1))
			usr.HP = usr.MaxHP
			usr.carteira-= 1000000
			if(usr.carteira < 0) usr.carteira = 0
			usr.Exp-= 1000000
			if(usr.Exp < 0)usr.Exp = 0
			usr.MP = usr.MaxMP
			usr.fome = 5000
		goto begin3




