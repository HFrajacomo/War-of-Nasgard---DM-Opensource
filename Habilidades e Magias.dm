mob
	verb
		Atacar()
			set category="Luta"
			set hidden = 1
			usr.overlays -='AnimaçãoEspada.dmi'
			if(usr.wp == 3 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						if (prob(10))
							sleep(10)
							return
						else if (prob(10))
							var/damage
							if(usr.wp==1 || usr.wp==5)
								damage = rand (5,10) + (usr.str*2) - M.Def
							else if(usr.wp==4)
								damage = rand (5,10) + (usr.agi*2) - M.Def
							if(damage <0)
								return
							if(M.Deflect==1)
								usr.HP-=round(damage/6)
							M.HP -= damage
							usr.overlays +='AnimaçãoEspada.dmi'
							M.overlays += 'atacar.dmi'
							sleep(2)
							if(M==null)
								return
							M.overlays -= 'atacar.dmi'
							usr.overlays -='AnimaçãoEspada.dmi'
							DeathCheck(M)
							if(usr.overlays == 'AnimaçãoEspada.dmi')
								usr.overlays -='AnimaçãoEspada.dmi'
						else
							var/damage
							if(usr.wp==1 || usr.wp==5)
								damage = rand (5,10) + usr.str - M.Def
							else if(usr.wp==4)
								damage = rand (5,10) + usr.agi - M.Def
							if(damage <0)
								return
							if(M.Deflect==1)
								usr.HP-=round(damage/6)
							M.HP -= damage
							if(M==null)
								return
							M.overlays += 'atacar.dmi'
							usr.overlays +='AnimaçãoEspada.dmi'
							sleep(2)
							usr.overlays -='AnimaçãoEspada.dmi'
							if(M==null)
								return
							M.overlays -= 'atacar.dmi'
							DeathCheck(M)
mob
	verb
		Atirar_Flechas()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Suas flechas terminaram</b>","Chat")
					return
				var/mob/M = usr.Tgt
				if(M in ohearers(4))
					if (prob(15))
						usr <<output("<b>Você errou o ataque</b>","Chat")
						flecha-=1
						sleep(10)
						return
					else if (prob(10))
						var/damage = rand (5,10) + (usr.agi*2) - M.Def
						flecha-=1
						if(damage <0)
							return
						if(M.AntiRange==1)
							damage=round(damage*2/3)
						M.HP -= damage
						M.overlays += 'fleecha.dmi'
						usr.overlays+='AnimaçãoArco.dmi'
						sleep(3)
						DeathCheck(M)
						usr.overlays-='AnimaçãoArco.dmi'
						if(M==null)
							return
						M.overlays -= 'fleecha.dmi'
						if(usr.overlays == 'AnimaçãoArco.dmi')
							usr.overlays -='AnimaçãoArco.dmi'
						if(usr.overlays == 'AnimaçãoArco.dmi')
							usr.overlays -='AnimaçãoArco.dmi'


					else
						var/obj/flecha/K = new /obj/flecha
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(10)
						del(K)
						if(M==null)
							return
						var/damage = rand (5,10) + usr.agi - M.Def
						if(damage <0)
							return
						if(M.AntiRange==1)
							damage=round(damage*2/3)
						M.HP -= damage
						DeathCheck(M)
						if(M!=null)
							M.overlays += 'fleecha.dmi'
							usr.overlays+='AnimaçãoArco.dmi'
							sleep(3)
							usr.overlays-='AnimaçãoArco.dmi'
							if(M==null)
								return
							M.overlays -= 'fleecha.dmi'
						else
							usr.overlays+='AnimaçãoArco.dmi'
							sleep(3)
							usr.overlays-='AnimaçãoArco.dmi'

obj
	flecha
		icon = 'fleecha.dmi'

mob
	verb
		Flecha_Trovao()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha==0)
					usr<<output("<b>Suas flechas terminaram</b>","Chat")
					return
				if(usr.MP < 50)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				var/mob/M = usr.Tgt
				if(M in ohearers(4))
					var/obj/FlechaSagrada/K = new /obj/FlechaSagrada
					K.loc = usr.loc
					walk_towards(K,M.loc)
					sleep(7)
					del(K)
					usr.MP -= 50
					flecha-=1
					if(usr.MP < 0)
						usr.MP = 0
					if(M==null)
						return
					var/damage = rand (5,10) + usr.agi*2 + usr.Int - M.Def
					if(damage <0)
						return
					M.HP -= damage
					M.overlays += 'Flecha sagrada.dmi'
					M.overlays += 'chamasagrada.dmi'
					M.Frozen=1
					DeathCheck(M)
					sleep(10)
					if(M==null)
						return
					M.Frozen=0
					M.overlays -= 'Flecha sagrada.dmi'
					M.overlays -= 'chamasagrada.dmi'

obj
	FlechaSagrada
		icon = 'Flecha sagrada.dmi'

mob
	verb
		Esfera_Magica()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 2 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 2)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/mob/M = usr.Tgt
				if(M in ohearers(4))
					if (prob(20))
						usr <<output("<b>Você errou o ataque</b>","Chat")
						sleep(10)
						return
					else if (prob(10))
						var/damage = rand (5,10) + (usr.Int*2) - M.Def
						if(damage <0)
							return
						else
							if(M.AntiMagic==1)
								damage=round(damage*2/3)
							M.HP -= damage
							if(M==null)
								return
							M.overlays += 'boladeenergia.dmi'
							sleep(2)
							if(M==null)
								return
							M.overlays -= 'boladeenergia.dmi'
							DeathCheck(M)
							if(usr.overlays == 'AnimaçãoCajado.dmi')
								usr.overlays -='AnimaçãoCajado.dmi'
							if(usr.overlays == 'AnimaçãoCajado.dmi')
								usr.overlays -='AnimaçãoCajado.dmi'

					else
						var/obj/esferamagica/K = new /obj/esferamagica
						K.loc = usr.loc
						walk_towards(K,M.loc)
						sleep(5)
						del(K)
						usr.MP -= 2
						if(usr.MP < 0)
							usr.MP = 0
							return
						else
							if(M==null)
								return
							var/damage = rand (5,10) + usr.Int - M.Def
							if(damage <0)
								return
							if(M.AntiMagic==1)
								damage=round(damage*2/3)
							M.HP -= damage
							M.overlays += 'boladeenergia.dmi'
							sleep(2)
							if(M==null)
								return
							M.overlays -= 'boladeenergia.dmi'
							DeathCheck(M)


obj
	esferamagica
		icon = 'boladeenergia.dmi'

mob
	verb
		Bola_de_Fogo()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 2 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				var/mob/M = usr.Tgt
				if(usr.MP < 25)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(M in ohearers(4))
					var/obj/boladefogo/K = new /obj/boladefogo
					K.loc = usr.loc
					walk_towards(K,M.loc)
					sleep(4)
					del(K)
					usr.MP -= 25
					if(usr.MP < 0)
						usr.MP = 0
					if(M==null)
						return
					var/damage = usr.Int*2 - M.Def
					var/damagefogo = rand (1,3) + (usr.Int/5) - M.Def
					if(damage <0)
						return
					if(damagefogo <0)
						return
					if(M==null)
						return
					M.HP -= damage
					DeathCheck(M)
					if(M==null)
						return
					M.overlays += 'fogo.dmi'
					M.HP -= damagefogo
					sleep(5)
					if(M==null)
						return
					DeathCheck(M)
					if(M==null)
						return
					M.overlays -='fogo.dmi'
					sleep(5)
					if(M==null)
						return
					DeathCheck(M)
					if(M==null)
						return
					M.overlays += 'fogo.dmi'
					M.HP -= damagefogo
					if(M==null)
						return
					DeathCheck(M)
					if(M==null)
						return
					sleep(5)
					if(M==null)
						return
					M.overlays -='fogo.dmi'
					sleep(5)
					if(M==null)
						return
					M.overlays += 'fogo.dmi'
					M.HP -= damagefogo
					DeathCheck(M)
					if(M==null)
						return
					sleep(5)
					if(M==null)
						return
					M.overlays -= 'fogo.dmi'
					DeathCheck(M)

obj
	boladefogo
		icon = 'boladefogo.dmi'

mob
	verb
		Corte_Sangrento()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 25)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 25
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = rand (20,25) + usr.str + usr.Int - M.Def
						if(damage <0)
							return
						M.HP -= damage
						M.Frozen=1
						if(M==null)
							return
						M.overlays += 'cortemortal.dmi'
						M.overlays += 'sangramento.dmi'
						sleep(3)
						if(M==null)
							return
						M.overlays -= 'cortemortal.dmi'
						DeathCheck(M)
						sleep(22)
						if(M==null)
							return
						M.Frozen=0
						if(M.HP>0)
							M.overlays -= 'sangramento.dmi'

		Velocidade_Heroica()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			if(usr.MP < 50)
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP < 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP == 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			usr.Folego -= 1
			if(usr.Folego < 0)
				usr.Folego = 0
				return
			usr.overlays += 'velocidadeheroica.dmi'
			usr.MP -= 50
			usr.step_size = 16
			if(step_size > 16)step_size = 16
			sleep(10)
			usr.overlays -= 'velocidadeheroica.dmi'
			step_size = 4
			if(step_size < 4)step_size = 4

mob
	verb
		Estaca_de_Gelo()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 2 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 40)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/mob/M = usr.Tgt
				if(M in ohearers(4))
					usr.MP -= 40
					if(usr.MP < 0)
						usr.MP = 0
					var/damage = rand (20,50) + usr.Int*2 - M.Def
					if(damage <0)
						return
					if(M==null)
						return
					M.HP -= damage
					if(M==null)
						return
					M.overlays += 'rajadadegelo.dmi'
					M.Frozen=1
					M.Stun=1
					sleep(5)
					if(M==null)
						return
					M.overlays -= 'rajadadegelo.dmi'
					sleep(25)
					if(M==null)
						return
					M.Frozen=0
					M.Stun=0
					DeathCheck(M)

obj
	rajadadegelo
		icon = 'rajadadegelo.dmi'

mob
	verb
		Escudada()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 30)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 30
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = rand (5,15) + usr.str + usr.Int - M.Def
						if(damage <0)
							return
						M.HP -= damage
						if(M==null)
							return
						M.overlays += 'cortemortal.dmi'
						M.Stun=1
						M.Frozen=1
						if(M==null)
							return
						M.overlays -= 'cortemortal.dmi'
						DeathCheck(M)
						sleep(20)
						M.Stun=0
						M.Frozen=0
						if(M==null)
							return

mob
	verb
		Modo_Sentinela()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(usr.Sentinela==0)
				usr<<output("Você se concentra em defender os golpes","Chat")
				usr.Sentinela=1
				usr.overlays+='Sentinela.dmi'
				usr.Def=(usr.Def*1.5)
				while(usr.Sentinela==1)
					usr.MP-=usr.MaxMP/40
					usr.MP=round(usr.MP)
					if(usr.MP<0)
						usr.MP=0
					usr.Folego-=1
					usr.HP=round(usr.HP)
					sleep(6)
					if(usr.MP<1)
						return Modo_Sentinela()
			else
				usr.Sentinela=0
				usr.overlays-='Sentinela.dmi'
				usr.Def=(usr.Def/1.5)
				usr<<output("Você volta à sua posição de combate","Chat")

mob
	verb
		Ataque_Multiplo()
			set category="Luta"
			set hidden = 1
			set name="Ataque Múltiplo"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 35)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 35
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = rand (usr.agi/5,usr.agi/2) + usr.agi*3 - M.Def
						if(damage <0)
							return
						M.HP -= damage
						if(M==null)
							return
						M.overlays += 'AtaqueMultiplo.dmi'
						DeathCheck(M)
						sleep(3)
						if(M==null)
							return
						M.overlays -= 'AtaqueMultiplo.dmi'
						if(M==null)
							return



mob
	verb
		Invisibilidade()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(usr.MP < 50)
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP < 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP == 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			usr.Folego -= 1
			if(usr.Folego < 0)
				usr.Folego = 0
				return
			usr.MP -= 50
			if(usr.MP < 0)
				usr.MP = 0
			src.invisibility = 101
			usr<<output("Você se esconde nas sombras","Chat")
			usr.HP+=usr.MaxHP/50
			for(var/mob/M in world)
				if(M.Tgt==usr)
					M.Tgt=null
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			for(var/mob/M in world)
				if(M.Tgt==usr)
					M.Tgt=null
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			usr.HP+=usr.MaxHP/50
			sleep(10)
			for(var/mob/M in world)
				if(M.Tgt==usr)
					M.Tgt=null
			usr.invisibility = 0
			usr<<output("Você ressurge","Chat")



mob
	verb
		Roubar_MP()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 40)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 40
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = usr.agi - M.Def
						var/manadmg = round(usr.agi/2) - M.Def
						if(damage <0)
							return
						M.HP -= damage
						M.MP -= manadmg
						if(manadmg>100)
							usr.MP+=50
							usr<<output("<font color = blue>Você suga 50 de mana do inimigo</font color = blue>","Chat")
							if(usr.MP>usr.MaxMP)
								usr.MP=usr.MaxMP
						else
							usr.MP+=manadmg
							usr<<output("<font color = blue>Você suga [manadmg] de mana do inimigo</font color = blue>","Chat")
							if(usr.MP>usr.MaxMP)
								usr.MP=usr.MaxMP
						if(M==null)
							return
						M.overlays += 'RoubarMP.dmi'
						DeathCheck(M)
						sleep(3)
						if(M==null)
							return
						M.overlays -= 'RoubarMP.dmi'
						if(M==null)
							return


mob
	verb
		Roubar_HP()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 70)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 70
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = usr.agi*2 - M.Def
						if(damage <0)
							return
						M.HP -= damage
						if(damage>100)
							usr.HP+=50
							usr.UpdateLife()
							usr<<output("<font color = red>Você suga 50 de vida do inimigo</font color = red>","Chat")
							if(usr.HP>usr.MaxHP)
								usr.HP=usr.MaxHP
						else
							usr.HP+=round(damage/2)
							usr.UpdateLife()
							usr<<output("<font color = red>Você suga [round(damage/2)] de vida do inimigo</font color = red>","Chat")
							if(usr.HP>usr.MaxHP)
								usr.HP=usr.MaxHP
						if(M==null)
							return
						M.overlays += 'RoubarHP.dmi'
						DeathCheck(M)
						sleep(5)
						if(M==null)
							return
						M.overlays -= 'RoubarHP.dmi'
						if(M==null)
							return

mob
	verb
		Kunai_Venenosa()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 120)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(usr.dir==1)
					for(var/mob/M as mob in oview(5))
						if(M.y>=usr.y && M.x==usr.x)
							if(usr.Tgt==M)
								usr.MP -= 120
								if(usr.MP < 0)
									usr.MP = 0
								var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
								if(damage <0)
									return
								M.HP -= damage
								if(M==null)
									return
								var/obj/Kunai/K = new /obj/Kunai
								K.loc = usr.loc
								walk(K,NORTH,0,5)
								DeathCheck(M)
								sleep(3)
								del(K)
								if(M==null)
									return
								M.overlays -= 'Kunai Venenosa.dmi'
								VenenoEspada1(M)
								if(M==null)
									return

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(5))
						if(M.y<=usr.y && M.x==usr.x)
							if(usr.Tgt==M)
								usr.MP -= 120
								if(usr.MP < 0)
									usr.MP = 0
								var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
								if(damage <0)
									return
								M.HP -= damage
								if(M==null)
									return
								var/obj/Kunai/K = new /obj/Kunai
								K.loc = usr.loc
								walk(K,SOUTH,0,5)
								DeathCheck(M)
								sleep(3)
								del(K)
								if(M==null)
									return
								VenenoEspada1(M)
								if(M==null)
									return
				else if(usr.dir==4)
					for(var/mob/M as mob in oview(5))
						if(M.x>usr.x && M.y==usr.y)
							if(usr.Tgt==M)
								usr.MP -= 120
								if(usr.MP < 0)
									usr.MP = 0
								var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
								if(damage <0)
									return
								M.HP -= damage
								if(M==null)
									return
								var/obj/Kunai/K = new /obj/Kunai
								K.loc = usr.loc
								walk(K,EAST,0,5)
								DeathCheck(M)
								sleep(3)
								del(K)
								if(M==null)
									return
								VenenoEspada1(M)
								if(M==null)
									return
				else if(usr.dir==8)
					for(var/mob/M as mob in oview(5))
						if(M.x<usr.x && M.y==usr.y)
							if(usr.Tgt==M)
								usr.MP -= 120
								if(usr.MP < 0)
									usr.MP = 0
								var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
								if(damage <0)
									return
								M.HP -= damage
								if(M==null)
									return
								var/obj/Kunai/K = new /obj/Kunai
								K.loc = usr.loc
								walk(K,WEST,0,5)
								DeathCheck(M)
								sleep(3)
								del(K)
								if(M==null)
									return
								VenenoEspada1(M)
								if(M==null)
									return

obj/Kunai
	icon='Kunai Venenosa.dmi'


mob
	verb
		Roubar_MP_A()
			set category="Luta"
			set hidden = 1
			set name="Roubar MP em área"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 150)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 150
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(3))
					var/damage = usr.agi - M.Def
					var/manadmg = usr.agi - (M.Def + M.Int)
					if(damage <0)
						usr<<output("<b>Uma força superior bloqueia seu ataque</b>","Chat")
						return
					M.HP -= damage
					M.MP -= manadmg
					if(manadmg>100)
						usr.MP+=100
						usr<<output("<font color = blue>Você suga 100 de mana do [M]</font color = blue>","Chat")
						if(usr.MP>usr.MaxMP)
							usr.MP=usr.MaxMP
					else if(manadmg<0)
					else
						usr.MP+=manadmg
						usr<<output("<font color = blue>Você suga [manadmg] de mana do inimigo</font color = blue>","Chat")
						if(usr.MP>usr.MaxMP)
							usr.MP=usr.MaxMP
					M.overlays += 'RoubarMP.dmi'
					DeathCheck(M)
					sleep(3)
					M.overlays -= 'RoubarMP.dmi'


mob
	verb
		Roubar_HP_A()
			set category="Luta"
			set hidden = 1
			set name="Roubar HP em área"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 220)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 220
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(3))
					var/damage = usr.agi - M.Def
					if(damage <0)
						usr<<output("<b>Uma força superior bloqueia seu ataque</b>","Chat")
						return
					M.HP -= damage
					if(damage>100)
						usr.HP+=50
						usr.UpdateLife()
						usr<<output("<font color = red>Você suga 50 de vida do [M]</font color = red>","Chat")
						if(usr.HP>usr.MaxHP)
							usr.HP=usr.MaxHP
							usr.UpdateLife()
					else if(damage<0)
					else
						usr.HP+=round(damage/2)
						usr.UpdateLife()
						usr<<output("<font color = red>Você suga [round(damage/2)] de vida do inimigo</font color = red>","Chat")
						if(usr.HP>usr.MaxHP)
							usr.HP=usr.MaxHP
					M.overlays += 'RoubarHP.dmi'
					DeathCheck(M)
					sleep(3)
					M.overlays -= 'RoubarHP.dmi'



mob
	verb
		Executar()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 150)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						var/damage = usr.agi*5 - M.Def*2
						if(M.HP<=(M.MaxHP/5) || damage>M.HP)
							usr.MP -= 150
							// Animação
							M.HP=0
							view()<<output("<b><font color=red>[usr] executou [M]</b></font color=red>","Chat")
							DeathCheck(M)
						else
							usr.MP -= 150
							if(usr.MP < 0)
								usr.MP = 0
							if(damage <0)
								return
							M.HP -= damage
							if(M==null)
								return
											// ANimação			M.overlays += 'AtaqueMultiplo.dmi'
							DeathCheck(M)

// --------------- Assassin 2 -----------------------//




mob
	verb
		Emboscada()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 30)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					usr.MP-=30
					if(M.dir==1)
						usr.y-=2
					if(M.dir==2)
						usr.y+=2
					if(M.dir==4)
						usr.x-=2
					if(M.dir==8)
						usr.x+=2
					var/damage = usr.agi*3 - M.Def
					if(damage <0)
						return
					M.HP -= damage
					if(M==null)
						return
									// Animação
					DeathCheck(M)
					return

mob
	verb
		Corte_Venenoso()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 20)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 20
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = rand (10,20) + usr.agi*2 - M.Def
						if(damage <0)
							return
						M.HP -= damage
						if(M==null)
							return
						M.overlays += 'Corte Venenoso.dmi'
						DeathCheck(M)
						sleep(3)
						if(M==null)
							return
						M.overlays -= 'Corte Venenoso.dmi'
						VenenoEspada1(M)
						if(M==null)
							return
						return

mob
	verb
		Huuma()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 150)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/anim=0
				usr.MP -= 150
				if(usr.dir==1)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)>=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand (usr.agi*2,round(usr.agi*2.5)) + usr.agi*3 - M.Def
							if(damage <0)
								return
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					//Animação
					if(anim>0)
						var/obj/Huuma/K = new /obj/Huuma
						K.loc = usr.loc
						walk(K,NORTH,0,5)
						sleep(5)
						del(K)



				else if(usr.dir==2)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)<=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					if(anim>0)
						var/obj/Huuma/K = new /obj/Huuma
						K.loc = usr.loc
						walk(K,SOUTH,0,5)
						sleep(5)
						del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)>round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
							if(damage <0)
								return
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					if(anim>0)
						var/obj/Huuma/K = new /obj/Huuma
						K.loc = usr.loc
						walk(K,EAST,0,5)
						sleep(5)
						del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)<round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand (usr.agi*3/2,usr.agi*2) + usr.agi*3 - M.Def
							if(damage <0)
								return
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					if(anim>0)
						var/obj/Huuma/K = new /obj/Huuma
						K.loc = usr.loc
						walk(K,WEST,0,5)
						sleep(5)
						del(K)



obj/Huuma
	icon='Huuma.dmi'
	step_size=4


mob
	verb
		Paralisia_A()
			set category="Luta"
			set hidden = 1
			set name="Paralisia em área"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(2))
					var/c = rand(0,1)
					if(c==1)
						usr<<output("<b>[M] foi paralisado</b>","Chat")
						M.Stun=1
						M.Frozen=1
				for(var/mob/M in oview(2))
					sleep(40)
					M.Stun=0
					M.Frozen=0

mob
	verb
		Corte_Rapido()
			set category="Luta"
			set hidden = 1
			set name="Corte Rápido"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					usr.MP-=100
					if(M.dir==1)
						usr.y-=2
						usr.dir=1
					if(M.dir==2)
						usr.y+=2
						usr.dir=2
					if(M.dir==4)
						usr.x-=2
						usr.dir=4
					if(M.dir==8)
						usr.x+=2
						usr.dir=8
					var/damage = round(usr.agi*3.5) - M.Def
					if(damage <0)
						return
					M.HP -= damage
					if(prob(5) || damage>=M.HP)
						M.HP=0
						usr<<output("<b><font color=red> [M] foi executado </b></font color=red>","Chat")
					DeathCheck(M)
					M.overlays+='Corte Rápido.dmi'
					sleep(3)
					M.overlays-='Corte Rápido.dmi'
					return
mob
	verb
		Turbilhao_de_Laminas()
			set category="Luta"
			set hidden = 1
			set name="Turbilhão de Lâminas"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 250
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(1))
					var/damage = rand(usr.agi,usr.agi*3) + round(usr.agi*3.5) - M.Def
					if(damage <0)
						return
					M.HP -= damage
					usr.overlays+='Turbilhão de Lâminas.dmi'
					DeathCheck(M)
					sleep(5)
					usr.overlays-='Turbilhão de Lâminas.dmi'


//-----------------------Guerreiro 1 Cont--------------------------------------

mob
	verb
		Investida()
			set category="Luta"
			set hidden = 1
			if(usr.MP < 100)
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP < 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP == 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			usr.Folego -= 1
			if(usr.Folego < 0)
				usr.Folego = 0
				return
			usr.MP -= 100
			if(usr.MP < 0)
				usr.MP = 0
			for(var/mob/M in oview(1))
				if(M.npc!=null)
				else
					var/damage = rand(round(usr.Def,usr.Def*2)) + usr.str*2 - M.Def
					if(damage <0)
						return
					M.HP -= damage
					if(M.dir==1)
						M.y-=3
					if(M.dir==2)
						M.y+=3
					if(M.dir==4)
						M.x-=3
					if(M.dir==8)
						M.x+=3
					DeathCheck(M)
					return

obj/Corte_Lunar
	icon='Corte lunar.dmi'

mob
	verb
		Corte_Lunar()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 75)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 75
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(1))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str,usr.str*2) + usr.str - M.Def
							if(damage <0)
							else
								DeathCheck(M)
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Corte_Lunar/K = new /obj/Corte_Lunar
					K.x = usr.x-1
					K.y = usr.y
					K.dir = usr.dir
					sleep(6)
					del(K)


				else if(usr.dir==2)
					for(var/mob/M as mob in oview(1))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str,usr.str*2) + usr.str - M.Def
							if(damage <0)
							else
								DeathCheck(M)
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Corte_Lunar/K = new /obj/Corte_Lunar
					K.x = usr.x-1
					K.y = usr.y-2
					K.dir = usr.dir
					sleep(6)
					del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str,usr.str*2) + usr.str - M.Def
							if(damage <0)
							else
								DeathCheck(M)
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Corte_Lunar/K = new /obj/Corte_Lunar
					K.x = usr.x
					K.y = usr.y-1
					K.dir = usr.dir
					sleep(6)
					del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str,usr.str*2) + usr.str - M.Def
							if(damage <0)
							else
								DeathCheck(M)
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Corte_Lunar/K = new /obj/Corte_Lunar
					K.x = usr.x-2
					K.y = usr.y-1
					K.dir = usr.dir
					sleep(6)
					del(K)

mob
	verb
		Corte_Solar()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 75)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP-=75
				var/list/Fogo = newlist()
				for(var/mob/M as mob in oview(1))
					var/damage = rand(usr.str*3,usr.str*5) - M.Def
					if(damage <0)
						return
					M.HP -= damage
					M.overlays+='Corte Solar 2.dmi'
					DeathCheck(M)
					Fogo.Add(M)
				sleep(2)
				for(var/mob/O in Fogo)
					O.overlays+='Corte Solar.dmi'
					O.overlays-='Corte Solar 2.dmi'
				sleep(5)
				for(var/mob/N in Fogo)
					N.overlays-='Corte Solar.dmi'


mob
	verb
		Combo_Mortal()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 120)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					usr.MP-=120
					M.overlays+='atacar.dmi'
					var/damage = rand(usr.str,round(usr.str*3)) - M.Def
					M.HP-=damage
					if(damage <0)
						return
					if(M.HP==0)
						M.overlays-='atacar.dmi'
						DeathCheck(M)
						return
					DeathCheck(M)
					sleep(3)
					M.overlays-='atacar.dmi'
					sleep(2)
					M.overlays+='atacar.dmi'
					damage = rand(usr.str,round(usr.str*3)) - M.Def
					M.HP-=damage
					if(damage <0)
						return
					if(M.HP==0)
						M.overlays-='atacar.dmi'
						DeathCheck(M)
						return
					DeathCheck(M)
					sleep(3)
					M.overlays-='atacar.dmi'
					sleep(2)
					M.overlays+='atacar.dmi'
					damage = rand(usr.str,round(usr.str*3)) - M.Def
					M.HP-=damage
					if(damage <0)
						return
					if(M.HP==0)
						M.overlays-='atacar.dmi'
						DeathCheck(M)
						return
					DeathCheck(M)
					sleep(3)
					M.overlays-='atacar.dmi'
					return

mob
	verb
		Ultimo_Recurso()
			set category="Luta"
			set hidden = 1
			set name="Último Recurso"
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(UR==0)
					usr.MP -= 100
					if(usr.MP < 0)
						usr.MP = 0
					usr.UR=1
					usr<<output("<b>Você ativou seu poder interior</b>","Chat")
					usr.str+=20
					usr.overlays+='Último Recurso.dmi'
					sleep(200)
					usr.overlays-='Último Recurso.dmi'
					usr.str-=20
					usr.UR=0
				else
					usr<<output("Você já liberou sua energia interior","Chat")
					return


mob
	verb
		Espada_Bumerangue()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/anim=0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)>=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							if(usr.MP < 0)
								usr.MP = 0
							var/damage = rand(usr.str*2,usr.str*3) + usr.str*2 - M.Def*2
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 250
					//Animação
					if(anim>0)
						var/obj/EspadaB/K = new /obj/EspadaB
						K.loc = usr.loc
						walk(K,NORTH,0,5)
						sleep(4)
						walk(K,SOUTH,0,6)
						sleep(2)
						del(K)



				else if(usr.dir==2)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)<=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							if(usr.MP < 0)
								usr.MP = 0
							var/damage = rand (usr.str*3/2,usr.str*2) + usr.str*3 - M.Def
							if(damage <0)
								return
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 250
					if(anim>0)
						var/obj/EspadaB/K = new /obj/EspadaB
						K.loc = usr.loc
						walk(K,SOUTH,0,5)
						sleep(4)
						walk(K,NORTH,0,6)
						sleep(2)
						del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)>round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							if(usr.MP < 0)
								usr.MP = 0
							var/damage = rand (usr.str*3/2,usr.str*2) + usr.str*3 - M.Def
							if(damage <0)
								return
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 250
					if(anim>0)
						var/obj/EspadaB/K = new /obj/EspadaB
						K.loc = usr.loc
						walk(K,EAST,0,5)
						sleep(4)
						walk(K,WEST,0,6)
						sleep(2)
						del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)<round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							if(usr.MP < 0)
								usr.MP = 0
							var/damage = rand (usr.str*3/2,usr.str*2) + usr.str*3 - M.Def
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 250
					if(anim>0)
						var/obj/EspadaB/K = new /obj/EspadaB
						K.loc = usr.loc
						walk(K,WEST,0,5)
						sleep(4)
						walk(K,EAST,0,6)
						sleep(2)
						del(K)



obj/EspadaB
	icon='EspadaB.dmi'
	step_size=4



mob
	verb
		Impacto_Meteoro()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					usr.MP-=250
					var/damage = rand(usr.str*5,usr.str*8) - M.Def
					if(damage <0)
						return
					M.HP -= damage
					M.overlays+='Impacto Cismico.dmi'
					if(M.HP<=0)
						DeathCheck(M)
						return
					DeathCheck(M)
					sleep(4)
					M.overlays-='Impacto Cismico.dmi'
					return

// ----------------------------- Gladiador 1 ------------------------------------------

mob
	verb
		Investida5()
			set category="Luta"
			set hidden = 1
			set name="Investida Pesada"
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp == 2)
				return
			if(usr.MP < 30)
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP < 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP == 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			usr.Folego -= 1
			if(usr.Folego < 0)
				usr.Folego = 0
				return
			usr.overlays += 'velocidadeheroica.dmi'
			usr.MP -= 30
			usr.step_size = 14
			if(step_size > 14)step_size = 14
			sleep(15)
			usr.overlays -= 'velocidadeheroica.dmi'
			step_size = 4
			if(step_size < 4)step_size = 4


mob
	verb
		Investida_Atordoadora()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp == 2)
				return
			if(usr.MP < 60)
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP < 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			if(usr.MP == 0)
				usr.MP = 0
				usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
				return
			usr.Folego -= 1
			if(usr.Folego < 0)
				usr.Folego = 0
				return
			usr.overlays += 'velocidadeheroica.dmi'
			usr.MP -= 60
			usr.step_size = 14
			if(step_size > 14)step_size = 14
			sleep(10)
			usr.overlays -= 'velocidadeheroica.dmi'
			step_size = 4
			if(step_size < 4)step_size = 4
			for(var/mob/M in oview(1))
				if(M.Tgt==usr)
					M.Stun=1
					M.overlays+='Investida Atordoadora.dmi'
					usr<<output("[M] ficou atordoado","Chat")
					sleep(30)
					M.overlays-='Investida Atordoadora.dmi'
					M.Stun=0

mob
	verb
		Selo_de_Zeus()
			set category="Luta"
			set hidden = 1
			var/list/Zlist = newlist()
			if(usr.wp == 3 || usr.wp==1 || usr.wp==4 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/usr/M in view(2))
					if(M.Zeus==0)
						if(M.Tgt!=usr)
							Zlist.Add(M)
							usr<<output("[M] foi fortalecido por Zeus","Chat")
							M.overlays+='Selo de Zeus.dmi'
							M.Zeus=1
							M.str+=20
							M.agi+=20
				sleep(200)
				for(var/mob/N in Zlist)
					N.overlays-='Selo de Zeus.dmi'
					N.Zeus=0
					N.str-=20
					N.agi-=20

obj/Impacto_Cismico
	icon='Impacto Cismico.dmi'

mob
	verb
		Choque_Cismico()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 130)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 130
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Impacto_Cismico/K = new/obj/Impacto_Cismico
					K.x = usr.x
					K.y = usr.y+1
					sleep(8)
					del(K)

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Impacto_Cismico/K = new/obj/Impacto_Cismico
					K.x = usr.x
					K.y = usr.y-1
					sleep(8)
					del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(2))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Impacto_Cismico/K = new/obj/Impacto_Cismico
					K.x = usr.x+1
					K.y = usr.y
					sleep(8)
					del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							if(damage <0)
								return
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Impacto_Cismico/K = new/obj/Impacto_Cismico
					K.x = usr.x-1
					K.y = usr.y
					sleep(8)
					del(K)

mob
	verb
		Selo_de_Poseidon()
			set category="Luta"
			set hidden = 1
			var/list/Plist = newlist()
			if(usr.wp == 3 || usr.wp==1 || usr.wp==4 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/Enemy/M in oview(2))
					if(M.Poseidon==0)
						Plist.Add(M)
						usr<<output("[M] foi debilitado por Poseidon","Chat")
						M.overlays+='Selo de Poseidon.dmi'
						M.Poseidon=1
						M.Stun=1
						M.Frozen=1
				for(var/mob/usr/U in oview(2))
					if(U.Tgt==usr && U.Poseidon==0)
						U.overlays+='Selo de Poseidon.dmi'
						U.Poseidon=1
						Plist.Add(U)
						U.Frozen=1
						U.Stun=1
				sleep(80)
				for(var/mob/Enemy/N in Plist)
					N.overlays-='Selo de Poseidon.dmi'
					N.Poseidon=0
					Plist.Remove(N)
					N.Frozen=0
					N.Stun=0
				for(var/mob/N in Plist)
					N.overlays-='Selo de Poseidon.dmi'
					N.Poseidon=0
					Plist.Remove(N)
					N.Frozen=0
					N.Stun=0

mob
	verb
		Selo_de_Hades()
			set category="Luta"
			set hidden = 1
			var/list/Hlist = newlist()
			if(usr.wp == 3 || usr.wp==1 || usr.wp==4 || usr.wp==2)
				return
			else
				if(usr.MP < 150)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 150
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/usr/M in view(2))
					if(M.Hades==0 && M.Tgt!=usr)
						Hlist.Add(M)
						usr<<output("[M] foi Abençoado por Hades","Chat")
						M.overlays+='Selo de Hades.dmi'
						M.Hades=1
						M.Def+=20
				sleep(300)
				for(var/mob/N in Hlist)
					N.overlays-='Selo de Hades.dmi'
					N.Hades=0
					Hlist.Remove(N)
					N.Def-=20

mob
	verb
		Corte_Giratorio()
			set category="Luta"
			set name="Corte Giratório"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 70)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 70
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(2))
					var/damage = rand(usr.str*1,usr.str*2) + usr.str - M.Def
					if(damage <0)
						return
					else
						M.HP -= damage
						DeathCheck(M)


mob
	verb
		Onda_Eletrica()
			set category="Luta"
			set name="Onda Elétrica"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 130)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 130
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M as mob in oview(1))
					var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
					if(damage <0)
						return
					else
						M.HP -= damage
						DeathCheck(M)
				for(var/mob/usr/N in oview(1))
					if(N.Tgt==usr)
						var/damage = rand(usr.str*2,usr.str*3) + usr.str - N.Def
						if(damage <0)
							return
						else
							N.HP -= damage
							DeathCheck(N)

//					var/obj/Impacto_Cismico/K = new/obj/Impacto_Cismico
//					sleep(8)
//					del(K)


mob
	verb
		Oracao()
			set category="Luta"
			set name="Oração"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 200)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 200
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.Revive==0)
					usr.Revive=1
					usr.overlays+='Oração.dmi'
					usr<<output("Seus pedidos foram aceitos pelos anjos","Chat")
					sleep(200)
					usr.Revive=0
					usr.overlays-='Oração.dmi'
					usr<<output("O fim do seu pedido chegou","Chat")


obj/Punho_Cronos
	icon='Punho de Cronos.dmi'


mob
	verb
		Punho_de_Cronos()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 200)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 200
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(4))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*3,usr.str*4) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Punho_Cronos/K = new/obj/Punho_Cronos
					K.loc = usr.loc
					walk(K,NORTH,0,2)
					sleep(10)
					del(K)

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(4))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*3,usr.str*4) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Punho_Cronos/K = new/obj/Punho_Cronos
					K.loc = usr.loc
					walk(K,SOUTH,0,2)
					sleep(10)
					del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(2))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*3,usr.str*4) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Punho_Cronos/K = new/obj/Punho_Cronos
					K.loc = usr.loc
					walk(K,EAST,0,2)
					sleep(10)
					del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*3,usr.str*4) + usr.str - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Punho_Cronos/K = new/obj/Punho_Cronos
					K.loc = usr.loc
					walk(K,WEST,0,2)
					sleep(10)
					del(K)



mob
	verb
		Provocar()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 40)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 40
				if(usr.MP < 0)
					usr.MP = 0
				usr.overlays+='Provocar.dmi'
				view()<<output("[usr] provoca os inimigos","Chat")
				for(var/mob/Enemy/M in oview(3))
					M.Tgt=usr
				sleep(8)
				usr.overlays-='Provocar.dmi'

mob
	verb
		Furia_em_Massa()
			set category="Luta"
			set hidden = 1
			set name="Fúria em Massa"
			if(usr.wp == 3 || usr.wp==1 || usr.wp==4 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				var/list/Palist = newlist()
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				usr.overlays+='Fúria em massa.dmi'
				for(var/mob/M in oview(2))
					var/c = rand(0,3)
					if(c<=2)
						Palist.Add(M)
						usr<<output("<b>[M] foi paralisado</b>","Chat")
						M.Stun=1
						M.Frozen=1
				sleep(30)
				usr.overlays-='Fúria em massa.dmi'
				for(var/mob/N in Palist)
					N.Stun=0
					N.Frozen=0


mob
	verb
		Furia_de_Poseidon()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 60)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 60
				if(usr.MP < 0)
					usr.MP = 0
				var/list/cu = newlist()
				if(usr.dir==1)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*1,usr.str*2) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Poseidon.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(10)
					for(var/mob/N in cu)
						N.overlays-='Furia de Poseidon.dmi'
						N.Stun=0

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*1,usr.str*2) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Poseidon.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Poseidon.dmi'
						N.Stun=0

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(2))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*1,usr.str*2) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Poseidon.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Poseidon.dmi'
						N.Stun=0

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*1,usr.str*2) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Poseidon.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Poseidon.dmi'
						N.Stun=0



mob
	verb
		Furia_de_Zeus()
			set category="Luta"
			set name="Fúria de Zeus"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				var/list/cu = newlist()
				if(usr.dir==1)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Zeus.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(10)
					for(var/mob/N in cu)
						N.overlays-='Furia de Zeus.dmi'
						N.Stun=0

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Zeus.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Zeus.dmi'
						N.Stun=0

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(2))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Zeus.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Zeus.dmi'
						N.Stun=0

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.str*2,usr.str*3) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Zeus.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Zeus.dmi'
						N.Stun=0


mob
	verb
		Furia_de_Hades()
			set category="Luta"
			set name="Fúria de Hades"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 100
				if(usr.MP < 0)
					usr.MP = 0
				var/list/cu = newlist()
				if(usr.dir==1)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = round(rand(usr.str*2.5,usr.str*4)) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Hades.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Hades.dmi'
						N.Stun=0

				else if(usr.dir==2)
					for(var/mob/M as mob in oview(2))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = round(rand(usr.str*2.5,usr.str*4)) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Hades.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Hades.dmi'
						N.Stun=0

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(2))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = round(rand(usr.str*2.5,usr.str*4)) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Hades.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Hades.dmi'
						N.Stun=0

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(1))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = round(rand(usr.str*2.5,usr.str*4)) + usr.str - M.Def
							cu.Add(M)
							M.overlays+='Furia de Hades.dmi'
							if(damage <0)
							else
								M.HP -= damage
								M.Stun=1
								DeathCheck(M)
					sleep(5)
					for(var/mob/N in cu)
						N.overlays-='Furia de Hades.dmi'
						N.Stun=0



mob
	verb
		Sacrificio()
			set category="Luta"
			set name="Sacrifício"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 200)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 200
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.Sacrificio==0)
					usr.Sacrificio=1
					usr.str+=50
					usr.Def-=30
					//		usr.overlays+='Oração.dmi'
					usr<<output("Modo Sacrifício Ativado","Chat")
					sleep(200)
					usr.Sacrificio=0
					usr.str-=50
					usr.Def+=30
			//		usr.overlays-='Oração.dmi'
					usr<<output("O fim do seu pedido chegou","Chat")


//--------------------------Healer----------------------------------------//

mob
	verb
		Cura()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.HP==usr.MaxHP)
					usr<<output("Sua vida já está no máximo","Chat")
					return
				if(usr.MP < 60)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP-=60
				var/a=rand(50,100)
				usr.HP+=a
				usr.UpdateLife()
				if(usr.HP>usr.MaxHP)
					usr.HP = usr.MaxHP
					usr.UpdateLife()
				usr<<output("<font color=red>Você se curou [a] pontos de vida</font color=red>","Chat")
				usr.overlays+='Cura.dmi'
				sleep(4)
				usr.overlays-='Cura.dmi'


mob
	verb
		Semente_da_Vida()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 80)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					if(usr.Tgt==M)
						usr.MP -= 80
						if(usr.MP < 0)
							usr.MP = 0
						var/damage = rand (5,15) + round(usr.Int*1.5) - (round(M.Def/2) + M.Int*2)
						if(damage <0)
							return
						M.HP -= damage
						var/e=round((damage/3)*2) + rand(5,10)
						usr.HP+=e
						usr.UpdateLife()
						usr<<output("<font color=red> Você sugou [e] de vida</font color=red>","Chat")
						if(usr.HP>usr.MaxHP)
							usr.HP = usr.MaxHP
							usr.UpdateLife()
						M.overlays += 'Semente da Vida.dmi'
						sleep(6)
						M.overlays -= 'Semente da Vida.dmi'
						DeathCheck(M)
						return


mob
	verb
		Raios()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 5 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 120)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 120
				if(usr.MP < 0)
					usr.MP = 0
				usr.overlays+='Raios.dmi'
				view()<<output("[usr] faz trovejar e paralisa os inimigos em volta","Chat")
				var/list/Tomou = newlist()
				for(var/mob/Enemy/M in oview(6))
					Tomou.Add(M)
					M.Stun=1
					M.Frozen=1
				for(var/mob/usr/N in oview(6))
					if(N.Tgt==usr)
						Tomou.Add(N)
						N.Stun=1
						N.Frozen=1
				sleep(4)
				usr.overlays-='Raios.dmi'
				sleep(36)
				for(var/mob/A in Tomou)
					Tomou.Remove(A)
					A.Stun=0
					A.Frozen=0


mob
	verb
		Grande_Cura()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP-=250
				var/list/Cura = newlist()
				for(var/mob/usr/M in view(3))
					if(M.Tgt!=usr)
						Cura.Add(M)
						var/a=rand(400,800)
						M.HP+=a
						M.UpdateLife()
						if(M.HP>M.MaxHP)
							M.HP = M.MaxHP
						M.overlays+='Cura.dmi'
						usr<<output("<font color=red>Você curou [a] pontos de vida de [M]</font color=red>","Chat")
						if(M==usr)
						else
							M<<output("<font color=red>[usr] te curou [a] pontos de vida</font color=red>","Chat")
				sleep(4)
				for(var/mob/U in Cura)
					usr.overlays-='Cura.dmi'



mob
	verb
		Impacto_de_Cura()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP-=250
				var/list/Hit = newlist()
				var/list/Cura = newlist()
				for(var/mob/usr/M in view(2))
					if(M.Tgt!=usr)
						Cura.Add(M)
						var/a=rand(200,500)
						M.HP+=a
						M.UpdateLife()
						if(M.HP>M.MaxHP)
							M.HP = M.MaxHP
						M.overlays+='Cura.dmi'
						usr<<output("<font color=red>Você curou [a] pontos de vida de [M]</font color=red>","Chat")
						if(M==usr)
						else
							M<<output("<font color=red>[usr] te curou [a] pontos de vida</font color=red>","Chat")
				for(var/mob/Enemy/N in oview(2))
					Hit.Add(N)
					N.Stun=1
					N.Frozen=1
					usr<<output("[N] foi paralisado","Chat")
				for(var/mob/usr/T in oview(2))
					if(T.Tgt==usr)
						Hit.Add(T)
						T.Stun=1
						T.Frozen=1
						usr<<output("[T] foi paralisado","Chat")
				sleep(4)
				for(var/mob/U in Cura)
					usr.overlays-='Cura.dmi'
				sleep(26)
				for(var/mob/Y in Hit)
					Y.Stun=0
					Y.Frozen=0


mob
	verb
		Explosao_de_Mana()
			set category="Luta"
			set name="Explosão de Mana"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 300)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(usr.dir==1)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)>=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.Int*2,usr.Int*3) + usr.Int*2 - M.Def*2
							if(damage <0)
								return
							M.HP -= damage
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 300
					//Animação
					var/obj/RaioMana/K = new /obj/RaioMana
					K.loc = usr.loc
					walk(K,NORTH,0,5)
					sleep(3)
					del(K)



				else if(usr.dir==2)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)<=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.Int*2,usr.Int*3) + usr.Int*2 - M.Def*2
							if(damage <0)
								return
							M.HP -= damage
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 300
					//Animação
					var/obj/RaioMana/K = new /obj/RaioMana
					K.loc = usr.loc
					walk(K,SOUTH,0,5)
					sleep(3)
					del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)>round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.Int*2,usr.Int*3) + usr.Int*2 - M.Def*2
							if(damage <0)
								return
							M.HP -= damage
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 300
					//Animação
					var/obj/RaioMana/K = new /obj/RaioMana
					K.loc = usr.loc
					walk(K,EAST,0,5)
					sleep(3)
					del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)<round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.Int*2,usr.Int*3) + usr.Int*2 - M.Def*2
							if(damage <0)
								return
							M.HP -= damage
							if(M.HP<=0)
								DeathCheck(M)
					usr.MP -= 300
					//Animação
					var/obj/RaioMana/K = new /obj/RaioMana
					K.loc = usr.loc
					walk(K,WEST,0,5)
					sleep(3)
					del(K)



obj/RaioMana
	icon='RaioMana.dmi'
	step_size=4


mob
	verb
		Ressurreicao()
			set category="Luta"
			set name="Ressurreição"
			set hidden = 1
			if(usr.wp == 5 || usr.wp==4 || usr.wp==1 || usr.wp==2)
				return
			else
				if(usr.MP < 400)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 400
				if(usr.MP < 0)
					usr.MP = 0
				var/list/Res = newlist()
				for(var/mob/usr/M in view(2))
					if(M.Tgt!=usr || M==usr)
						if(M.Revive==0)
							M.Revive=1
							M.overlays+='Oração.dmi'
							M<<output("Foi dado o pedido de ressurreição à você","Chat")

				sleep(200)
				for(var/mob/usr/L in Res)
					L.Revive=0
					L.overlays-='Oração.dmi'
					L<<output("O fim do seu pedido chegou","Chat")

mob
	verb
		Arremesso_de_Terra()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 60)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 60
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/M in oview(1))
					if(M.npc!=null)
					else
						var/damage = rand(round(usr.Int,usr.Int*1.5)) - M.Def
						if(damage <0)
							return
						M.HP -= damage
						M.overlays+='Arremesso de Terra.dmi'
						if(M.dir==1)
							M.y-=2
						if(M.dir==2)
							M.y+=2
						if(M.dir==4)
							M.x-=2
						if(M.dir==8)
							M.x+=2
						DeathCheck(M)
						sleep(6)
						M.overlays-='Arremesso de Terra.dmi'
						return



obj/Tufao
	icon='Tufao.dmi'

mob
	verb
		Tufao()
			set category="Luta"
			set name="Tufão"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 230)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 230
				if(usr.MP < 0)
					usr.MP = 0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(4))
						if(round(M.y)>=round(usr.y+1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.Int,usr.Int*4) + usr.Int - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Tufao/K = new /obj/Tufao
					K.x = usr.x-1
					K.y = usr.y+1
					K.dir = usr.dir
					sleep(6)
					del(K)


				else if(usr.dir==2)
					for(var/mob/M as mob in oview(4))
						if(round(M.y)<=round(usr.y-1) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.Int,usr.Int*4) + usr.Int - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Tufao/K = new /obj/Tufao
					K.x = usr.x-1
					K.y = usr.y-3
					K.dir = usr.dir
					sleep(6)
					del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(4))
						if(round(M.x)>round(usr.x+1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.Int,usr.Int*4) + usr.Int - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Tufao/K = new /obj/Tufao
					K.x = usr.x+1
					K.y = usr.y-1
					K.dir = usr.dir
					sleep(6)
					del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(4))
						if(round(M.x)<round(usr.x-1) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand(usr.Int,usr.Int*4) + usr.Int - M.Def
							if(damage <0)
							else
								M.HP -= damage
								if(M.HP<=0)
									DeathCheck(M)
					var/obj/Tufao/K = new /obj/Tufao
					K.x = usr.x-3
					K.y = usr.y-1
					K.dir = usr.dir
					sleep(6)
					del(K)


mob
	verb
		Tempestade()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 230)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/list/Cu=newlist()
				usr.MP -= 230
				view()<<output("Uma tempestade envolve os céus","Chat")
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/Enemy/M as mob in oview())
					var/damage = round(rand(usr.Int,usr.Int*3))+ usr.Int - M.Def
					if(damage <0)
						break
					M.HP -= damage
					M.overlays += 'Tempestade.dmi'
					M.Stun=1
					M.Frozen=1
					Cu.Add(M)
					DeathCheck(M)
				for(var/mob/M in oview())
					if(M.Tgt==usr)
						var/damage = round(rand(usr.Int,usr.Int*3))+ usr.Int - M.Def
						if(damage <0)
							break
						M.HP -= damage
						M.overlays += 'Tempestade.dmi'
						M.Stun=1
						M.Frozen=1
						Cu.Add(M)
						DeathCheck(M)
				PiscaAmarelo()
				for(var/mob/M in Cu)
					M.Stun=0
					M.Frozen=0
					M.overlays-='Tempestade.dmi'


obj/Furia_da_Natureza
	icon='Fúria da Natureza.dmi'

mob
	verb
		Furia_da_Natureza()
			set category="Luta"
			set name="Fúria da Natureza"
			set hidden = 1
			if(usr.wp == 4 || usr.wp==1 || usr.wp==5 || usr.wp==2)
				return
			else
				if(usr.MP < 300)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 300
				var/anim=0
				if(usr.dir==1)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)>=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand (usr.Int*3,usr.Int*6) + usr.Int*3 - M.Def
							if(damage <0)
								break
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					//Animação
					if(anim>0)
						var/obj/Furia_da_Natureza/K = new /obj/Furia_da_Natureza
						K.loc = usr.loc
						walk(K,NORTH,0,5)
						sleep(5)
						del(K)



				else if(usr.dir==2)
					for(var/mob/M as mob in oview(5))
						if(round(M.y)<=round(usr.y) && round(M.x)==round(usr.x) || round(M.x-1)==round(usr.x) || round(M.x+1)==round(usr.x))
							var/damage = rand(usr.Int*3,usr.Int*6) + usr.Int*3 - M.Def
							if(damage <0)
								break
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					//Animação
					if(anim>0)
						var/obj/Furia_da_Natureza/K = new /obj/Furia_da_Natureza
						K.loc = usr.loc
						walk(K,SOUTH,0,5)
						sleep(5)
						del(K)

				else if(usr.dir==4)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)>round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand (usr.Int*3,usr.Int*6) + usr.Int*3 - M.Def
							if(damage <0)
								break
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					//Animação
					if(anim>0)
						var/obj/Furia_da_Natureza/K = new /obj/Furia_da_Natureza
						K.loc = usr.loc
						walk(K,EAST,0,5)
						sleep(5)
						del(K)

				else if(usr.dir==8)
					for(var/mob/M as mob in oview(5))
						if(round(M.x)<round(usr.x) && round(M.y)==round(usr.y) || round(M.y-1)==round(usr.y) || round(M.y+1)==round(usr.y))
							var/damage = rand (usr.Int*3,usr.Int*6) + usr.Int*3 - M.Def
							if(damage <0)
								break
							M.HP -= damage
							anim++
							if(M.HP<=0)
								DeathCheck(M)
					//Animação
					if(anim>0)
						var/obj/Furia_da_Natureza/K = new /obj/Furia_da_Natureza
						K.loc = usr.loc
						walk(K,WEST,0,5)
						sleep(5)
						del(K)


mob
	verb
		Chamado_do_Tumulo()
			set category="Luta"
			set hidden = 1
			set name="Chamada do Túmulo"
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 300)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/list/Cu=newlist()
				usr.MP -= 300
				view()<<output("A aura dos mortos se restaura","Chat")
				if(usr.MP < 0)
					usr.MP = 0
				var/danogeral=0
				for(var/mob/Enemy/M as mob in oview())
					var/damage = round(rand(usr.Int*2,usr.Int*4))+ usr.Int - M.Def
					danogeral=danogeral + round(damage/8)
					if(damage <0)
						break
					M.overlays+='Chamada do Túmulo.dmi'
					M.HP -= damage
					Cu.Add(M)
					DeathCheck(M)
				for(var/mob/M in oview())
					if(M.Tgt==usr)
						var/damage = round(rand(usr.Int*2,usr.Int*4))+ usr.Int - M.Def
						danogeral=danogeral + round(damage/8)
						if(damage <0)
							break
						M.HP -= damage
						M.overlays+='Chamada do Túmulo.dmi'
						Cu.Add(M)
						DeathCheck(M)
				usr<<output("<font color=red>O poder dos mortos lhe restaura [danogeral] de vida</font color=red>","Chat")
				usr.HP+=danogeral
				usr.UpdateLife()
				if(usr.HP>usr.MaxHP)
					usr.HP = usr.MaxHP
				PiscaVinho()
				for(var/mob/M in Cu)
					M.overlays-='Chamada do Túmulo.dmi'

mob
	verb
		Chuva_de_Fogo()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 2)
				return
			else
				if(usr.MP < 300)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/list/Cu=newlist()
				usr.MP -= 300
				view()<<output("Chamas caem do céu","Chat")
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/Enemy/M as mob in oview())
					var/damage = round(rand(usr.Int*3,usr.Int*6))+ usr.Int - M.Def
					if(damage <0)
						break
					M.HP -= damage
					Cu.Add(M)
					DeathCheck(M)
				for(var/mob/M in oview())
					if(M.Tgt==usr)
						var/damage = round(rand(usr.Int*3,usr.Int*6))+ usr.Int - M.Def
						if(damage <0)
							break
						M.HP -= damage
						Cu.Add(M)
						DeathCheck(M)
				PiscaVermelho()



//------------------------------- Arqueiro --------------------------------//

mob
	verb
		Rajada()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 35)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				for(var/mob/M in oview(4))
					if(usr.MP>=35)
						usr.MP-=35
					else if(usr.MP<35)
						usr<<output("<font color=blue>Sua mana acabou!</font color=blue>","Chat")
						return
					if(prob(15))
						usr<<output("Você errou a flecha","Chat")
						break
					var/damage = rand(usr.agi*2,usr.agi*3) - M.Def
					M.HP -= damage
					var/obj/flecha/K = new /obj/flecha
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(5)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1

obj/Flecha_D
	icon='Flecha de Drenagem.dmi'

mob
	verb
		Flecha_de_Drenagem()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 50)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = rand(usr.agi,usr.agi*3) - M.Def
						M.HP -= damage
						usr.HP+=round(damage/4)
						usr.UpdateLife()
						if(usr.HP>usr.MaxHP)
							usr.HP=usr.MaxHP
						var/obj/Flecha_D/K = new /obj/Flecha_D
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(3)
						del(K)
						usr<<output("<font color=red>Você recuperou [round(damage/4)] de vida</font color=red>","Chat")
						if(damage <0)
							return
						M.HP -= damage
						DeathCheck(M)
						flecha-=1
						usr.MP-=50
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi,usr.agi*3) - M.Def
					M.HP -= damage
					usr.HP+=round(damage/4)
					usr.UpdateLife()
					if(usr.HP>usr.MaxHP)
						usr.HP=usr.MaxHP
					var/obj/Flecha_D/K = new /obj/Flecha_D
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(3)
					del(K)
					usr<<output("<font color=red>Você recuperou [round(damage/4)] de vida</font color=red>","Chat")
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=50
					return
				else
					usr<<output("Você está muito distante","Chat")
					return

mob
	verb
		Encravar()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==4)
				return
			if(!usr.targeting)
				usr<<output("<b> Você precisa marcar algo </b>","Chat")
				return
			else
				if(usr.MP < 80)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				for(var/mob/M as mob in oview(1))
					usr.MP-=80
					if(M.dir==1)
						usr.y-=2
					if(M.dir==2)
						usr.y+=2
					if(M.dir==4)
						usr.x-=2
					if(M.dir==8)
						usr.x+=2
					var/damage = usr.agi*3 - M.Def
					if(damage <0)
						return
					M.HP -= damage
					if(M==null)
						return
					M.overlays+='atacar.dmi'
					DeathCheck(M)
					sleep(4)
					M.overlays-='atacar.dmi'
					return

obj/Tiro_P
	icon='Tiro Perfurante.dmi'

mob
	verb
		Tiro_Perfurante()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 130)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = rand(usr.agi*2,usr.agi*5)
						M.HP -= damage
						var/obj/Tiro_P/K = new /obj/Tiro_P
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(2)
						del(K)
						if(damage <0)
							return
						M.HP -= damage
						DeathCheck(M)
						flecha-=1
						usr.MP-=130
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi*2,usr.agi*5)
					M.HP -= damage
					var/obj/Tiro_P/K = new /obj/Tiro_P
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=130
					return
				else
					usr<<output("Você está muito distante","Chat")
					return


mob
	verb
		Salto()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==1 || usr.wp==5 || usr.wp==4)
				return
			else
				if(usr.MP < 60)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				usr.MP -= 60
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/Enemy/M in oview(1))
					var/c = rand(0,1)
					if(c==1)
						usr<<output("<b>[M] foi paralisado</b>","Chat")
						M.Stun=1
						M.Frozen=1
				if(usr.dir==1)
					usr.y-=2
				if(usr.dir==2)
					usr.y+=2
				if(usr.dir==4)
					usr.x-=2
				if(usr.dir==8)
					usr.x+=2
				for(var/mob/M in oview(2))
					sleep(20)
					M.Stun=0
					M.Frozen=0


obj/Flecha_F
	icon='Flecha Final.dmi'

mob
	verb
		Flecha_Final()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 200)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = rand(usr.agi*4,usr.agi*7)
						M.HP -= damage
						var/obj/Flecha_F/K = new /obj/Flecha_F
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(2)
						del(K)
						if(damage <0)
							return
						M.HP -= damage
						DeathCheck(M)
						flecha-=1
						usr.MP-=200
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi*4,usr.agi*7)
					M.HP -= damage
					var/obj/Flecha_F/K = new /obj/Flecha_F
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=200
					return
				else
					usr<<output("Você está muito distante","Chat")
					return

obj/Flecha_E
	icon='Flecha Envenenada.dmi'

mob
	verb
		Flecha_Envenenada()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 40)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 40
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = round(rand(usr.agi*1.8,usr.agi*2.3))
						M.HP -= damage
						var/obj/Flecha_E/K = new /obj/Flecha_E
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(2)
						del(K)
						if(damage <0)
							return
						M.HP -= damage
						M.overlays+='Corte Venenoso2.dmi'
						DeathCheck(M)
						flecha-=1
						usr.MP-=40
						if(M==null)
							return
						VenenoEspada1(M)
						M.overlays-='Corte Venenoso2.dmi'
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = round(rand(usr.agi*1.8,usr.agi*2.3))
					M.HP -= damage
					var/obj/Flecha_E/K = new /obj/Flecha_E
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					M.overlays+='Corte Venenoso2.dmi'
					DeathCheck(M)
					flecha-=1
					usr.MP-=40
					if(M==null)
						return
					VenenoEspada1(M)
					M.overlays-='Corte Venenoso2.dmi'
					return
				else
					usr<<output("Você está muito distante","Chat")
					return


obj/Flecha_DF
	icon='Flecha de Fogo.dmi'

mob
	verb
		Flecha_de_Fogo()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = rand(usr.agi*2,usr.agi*4) + usr.agi - M.Def
						M.HP -= damage
						var/obj/Flecha_DF/K = new /obj/Flecha_DF
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(2)
						del(K)
						if(damage <0)
							return
						M.HP -= damage
						DeathCheck(M)
						flecha-=1
						usr.MP-=100
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi*2,usr.agi*4) + usr.agi - M.Def
					M.HP -= damage
					var/obj/Flecha_DF/K = new /obj/Flecha_DF
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=100
					return
				else
					usr<<output("Você está muito distante","Chat")
					return

obj/Flecha_DG
	icon='Flecha de Gelo.dmi'

mob
	verb
		Flecha_de_Gelo()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 100)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					for(var/mob/Enemy/M in oview(5))
						var/damage = rand(usr.agi*2,usr.agi*3) + usr.agi - M.Def
						M.HP -= damage
						var/obj/Flecha_DG/K = new /obj/Flecha_DG
						K.loc = usr.loc
						flecha-=1
						walk_towards(K,M.loc)
						sleep(2)
						del(K)
						if(damage <0)
							return
						M.HP -= damage
						DeathCheck(M)
						flecha-=1
						usr.MP-=100
						M.Stun=1
						M.Frozen=1
						sleep(20)
						M.Stun=0
						M.Frozen=0
						return
				else if(usr.Tgt in oview(5))
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi*2,usr.agi*3) + usr.agi - M.Def
					M.HP -= damage
					var/obj/Flecha_DG/K = new /obj/Flecha_DG
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=100
					M.Stun=1
					M.Frozen=1
					sleep(20)
					M.Stun=0
					M.Frozen=0
					return
				else
					usr<<output("Você está muito distante","Chat")
					return

obj/Flecha_Divina
	icon='Flecha Divina.dmi'

mob
	verb
		Flecha_Divina()
			set category = "Luta"
			set hidden = 1
			if(usr.wp == 3 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 1)
				return
			else
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				if(flecha<1)
					usr<<output("<b>Você não tem flechas suficientes</b>","Chat")
					return
				if(usr.MP < 140)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP < 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.MP == 0)
					usr.MP = 0
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					return
				if(usr.Tgt==null)
					usr<<output("Você tem que marcar um alvo","Chat")
					return
				else if(usr.Tgt!=usr)
					var/mob/M = usr.Tgt
					var/damage = rand(usr.agi*3,usr.agi*4) + usr.agi - M.Def
					M.HP -= damage
					var/obj/Flecha_Divina/K = new /obj/Flecha_Divina
					K.loc = usr.loc
					flecha-=1
					walk_towards(K,M.loc,0,20)
					sleep(2)
					del(K)
					if(damage <0)
						return
					M.HP -= damage
					DeathCheck(M)
					flecha-=1
					usr.MP-=140
					return
				else
					return


mob
	verb
		Chuva_de_Flechas()
			set category="Luta"
			set hidden = 1
			if(usr.wp == 1 || usr.wp==4 || usr.wp==5)
				return
			if(usr.wp == 3)
				return
			else
				if(usr.MP < 250)
					usr <<output("<b>Você está sem Mana para usar esta magia!</b>","Chat")
					if(usr.MP < 0)
						usr.MP = 0
					return
				usr.Folego -= 1
				if(usr.Folego < 0)
					usr.Folego = 0
					return
				var/list/Cu=newlist()
				usr.MP -= 250
				view()<<output("Uma saraivada de flechas caem do céu","Chat")
				if(usr.MP < 0)
					usr.MP = 0
				for(var/mob/Enemy/M as mob in oview())
					var/damage = round(rand(usr.agi*3,usr.agi*6))+ usr.agi - M.Def
					if(damage <0)
						break
					M.HP -= damage
					Cu.Add(M)
					DeathCheck(M)
				for(var/mob/M in oview())
					if(M.Tgt==usr)
						var/damage = round(rand(usr.agi*3,usr.agi*6))+ usr.agi - M.Def
						if(damage <0)
							break
						M.HP -= damage
						Cu.Add(M)
						DeathCheck(M)
				PiscaBranco()





















mob/proc/DeathCheck(mob/M)
	M.UpdateLife()
	if(M==null)
		return
	if(M.HP <= 0)
		if(M.ID == 1)
			del(M)
			CobraMorte()
			return
		if(M.ID == 2)
			del(M)
			AranhaMorte()
			return
		if(M.ID == 4)
			del(M)
			OrcMorte()
			return
		if(M.ID == 5)
			del(M)
			OrcGuerreiroMorte()
			return
		if(M.ID == 6)
			del(M)
			OrcReiMorte()
			return
		if(M.ID == 3)
			del(M)
			LoboMorte()
			return
		if(M.ID == 0)
			if(M.Revive==0)
				src.Exp+=M.Level*50
				LevelCheck()
			deathplayer(M)
		if(M.ID == 101)
			del(M)
			CabraMorte()
			return
		if(M.ID == 102)
			del(M)
			PorcoMorte()
			return
		if(M.ID == 7)
			del(M)
			TigreMorte()
			return
		if(M.ID == 8)
			del(M)
			LobisomenMorte()
			return


//------------------- Buceta Tree -------------------------------//

mob/verb
	Spell1()
		if(usr.Stun==0)
			if(usr.Sentinela==0)
				if(usr.Spell1=="Atacar")
					Atacar()
				else if(usr.Spell1=="Atirar Flecha")
					Atirar_Flechas()
				else if(usr.Spell1=="Esfera Mágica")
					Esfera_Magica()
			else
				usr<<output("Você está no modo sentinela e não pode atacar","Chat")
		else
			usr<<output("Você está atordoado","Chat")


mob/verb
	Spell2()
		var/a=usr.Spell2
		if(usr.Stun==0)
			if(usr.Sentinela==0)
				if(a=="Corte Sangrento")
					Corte_Sangrento()
				else if(a=="Ataque Múltiplo")
					Ataque_Multiplo()
				else if(a=="Flecha do Trovão")
					Flecha_Trovao()
				else if(a=="Bola de Fogo")
					Bola_de_Fogo()
				else if(a=="Roubar MP")
					Roubar_MP()
				else if(a=="Roubar HP")
					Roubar_HP()
				else if(a=="Corte Venenoso")
					Corte_Venenoso()
				else if(a=="Último Recurso")
					Ultimo_Recurso()
				else if(a=="Investida5")
					Investida5()
				else if(a=="Investida Atordoadora")
					Investida_Atordoadora()
				else if(a=="Provocar")
					Provocar()
				else if(a=="Arremesso de Terra")
					Arremesso_de_Terra()
				else if(a=="Flecha de Drenagem")
					Flecha_de_Drenagem()
				else if(a=="Salto")
					Salto()
				else if(a=="Flecha Envenenada")
					Flecha_Envenenada()
			else
				usr<<output("Você está no modo sentinela e não pode atacar","Chat")
		else
			usr<<output("Você está atordoado","Chat")

mob/verb
	Spell3()
		var/a=usr.Spell3
		if(usr.Stun==0)
			if(usr.Sentinela==0)
				if(a=="Roubar MP A")
					Roubar_MP_A()
				else if(a=="Invisibilidade")
					Invisibilidade()
				else if(a=="Roubar HP A")
					Roubar_HP_A()
				else if(a=="Emboscada")
					Emboscada()
				else if(a=="Escudada")
					Escudada()
				else if(a=="Corte Rápido")
					Corte_Rapido()
				else if(a=="Corte Giratório")
					Corte_Giratorio()
				else if(a=="Corte Lunar")
					Corte_Lunar()
				else if(a=="Corte Solar")
					Corte_Solar()
				else if(a=="Selo de Zeus")
					Selo_de_Zeus()
				else if(a=="Selo de Poseidon")
					Selo_de_Poseidon()
				else if(a=="Selo de Hades")
					Selo_de_Hades()
				else if(a=="Fúria em Massa")
					Furia_em_Massa()
				else if(a=="Fúria em Poseidon")
					Furia_de_Poseidon()
				else if(a=="Cura")
					Cura()
				else if(a=="Semente da Vida")
					Semente_da_Vida()
				else if(a=="Estaca de Gelo")
					Estaca_de_Gelo()
				else if(a=="Velocidade Heróica")
					Velocidade_Heroica()
				else if(a=="Rajada")
					Rajada()
				else if(a=="Encravar")
					Encravar()
			else
				usr<<output("Você está no modo sentinela","Chat")
		else
			usr<<output("Você está atordoado","Chat")

	Spell4()
		var/a=usr.Spell4
		if(usr.Stun==0)
			if(a=="Modo Sentinela")
				Modo_Sentinela()
				return
			if(usr.Sentinela==0)
				if(a=="Kunai Venenosa")
					Kunai_Venenosa()
				else if(a=="Huuma")
					Huuma()
				else if(a=="Paralisia A")
					Paralisia_A()
				else if(a=="Combo Mortal")
					Combo_Mortal()
				else if(a=="Choque Císmico")
					Choque_Cismico()
				else if(a=="Onda Elétrica")
					Onda_Eletrica()
				else if(a=="Oração")
					Oracao()
				else if(a=="Fúria de Zeus")
					Furia_de_Zeus()
				else if(a=="Fúria de Hades")
					Furia_de_Hades()
				else if(a=="Raios")
					Raios()
				else if(a=="Grande Cura")
					Grande_Cura()
				else if(a=="Impacto de Cura")
					Impacto_de_Cura()
				else if(a=="Tufão")
					Tufao()
				else if(a=="Tempestade")
					Tempestade()
				else if(a=="Tiro Perfurante")
					Tiro_Perfurante()
				else if(a=="Flecha de Fogo")
					Flecha_de_Fogo()
				else if(a=="Flecha de Gelo")
					Flecha_de_Gelo()
				else if(a=="Flecha Divina")
					Flecha_Divina()
			else
				usr<<output("Você está no modo sentinela","Chat")
		else
			usr<<output("Você está atordoado","Chat")


	Spell5()
		var/a=usr.Spell5
		if(usr.Stun==1)
			usr<<output("Você está atordoado","Chat")
			return
		if(usr.Sentinela==1)
			usr<<output("Você está no modo Sentinela","Chat")
			return
		if(a=="Executar")
			Executar()
		else if(a=="Turbilhão de Lâminas")
			Turbilhao_de_Laminas()
		else if(a=="Espada Bumerangue")
			Espada_Bumerangue()
		else if(a=="Investida")
			Investida()
		else if(a=="Impacto Meteoro")
			Impacto_Meteoro()
		else if(a=="Punho de Cronos")
			Punho_de_Cronos()
		else if(a=="Sacrifício")
			Sacrificio()
		else if(a=="Explosão de Mana")
			Explosao_de_Mana()
		else if(a=="Ressurreição")
			Ressurreicao()
		else if(a=="Fúria da Natureza")
			Furia_da_Natureza()
		else if(a=="Chuva de Fogo")
			Chuva_de_Fogo()
		else if(a=="Chamado do Túmulo")
			Chamado_do_Tumulo()
		else if(a=="Flecha Final")
			Flecha_Final()
		else if(a=="Chuva de Flechas")
			Chuva_de_Flechas()


mob/verb/Olha()
	usr.Spell5="Espada Bumerangue"