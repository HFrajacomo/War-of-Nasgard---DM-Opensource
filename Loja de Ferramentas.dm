obj
	Camp
		icon='campfire.dmi'
		New()
			.=..()
			spawn(1)
				Apagar()


obj
	Madeira
		icon='Tora.dmi'
		verb
			Acender()
				set category=null
				var/obj/Camp/o = new /obj/Camp
				o.loc = usr.loc
				usr.espaco-=1
				del(src)
		Click()
			Acender()




area
	Ferramentas
		Exited(mob/M)
			if(M.ID!=0)
				return
			if(usr.Tgt!=null)
				usr.Tgt=null
			winshow(usr, "LojadeFerramentas",0)


		verb
			Comprar1()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=150)
					usr.carteira -= 150
					var/obj/Armas/Ferramenta/Machado_de_Lenhador/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
					usr<<output("<b><font color=red> Clique em uma árvore com o machado equipado para cortá-la","Chat")
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")

			Comprar2()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=150)
					usr.carteira -= 150
					var/obj/Armas/Ferramenta/Vara_de_Pesca/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
					usr<<output("<b><font color=red> Clique na água com a vara equipada para pescar","Chat")
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")

			Comprar3()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=12)
					usr.carteira -= 12
					var/obj/Madeira/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")
			Comprar4()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=250)
					usr.carteira -= 250
					var/obj/Armas/Ferramenta/Picareta/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
					usr<<output("<b><font color=red> Clique em um minério com a picareta equipada para minerá-lo","Chat")
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")
			Comprar5()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=250)
					usr.carteira -= 250
					var/obj/Armas/Ferramenta/Enxada/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
					usr<<output("<b><font color=red> Clique na grama com a enxada equipada para ará-la","Chat")
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")

			Comprar6()
				if(usr.espaco >= 25)
					usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
					return
				if (usr.carteira>=150)
					usr.carteira -= 150
					var/obj/Armas/Ferramenta/Machete/W = new()
					usr.contents += W
					usr<<output("Você comprou [W]","Chat")
					BankTag()
					usr.espaco +=1
					usr<<output("<b><font color=red> Clique em um arbusto de tecido com a machete equipada para cortá-lo","Chat")
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Você não tem dinheiro.","Chat")

			// Venda

		verb
			Vender1()
				set category = "Vender"
				set name ="Madeira (5 Ouro)"
				var/obj/o = locate(/obj/Madeira) in usr.contents
				if (o)
					usr.carteira += 5
					del(o)
					usr <<output("<b>Vendedor de Ferramentas:</b> Obrigado pela madeira (5 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Quando conseguir alguma, venha vender.","Chat")

			Vender2()
				set category = "Vender"
				set name ="Peixe Cru (8 Ouro)"
				var/obj/o = locate(/obj/peixe) in usr.contents
				if (o)
					usr.carteira += 8
					del(o)
					usr <<output("<b>Vendedor de Ferramentas:</b> Obrigado pelo Peixe (8 Ouro).","Chat")
					usr.espaco -=1
				else
					usr <<output("<b>Vendedor de Ferramentas:</b> Quando conseguir algum, venha vender.","Chat")