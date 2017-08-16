mob/Enemy
	Cobra
		icon = 'cobra.dmi'
		Class = "Enemy"
		Exp = 0
		HP = 50
		MaxHP=50
		monstro = 1
		ID = 1
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Olhar()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				CobraAttack(M)


mob/Enemy
	GuerreiroOrc
		icon = 'Orc2 .dmi'
		Class = "Enemy"
		monstro = 1
		HP = 350
		MaxHP=350
		ID = 5
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				GuerreiroOrcAttack(M)


mob/Enemy
	Orc
		icon = 'Orc3.dmi'
		Class = "Enemy"
		HP = 250
		MaxHP=250
		ID = 4
		monstro=1
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				OrcAttack(M)

mob/Enemy
	Lobisomen
		icon = 'lobisomen.dmi'
		monstro = 1
		Class = "Enemy"
		HP = 1200
		Def=0
		ID=8
		New()
			.=..()
			spawn(1)
				Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				LobisomenAttack(M)

mob/Enemy
	Aranha
		icon = 'aranha.dmi'
		Class = "Enemy"
		monstro = 1
		HP = 130
		MaxHP=130
		ID = 2
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				AranhaAttack(M)






mob/Enemy
	ReiOrc
		icon = 'Orc Boss.dmi'
		Class = "Enemy"
		monstro = 1
		HP = 2000
		MaxHP=2000
		ID = 6
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				OrcReiAttack(M)


mob/Enemy
	Lobo
		icon = 'lobo.dmi'
		Class = "Enemy"
		monstro = 1
		HP = 140
		MaxHP=140
		ID = 3
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				LoboAttack(M)


mob/Enemy
	Cabra
		icon='bode.dmi'
		HP=100
		MaxHP=100
		Class="Animal"
		ID=101
		monstro=1
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					NonAggresiveLook()



mob/Enemy
	Porco
		icon='Porco.dmi'
		HP=100
		MaxHP=100
		Class="Animal"
		Def=0
		Stun=0
		ID=102
		monstro=1
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					NonAggresiveLook()


mob/Enemy/Agro
	Tigre
		icon='Tigre.dmi'
		HP=280
		MaxHP=280
		Class="Enemy"
		ID=7
		monstro=1
		Def=0
		Stun=0
		New()
			.=..()
			spawn(1)
				if(src.Poseidon==0)
					Look()
		Bump(mob/M)
			if(isturf(M))
				return
			if(M.client)
				TigreAttack(M)


mob/var
	vivo=0
	monstro=0


mob/usr
	Bump(mob/A)
		if(ismob(A))
			if(A.Class=="Animal")
				if(usr.Tgt == A) return
				usr.targeting=1
				usr.Tgt= A
				var/image/I = image('Taarget.dmi',A)
				usr.client.images += I
				usr<<output("<font color=red>Você marcou [A].","Chat")
			else
				return
		else
			return




//-------------------------------------------------------------------------------------------//



mob
	proc
		Look()
			var/mob/usr/M = locate(/mob/usr) in oview(5)
			while(src)
				if(M in oview(5))
					if(M.invisibility!=101)
						walk_to(src,M,0,5)
					if(M in oview(1))
						step_towards(src,M)
					else
						step_rand(src)
						break
				else
					for(M in view(src))
						break
				sleep(5)
			M.targeting=1
			M.Tgt= src
			src.Tgt=M
			var/image/I = image('Taarget.dmi',src)
			M.client.images += I
			spawn(2)
			Look()


mob/proc/Olhar()
	while(src)
		var/mob/usr/M = locate(/mob/usr) in oview(5)
		if(!M)
			step_rand(src,5)
			sleep(8)
		if(M in oview(1))
			if(M.invisibility==0)
				ChooseAttack(M)
			else
		if(M in oview(5))
			if(M.invisibility==0)
				M.targeting=1
				M.Tgt= src
				src.Tgt=M
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				walk_to(src,M,0,5)
				sleep(2)
			else
		step_rand(src,5)
		sleep(8)


/*
mob/proc/Olhar()
	var/mob/usr/M = locate(/mob/usr) in oview(5)
	if(M==null)
		step_rand(src,5)
		sleep(8)
		Olhar()
		return
	if(M in oview(1))
		if(M.invisibility==0)
			ChooseAttack(M)
			Olhar()
			return
		else
			Olhar()
			return
	if(M in oview(5))
		if(M.invisibility==0)
			M.targeting=1
			M.Tgt= src
			src.Tgt=M
			var/image/I = image('Taarget.dmi',src)
			M.client.images += I
			walk_to(src,M,0,5)
			sleep(2)
			Olhar()
			return
		else
			Olhar()
			return
	step_rand(src,5)
	sleep(8)
	Olhar()
	*/



mob/proc/ChooseAttack(var/mob/M)
	if(src.name=="Cobra")
		CobraAttack(M)
	if(src.name=="Aranha")
		AranhaAttack(M)
	if(src.name=="Lobo")
		LoboAttack(M)
	if(src.name=="Tigre")
		TigreAttack(M)
	if(src.name=="Orc")
		OrcAttack(M)
	if(src.name=="GuerreiroOrc")
		GuerreiroOrcAttack(M)
	if(src.name=="ReiOrc")
		OrcReiAttack(M)












mob
	proc
		NonAggresiveLook()
			while(src)
				sleep(5)
				step_rand(src)
				break
				sleep(5)
			spawn(2)
				NonAggresiveLook()





mob/var
	killlist = list("")
	attacking = 0

	                        // DAMAGE //
	cobradamage = 25
	aranhadamage = 40
	aranhamaedamage = 85
	Ldamage = 50
	Orcdamage = 55
	GuerreiroOrcdamage = 65
	OrcReidamage = 150

	Cabradamage =0
	Tigredamage=50






mob
	proc
		CobraAttack(mob/M)
			if(src.Stun==0)
				var/cobradamage = rand(2,6) + src.cobradamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(cobradamage <= 0)
					return
				if(cobradamage >= 0)
					if(M.Deflect==1)
						cobradamage=round(cobradamage*3/4)
					M.HP -= cobradamage
				if(M.HP <= 0)
					deathplayer(M)
				else
					return


mob
	proc
		LobisomenAttack(mob/M)
			if(src.Stun==0)
				var/aranhamaedamage = rand(3,7) + src.aranhamaedamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(aranhamaedamage <= 0)
					return
				if(aranhamaedamage >= 0)
					if(M.Deflect==1)
						aranhamaedamage=round(aranhamaedamage*3/4)
					M.HP -= aranhamaedamage
				if(M.HP <= 0)
					deathplayer(M)
				else
					return


mob
	proc
		AranhaAttack(mob/M)
			if(src.Stun==0)
				var/aranhadamage = rand(2,6) + src.aranhadamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(aranhadamage <= 0)
					return
				if(aranhadamage >= 0)
					if(M.Deflect==1)
						aranhadamage=round(aranhadamage*3/4)
					M.HP -= aranhadamage
				if(aranhadamage>=M.HP)
					deathplayer(M)
				if(usr.HP <= 0)
					deathplayer(M)
				else
					return

mob
	proc
		LoboAttack(mob/M)
			if(src.Stun==0)
				var/Ldamage = rand(4,8) + src.Ldamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(Ldamage <= 0)
					return
				if(Ldamage >= 0)
					if(M.Deflect==1)
						Ldamage=round(Ldamage*3/4)
					M.HP -= Ldamage
				if(M.HP <= 0)
					deathplayer(M)
				else
					return

mob
	proc
		OrcAttack(mob/M)
			if(src.Stun==0)
				if(M.client)
					var/Orcdamage = rand(6,10) + src.Orcdamage - M.Def
					M.targeting=1
					M.Tgt= src
					var/image/I = image('Taarget.dmi',src)
					M.client.images += I
					Folego -= 1
					if(Folego < 0)
						Folego = 0
						sleep(8)
						Folego =1
						return
					if(Orcdamage <= 0)
						return
					if(Orcdamage >= 0)
						if(M.Deflect==1)
							Orcdamage=round(Orcdamage*3/4)
						M.HP -= Orcdamage
					if(M.HP <= 0)
						deathplayer(M)
					else
						return
				else
					var/Orcdamage = rand(10,14) + src.Orcdamage - M.Def
					Folego -= 1
					if(Folego < 0)
						Folego = 0
						sleep(8)
						Folego =1
						return
					if(Orcdamage <= 0)
						return
					if(Orcdamage >= 0)
						M.HP -= Orcdamage
					if(M.HP <= 0)
						TigreMorte()
						del(M)
					else
						return
mob
	proc
		GuerreiroOrcAttack(mob/M)
			if(src.Stun==0)
				var/GuerreiroOrcdamage = rand(8,12) + src.GuerreiroOrcdamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(GuerreiroOrcdamage <= 0)
					return
				if(GuerreiroOrcdamage >= 0)
					if(M.Deflect==1)
						GuerreiroOrcdamage=round(GuerreiroOrcdamage*3/4)
					M.HP -= GuerreiroOrcdamage
				if(M.HP <= 0)
					deathplayer(M)
				else
					return

mob
	proc
		OrcReiAttack(mob/M)
			if(src.Stun==0)
				var/OrcReidamage = rand(10,14) + src.OrcReidamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(OrcReidamage <= 0)
					return
				if(OrcReidamage >= 0)
					M.HP -= OrcReidamage
					if(M.Deflect==1)
						OrcReidamage=round(OrcReidamage*3/4)
				if(M.HP <= 0)
					deathplayer(M)
				else
					return

mob
	proc
		TigreAttack(mob/M)
			if(src.Stun==0)
				var/Tigredamage = rand(10,14) + src.Tigredamage - M.Def
				M.targeting=1
				M.Tgt= src
				var/image/I = image('Taarget.dmi',src)
				if(M.client)
					M.client.images += I
				Folego -= 1
				if(Folego < 0)
					Folego = 0
					sleep(8)
					Folego =1
					return
				if(Tigredamage <= 0)
					return
				if(Tigredamage >= 0)
					if(M.Deflect==1)
						Tigredamage=round(Tigredamage*3/4)
					M.HP -= Tigredamage
				if(M.HP <= 0 && M.client)
					deathplayer(M)
				else
					return



// ------------- Areas ----------------//

/* area/LoboDungeon
	Exit(mob/M)
		if(M.client)
			return 1
		if(M.ID==7)
			return 0
		else
			return 1 */
