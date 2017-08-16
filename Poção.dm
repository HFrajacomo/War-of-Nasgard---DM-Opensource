mob/verb/QuickHP()
	var/obj/potiong/D = /obj/potiong
	var/obj/P = locate(D) in usr.contents
	var/obj/potion/D1 = /obj/potion
	var/obj/P1 = locate(D1) in usr.contents
	if(P)
		if(usr.HP>=usr.MaxHP)
			usr <<output("Você não precisa de HP. Seu HP está no máximo..","Chat")
			return
		else
			usr.HP += 1000
			usr.espaco-=1
			usr <<output("<font color = red>Seu HP subiu para mais 1000..","Chat")
			if(usr.HP>usr.MaxHP)
				usr.HP = usr.MaxHP
				del(P)
			else
				del(P)
	else if(P1)
		if(usr.HP>=usr.MaxHP)
			usr <<output("Você não precisa de HP. Seu HP está no máximo..","Chat")
			return
		else
			usr.HP += 400
			usr.espaco-=1
			usr <<output("<font color = red>Seu HP subiu para mais 400..","Chat")
			if(usr.HP>usr.MaxHP)
				usr.HP = usr.MaxHP
				del(P1)
			else
				del(P1)
	else
		usr<<output("<font color=red>Você está sem poções de vida</font color=red>","Chat")


mob/verb/QuickMP()
	var/obj/potionmg/D = /obj/potionmg
	var/obj/P = locate(D) in usr.contents
	var/obj/potionm/D1 = /obj/potionm
	var/obj/P1 = locate(D1) in usr.contents
	if(P)
		if(usr.MP>=usr.MaxMP)
			usr <<output("Você não precisa de MP. Seu MP está no máximo..","Chat")
			return
		else
			usr.MP += 1000
			usr.espaco-=1
			usr <<output("<font color = red>Seu MP subiu para mais 1000..","Chat")
			if(usr.MP>usr.MaxMP)
				usr.MP = usr.MaxMP
				del(P)
			else
				del(P)
	else if(P1)
		if(usr.MP>=usr.MaxMP)
			usr <<output("Você não precisa de MP. Seu MP está no máximo..","Chat")
			return
		else
			usr.MP += 400
			usr.espaco-=1
			usr <<output("<font color = red>Seu MP subiu para mais 400..","Chat")
			if(usr.MP>usr.MaxMP)
				usr.MP = usr.MaxMP
				del(P1)
			else
				del(P1)
	else
		usr<<output("<font color=blue>Você está sem poções de mana</font color=blue>","Chat")





obj
	potion
		name = "Pocao de HP Pequena"
		icon = 'Poçoes.dmi'
		icon_state = "hp pequena"
		verb/usarvida()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.HP>=usr.MaxHP)
					usr <<output("<font color = red>Você não precisa de HP,seu HP está no máximo..","Chat")
					return
				else
					usr.HP += 400
					usr.espaco-=1
					usr <<output("<font color = red>Seu HP subiu para mais 400..","Chat")
					if(usr.HP>usr.MaxHP)
						usr.HP = usr.MaxHP
						del (src)
					else
						del (src)

obj
	potiong
		name = "Pocao de HP Grande"
		icon = 'poçoes.dmi'
		icon_state = "hp grande"
		verb/usarvida()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.HP>=usr.MaxHP)
					usr <<output("<font color = red>Você não precisa de HP,seu HP está no máximo..","Chat")
					return
				else
					usr.HP += 1000
					usr.espaco-=1
					usr <<output("<font color = red>Seu HP subiu para mais 1000..","Chat")
					if(usr.HP>usr.MaxHP)
						usr.HP = usr.MaxHP
						del (src)
					else
						del (src)
obj
	potionm
		name = "Pocao de MP Pequena"
		icon = 'poçoes.dmi'
		icon_state = "mp pequena"
		verb/usarmana()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.MP>=usr.MaxMP)
					usr <<output("<font color = blue>Você não precisa de MP,seu MP está no máximo..","Chat")
					return
				else
					usr.MP += 400
					usr.espaco-=1
					usr <<output("<font color = blue>Seu MP subiu para mais 400..","Chat")
					if(usr.MP>usr.MaxMP)
						usr.MP = usr.MaxMP
						del (src)
					else
						del (src)

obj
	potionmg
		name = "Pocao de MP Grande"
		icon = 'poçoes.dmi'
		icon_state = "mp grande"
		verb/usarmana()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.MP>=usr.MaxMP)
					usr <<output("<font color = blue>Você não precisa de MP,seu MP está no máximo..","Chat")
					return
				else
					usr.MP += 1000
					usr.espaco-=1
					usr <<output("<font color = blue>Seu MP subiu para mais 1000..","Chat")
					if(usr.MP>usr.MaxMP)
						usr.MP = usr.MaxMP
						del (src)
					else
						del (src)
