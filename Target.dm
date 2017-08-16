mob
	var
		targeting=0
		Tgt = ""
mob
	Click()
		if(src==usr)
			return
		if(src.npc==1)
			return
		if(usr.targeting==0)
			usr.targeting=1
			usr.Tgt= src
			var/image/I = image('Taarget.dmi',src)
			usr.client.images += I
			usr<<output("<font color=red>Você marcou [src].","Chat")
			spawn(1200)
			if(usr.targeting)
				usr<<output("<font color=blue>[src] foi desmarcado","Chat")
				del(I)
				usr.Tgt= null
				usr.targeting=0
		else
			for(var/image/I in usr.client.images)
				del(I)
			usr.Tgt= null
			usr.targeting=0


