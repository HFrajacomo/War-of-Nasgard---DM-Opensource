mob/verb/QuickHP()
	var/obj/potiong/D = /obj/potiong
	var/obj/P = locate(D) in usr.contents
	var/obj/potion/D1 = /obj/potion
	var/obj/P1 = locate(D1) in usr.contents
	if(P)
		if(usr.HP>=usr.MaxHP)
			usr <<output("Voc� n�o precisa de HP. Seu HP est� no m�ximo..","Chat")
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
			usr <<output("Voc� n�o precisa de HP. Seu HP est� no m�ximo..","Chat")
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
		usr<<output("<font color=red>Voc� est� sem po��es de vida</font color=red>","Chat")


mob/verb/QuickMP()
	var/obj/potionmg/D = /obj/potionmg
	var/obj/P = locate(D) in usr.contents
	var/obj/potionm/D1 = /obj/potionm
	var/obj/P1 = locate(D1) in usr.contents
	if(P)
		if(usr.MP>=usr.MaxMP)
			usr <<output("Voc� n�o precisa de MP. Seu MP est� no m�ximo..","Chat")
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
			usr <<output("Voc� n�o precisa de MP. Seu MP est� no m�ximo..","Chat")
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
		usr<<output("<font color=blue>Voc� est� sem po��es de mana</font color=blue>","Chat")





obj
	potion
		name = "Pocao de HP Pequena"
		icon = 'Po�oes.dmi'
		icon_state = "hp pequena"
		verb/usarvida()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.HP>=usr.MaxHP)
					usr <<output("<font color = red>Voc� n�o precisa de HP,seu HP est� no m�ximo..","Chat")
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
		icon = 'po�oes.dmi'
		icon_state = "hp grande"
		verb/usarvida()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.HP>=usr.MaxHP)
					usr <<output("<font color = red>Voc� n�o precisa de HP,seu HP est� no m�ximo..","Chat")
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
		icon = 'po�oes.dmi'
		icon_state = "mp pequena"
		verb/usarmana()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.MP>=usr.MaxMP)
					usr <<output("<font color = blue>Voc� n�o precisa de MP,seu MP est� no m�ximo..","Chat")
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
		icon = 'po�oes.dmi'
		icon_state = "mp grande"
		verb/usarmana()
			set name="Beber"
			set category = null
			if(src.loc == usr)
				if(usr.MP>=usr.MaxMP)
					usr <<output("<font color = blue>Voc� n�o precisa de MP,seu MP est� no m�ximo..","Chat")
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
