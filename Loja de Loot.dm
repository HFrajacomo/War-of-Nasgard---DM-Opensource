area
	Loot
		Exited(mob/M)
			if(M.ID!=0)
				return
			if(usr.Tgt!=null)
				usr.Tgt=null
			winshow(usr, "LojadeLoot",0)

		verb
			Loot1()
				set hidden=1
				var/obj/o = locate(/obj/Pele_de_Cobra) in usr.contents
				if (o)
					usr.carteira += 5
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela pele (5 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")
			Loot2()
				set hidden=1
				var/obj/o = locate(/obj/Teia) in usr.contents
				if (o)
					usr.carteira += 10
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela teia (10 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot3()
				set hidden=1
				var/obj/o = locate(/obj/Garra_de_Lobo) in usr.contents
				if (o)
					usr.carteira += 15
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela garra (15 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot4()
				set hidden=1
				var/obj/o = locate(/obj/Ferrao) in usr.contents
				if (o)
					usr.carteira += 25
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pelo ferrão (25 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot5()
				set hidden=1
				var/obj/o = locate(/obj/Pele_de_Tigre) in usr.contents
				if (o)
					usr.carteira += 30
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela Pele (20 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot6()
				set hidden=1
				var/obj/o = locate(/obj/BifeCrua) in usr.contents
				if (o)
					usr.carteira += 15
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pelo Bife (15 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot7()
				set hidden=1
				var/obj/o = locate(/obj/BaconCrua) in usr.contents
				if (o)
					usr.carteira += 8
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pelo Bacon (8 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot8()
				set hidden=1
				var/obj/o = locate(/obj/Pele_de_Lobo) in usr.contents
				if (o)
					usr.carteira += 15
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela Pele (15 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

			Loot9()
				set hidden=1
				var/obj/o = locate(/obj/Lan) in usr.contents
				if (o)
					usr.carteira += 10
					del(o)
					usr <<output("<b>Caçador de Loot:</b> Obrigado pela Lã (10 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Caçador de Loot:</b> Quando conseguir alguma, venha vender.","Chat")

obj
	verb
		Pegar()
			set category = null
			set src in oview(1)
			var/mob/e = locate(/mob/NPC/Bau) in src.loc
			if (src==e)
				return
			var/obj/r = locate(/obj/flecha) in src.loc
			if (src==r)
				return
			var/obj/q = locate(/obj/esferamagica) in src.loc
			if (src==q)
				return
			var/obj/w = locate(/obj/boladefogo) in src.loc
			if (src==w)
				return
			var/obj/w1 = locate(/obj/Corte_Lunar) in src.loc
			if (src==w1)
				return
			var/obj/s = locate(/obj/FlechaSagrada) in src.loc
			if (src==s)
				return
			var/obj/j = locate(/obj/Camp) in src.loc
			if (src==j)
				return
			var/obj/j1 = locate(/obj/Huuma) in src.loc
			if (src==j1)
				return
			var/obj/j2 = locate(/obj/Kunai) in src.loc
			if(src==j2)
				return
			var/obj/j3 = locate(/obj/Impacto_Cismico) in src.loc
			if(src==j3)
				return
			var/obj/j4 = locate(/obj/Punho_Cronos) in src.loc
			if(src==j4)
				return
			var/obj/i = locate(/obj/IngotFire) in src.loc
			if(src==i)
				return
			var/obj/i2 = locate(/obj/Furia_da_Natureza) in src.loc
			if(src==i2)
				return
			var/obj/i3 = locate(/obj/Flecha_D) in src.loc
			if(src==i3)
				return
			var/obj/i4 = locate(/obj/Tiro_P) in src.loc
			if(src==i4)
				return
			var/obj/i5 = locate(/obj/Flecha_F) in src.loc
			if(src==i5)
				return
			var/obj/i6 = locate(/obj/Flecha_E) in src.loc
			if(src==i6)
				return
			var/obj/i7 = locate(/obj/Flecha_DF) in src.loc
			if(src==i7)
				return
			var/obj/i8 = locate(/obj/Flecha_DG) in src.loc
			if(src==i8)
				return
			var/obj/i9 = locate(/obj/Flecha_Divina) in src.loc
			if(src==i9)
				return
			if(src==null)
				return
			var/obj/o = locate(/obj/Moedas_Sujas) in src.loc
			if (o)
				var/quantia = rand(30,45)
				usr.carteira += quantia
				usr <<output("<b>Você achou <b>[quantia] moedas.</b>","Chat")
				del (src)
			else
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				usr.espaco += 1
				usr <<output("<b>Você pegou [src.name]!<b>","Chat")
				src.Move(usr)
				usr.contents.Add(src)
				BankTag()
				return