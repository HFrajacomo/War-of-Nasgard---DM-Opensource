area
	Quitanda
		Exited(mob/M)
			if(M.ID!=0)
				return
			if(usr.Tgt!=null)
				usr.Tgt=null
			winshow(usr, "Quitanda",0)

		verb
			Verdura()
				set hidden=1
				if(usr.carteira >= 75)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 75
					var/obj/PlantaC/Alface/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura2()
				set hidden=1
				if(usr.carteira >= 110)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 110
					var/obj/Prep/Abobora/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está sua [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura3()
				set hidden=1
				if(usr.carteira >= 30)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 30
					var/obj/PlantaC/Alho/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura4()
				set hidden=1
				if(usr.carteira >= 90)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 90
					var/obj/PlantaC/Berinjela/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está sua [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura5()
				set hidden=1
				if(usr.carteira >= 80)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 80
					var/obj/PlantaC/Cenoura/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está sua [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura6()
				set hidden=1
				if(usr.carteira >= 100)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 100
					var/obj/PlantaC/Milho/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura7()
				set hidden=1
				if(usr.carteira >= 60)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 60
					var/obj/PlantaC/Tomate/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura8()
				set hidden=1
				if(usr.carteira >= 125)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 125
					var/obj/Prep/Trigo/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")

			Verdura9()
				set hidden=1
				if(usr.carteira >= 50)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 50
					var/obj/PlantaC/Pimentao/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor:</b> Aqui está seu [C]","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor:</b> Você não tem ouro suficiente para comprar.","Chat")