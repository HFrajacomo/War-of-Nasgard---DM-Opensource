area
	Pocoes
		Exited(mob/M)
			if(M.ID!=0)
				return
			winshow(usr,"LojadePocao",0)


		verb
			Pocao()
				set hidden=1
				if(usr.carteira >= 150)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 150
					var/obj/potiong/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Poções:</b> Aqui está sua Poção HP Grande.","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Poções:</b> Você não tem ouro suficiente para comprar.","Chat")

			Pocao2()
				set hidden=1
				if(usr.carteira >= 50)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 500
					var/obj/potion/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Poções:</b> Aqui está sua Poção HP Pequena.","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Poções:</b> Você não tem ouro suficiente para comprar.","Chat")

			Pocao3()
				set hidden=1
				if(usr.carteira >= 150)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 150
					var/obj/potionmg/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Poções:</b> Aqui está sua Poção MP Grande.","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Poções:</b> Você não tem ouro suficiente para comprar.","Chat")
			Pocao4()
				set hidden=1
				if(usr.carteira >= 50)
					if(usr.espaco >= 25)
						usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
						return
					usr.espaco += 1
					usr.carteira -= 50
					var/obj/potionm/C = new(src)
					usr.contents += C
					usr <<output("<b>Vendedor de Poções:</b> Aqui está sua Poção MP Pequena.","Chat")
					BankTag()
				else
					usr <<output("<b>Vendedor de Poções:</b> Você não tem ouro suficiente para comprar.","Chat")
