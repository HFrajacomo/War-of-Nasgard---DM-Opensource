var/ExpDrop=0

mob
	proc
		deathplayer(mob/M)
			if(M.HP<=0)
				if(M.Revive==1)
					M.HP=round(M.MaxHP/3)
					M.overlays-='Oração.dmi'
					M.Revive=0
				else if(M.Revive==0)
					world <<output("<font color = white>[M] morreu!","Chat")
					M.Move(locate(151,541,1))
					M.HP = M.MaxHP
					M.carteira-= 1000000
					if(M.carteira < 0) M.carteira = 0
					M.Exp-= 1000000
					if(M.Exp < 0)M.Exp = 0
					M.MP = M.MaxMP
					usr.fome = 5000

mob
	proc
		PorcoMorte()
			var loot=rand(0,100)
			if(loot<=35)
				new /obj/BaconCrua(loc)
			new /obj/BaconCrua(loc)
			new /obj/BaconCrua(loc)
		CobraMorte()
			var loot=rand(0,100)
			if(loot<=20)
				new /obj/Pele_de_Cobra(loc)
			ExpDrop =10
			ExpShare()
			LevelCheck()

		AranhaMorte()
			var loot=rand(0,100)
			if (loot<=30)
				new /obj/Teia(loc)
			if(loot>25 && loot<=33)
				new /obj/Ferrao(loc)
			ExpDrop =20
			ExpShare()
			LevelCheck()

		LoboMorte()
			var loot=rand(0,100)
			if (loot<=35)
				new /obj/Garra_de_Lobo(loc)
			if(loot>25 && loot<=40)
				new /obj/Pele_de_Lobo(loc)
			ExpDrop =35
			ExpShare()
			LevelCheck()

		OrcMorte()
			var loot=rand(0,100)
			if (loot<=20)
				new /obj/Moedas_Sujas(loc)
			ExpDrop =70
			ExpShare()
			LevelCheck()

		OrcGuerreiroMorte()
			var loot=rand(0,100)
			if (loot<=30)
				new /obj/Moedas_Sujas(loc)
				new /obj/Moedas_Sujas(loc)
			ExpDrop=100
			ExpShare()
			LevelCheck()

		OrcReiMorte()
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			new /obj/Moedas_Sujas(loc)
			ExpDrop=1000
			ExpShare()
			usr.reiorc = 2
			LevelCheck()

		CabraMorte()
			var/loot=rand(0,100)
			if(loot<=50)
				new /obj/BifeCrua(loc)
			new /obj/BifeCrua(loc)
			if(loot<=25)
				new /obj/Lan(loc)

		TigreMorte()
			var/loot=rand(0,100)
			if(loot<=20)
				new /obj/Pele_de_Tigre(loc)
			ExpDrop=50
			ExpShare()
			LevelCheck()

		LobisomenMorte()
			ExpDrop=350
			ExpShare()
			LevelCheck()

