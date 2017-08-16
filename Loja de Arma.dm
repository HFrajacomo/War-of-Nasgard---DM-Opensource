area
	Arma
		Exited(mob/M)
			if(M.ID!=0)
				return
			if(usr.Tgt!=null)
				usr.Tgt=null
			winshow(usr, "LojadeArmas",0)

		verb
			Arma()
				set hidden=1
				if(usr.troca!="Espada de Cobre")
					usr << output("Espada de Cobre", "NomeNova")
					usr << output("Força+6", "ForçaNova")
					usr.troca="Espada de Cobre"
					return
				else
					if(usr.carteira >= 80)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 80
						var/obj/Armas/Espada/Espada_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Espada","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma2()
				set hidden=1
				if(usr.troca!="Espada de Bronze")
					usr << output("Espada de Bronze", "NomeNova")
					usr << output("Força+9", "ForçaNova")
					usr.troca="Espada de Bronze"
					return
				else
					if(usr.carteira >= 300)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 300
						var/obj/Armas/Espada/Espada_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Espada","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma3()
				set hidden=1
				if(usr.troca!="Espada de Ferro")
					usr << output("Espada de Ferro", "NomeNova")
					usr << output("Força+12", "ForçaNova")
					usr.troca="Espada de Ferro"
					return
				else
					if(usr.carteira >= 700)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 700
						var/obj/Armas/Espada/Espada_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Espada","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma4()
				set hidden=1
				if(usr.troca!="Arco de Cobre")
					usr << output("Arco de Cobre", "NomeNova")
					usr << output("Agilidade+6", "ForçaNova")
					usr.troca="Arco de Cobre"
					return
				else
					if(usr.carteira >= 80)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 80
						var/obj/Armas/Arco/Arco_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Arco","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma5()
				set hidden=1
				if(usr.troca!="Arco de Bronze")
					usr << output("Arco de Bronze", "NomeNova")
					usr << output("Agilidade+9", "ForçaNova")
					usr.troca="Arco de Bronze"
					return
				else
					if(usr.carteira >= 300)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 300
						var/obj/Armas/Arco/Arco_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Arco","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma6()
				set hidden=1
				if(usr.troca!="Arco de Ferro")
					usr << output("Arco de Ferro", "NomeNova")
					usr << output("Agilidade+12", "ForçaNova")
					usr.troca="Arco de Ferro"
					return
				else
					if(usr.carteira >= 700)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 700
						var/obj/Armas/Arco/Arco_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Arco","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma7()
				set hidden=1
				set category = "Loja"
				set name = "Cajado de Folhas (150 Ouro)"
				if(usr.carteira >= 80)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 80
					var/obj/Armas/Cajado/Cajado_de_Folhas/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Cajado","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma8()
				set hidden=1
				set category = "Loja"
				set name = "Cajado da Natureza (700 Ouro)"
				if(usr.carteira >= 300)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 300
					var/obj/Armas/Cajado/Cajado_da_Natureza/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Cajado","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma9()
				set hidden=1
				set category = "Loja"
				set name = "Cajado de Ferro (1500 Ouro)"
				if(usr.carteira >= 700)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 700
					var/obj/Armas/Cajado/Cajado_de_Ferro/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Cajado","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma10()
				set hidden=1
				if(usr.troca!="Adaga de Cobre")
					usr << output("Adaga de Cobre", "NomeNova")
					usr << output("Agilidade+4", "ForçaNova")
					usr.troca="Adaga de Cobre"
					return
				else
					if(usr.carteira >= 50)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 50
						var/obj/Armas/Adaga/Adaga_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Adaga","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma11()
				set hidden=1
				if(usr.troca!="Adaga de Bronze")
					usr << output("Adaga de Bronze", "NomeNova")
					usr << output("Agilidade+5", "ForçaNova")
					usr.troca="Adaga de Bronze"
					return
				else
					if(usr.carteira >= 180)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 180
						var/obj/Armas/Adaga/Adaga_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Adaga","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma12()
				set hidden=1
				if(usr.troca!="Adaga de Ferro")
					usr << output("Adaga de Ferro", "NomeNova")
					usr << output("Agilidade+7", "ForçaNova")
					usr.troca="Adaga de Ferro"
					return
				else
					if(usr.carteira >= 400)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 400
						var/obj/Armas/Adaga/Adaga_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Adaga","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma13()
				set hidden=1
				if(usr.troca!="Montante de Cobre")
					usr << output("Montante de Cobre", "NomeNova")
					usr << output("Força+9", "ForçaNova")
					usr.troca="Montante de Cobre"
					return
				else
					if(usr.carteira >= 100)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 100
						var/obj/Armas/Montante/Montante_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Montante","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Arma14()
				set hidden=1
				if(usr.troca!="Montante de Bronze")
					usr << output("Montante de Bronze", "NomeNova")
					usr << output("Força+14", "ForçaNova")
					usr.troca="Montante de Bronze"
					return
				else
					if(usr.carteira >= 350)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 350
						var/obj/Armas/Montante/Montante_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Montante","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")


			Arma15()
				set hidden=1
				if(usr.troca!="Montante de Ferro")
					usr << output("Montante de Ferro", "NomeNova")
					usr << output("Força+18", "ForçaNova")
					usr.troca="Montante de Ferro"
					return
				else
					if(usr.carteira >= 900)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 900
						var/obj/Armas/Montante/Montante_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Montante","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")


					// Escudos //

			Escudo()
				set category = "Loja"
				set name = "Escudo de Madeira (50 Ouro)"
				if(usr.carteira >= 30)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 30
					var/obj/Escudos/Escudo_de_Madeira/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Escudo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Escudo1()
				set category = "Loja"
				set name = "Escudo de Cobre (120 Ouro)"
				if(usr.carteira >= 100)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 100
					var/obj/Escudos/Escudo_de_Cobre/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Escudo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Escudo2()
				set category = "Loja"
				set name = "Escudo de Bronze (500 Ouro)"
				if(usr.carteira >= 400)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 400
					var/obj/Escudos/Escudo_de_Bronze/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Escudo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Escudo3()
				set category = "Loja"
				set name = "Escudo de Ferro (1200 Ouro)"
				if(usr.carteira >= 1000)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 1000
					var/obj/Escudos/Escudo_de_Ferro/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Escudo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Elmo()
				set category = "Loja"
				set name = "Elmo de Cobre (100 Ouro)"
				if(usr.carteira >= 100)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 100
					var/obj/Elmo/Elmo_de_Cobre/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Elmo2()
				set category = "Loja"
				set name = "Elmo de Bronze (450 Ouro)"
				if(usr.carteira >= 450)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 450
					var/obj/Elmo/Elmo_de_Bronze/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Elmo3()
				set category = "Loja"
				set name = "Elmo de Ferro (1000 Ouro)"
				if(usr.carteira >= 1000)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 1000
					var/obj/Elmo/Elmo_de_Ferro/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")


			RecarregarFlechas()
				set hidden=1
				if(usr.wp!=2)
					usr << output("Precisa ser um arqueiro para recarregar flechas", "Chat")
					return
				else
					var/compra = input("1 Gold por 4 flechas. Quantas golds vai gastar?") as num
					if(compra<=0)
						usr<<output("Você deve comprar um valor positivo","Chat")
						return
					if(usr.carteira<compra)
						usr<<output("<b> Você não tem tudo isso</b>","Chat")
						return
					else
						usr.flecha+=(compra*4)
						usr.carteira-=compra
						usr<<output("<b>Vendedor de Armas</b>: Aqui está suas [compra*4] flechas","Chat")


