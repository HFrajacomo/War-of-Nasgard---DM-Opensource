area
	Armadura
		Exited(mob/M)
			if(M.ID!=0)
				return
			if(usr.Tgt!=null)
				usr.Tgt=null
			winshow(usr, "LojadeArmor",0)

		verb
			Shield()
				set hidden=1
				if(usr.trocaArm!="Escudo de Cobre")
					usr << output("Escudo de Cobre", "NovaArm")
					usr << output("Defesa+6", "SNovaArm")
					usr.trocaArm="Escudo de Cobre"
					return
				else
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

			Shield2()
				set hidden=1
				if(usr.trocaArm!="Escudo de Bronze")
					usr << output("Escudo de Bronze", "NovaArm")
					usr << output("Defesa+10", "SNovaArm")
					usr.trocaArm="Escudo de Bronze"
					return
				else
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


			Shield3()
				set hidden=1
				if(usr.trocaArm!="Escudo de Ferro")
					usr << output("Escudo de Ferro", "NovaArm")
					usr << output("Defesa+14", "SNovaArm")
					usr.trocaArm="Escudo de Ferro"
					return
				else
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


			// Armor //


			Armor()
				set hidden=1
				if(usr.trocaArm!="Armadura de Cobre")
					usr << output("Armadura de Cobre", "NovaArm")
					usr << output("Defesa+7", "SNovaArm")
					usr.trocaArm="Armadura de Cobre"
					return
				else
					if(usr.carteira >= 200)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 200
						var/obj/Armadura/Armadura_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Armadura","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Armor2()
				set hidden=1
				if(usr.trocaArm!="Armadura de Bronze")
					usr << output("Armadura de Bronze", "NovaArm")
					usr << output("Defesa+12", "SNovaArm")
					usr.trocaArm="Armadura de Bronze"
					return
				else
					if(usr.carteira >= 700)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 700
						var/obj/Armadura/Armadura_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Armadura","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")


			Armor3()
				set hidden=1
				if(usr.trocaArm!="Armadura de Ferro")
					usr << output("Armadura de Ferro", "NovaArm")
					usr << output("Defesa+17", "SNovaArm")
					usr.trocaArm="Armadura de Ferro"
					return
				else
					if(usr.carteira >= 1500)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 1500
						var/obj/Armadura/Armadura_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Armadura","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			// Bota //

			BootF()
				set hidden=1
				if(usr.trocaArm!="Bota de Cobre")
					usr << output("Bota de Cobre", "NovaArm")
					usr << output("Defesa+2", "SNovaArm")
					usr.trocaArm="Bota de Cobre"
					return
				else
					if(usr.carteira >= 50)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 50
						var/obj/BotaF/Bota_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			BootF2()
				set hidden=1
				if(usr.trocaArm!="Bota de Bronze")
					usr << output("Bota de Bronze", "NovaArm")
					usr << output("Defesa+4", "SNovaArm")
					usr.trocaArm="Bota de Bronze"
					return
				else
					if(usr.carteira >= 200)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 200
						var/obj/BotaF/Bota_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			BootF3()
				set hidden=1
				if(usr.trocaArm!="Bota de Ferro")
					usr << output("Bota de Ferro", "NovaArm")
					usr << output("Defesa+6", "SNovaArm")
					usr.trocaArm="Bota de Ferro"
					return
				else
					if(usr.carteira >= 350)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 350
						var/obj/BotaF/Bota_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")


			// Elmos //

			Helm()
				set hidden=1
				if(usr.trocaArm!="Elmo de Cobre")
					usr << output("Elmo de Cobre", "NovaArm")
					usr << output("Defesa+3", "SNovaArm")
					usr.trocaArm="Elmo de Cobre"
					return
				else
					if(usr.carteira >= 80)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 80
						var/obj/Elmo/Elmo_de_Cobre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Helm2()
				set hidden=1
				if(usr.trocaArm!="Elmo de Bronze")
					usr << output("Elmo de Bronze", "NovaArm")
					usr << output("Defesa+5", "SNovaArm")
					usr.trocaArm="Elmo de Bronze"
					return
				else
					if(usr.carteira >= 300)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 300
						var/obj/Elmo/Elmo_de_Bronze/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Helm3()
				set hidden=1
				if(usr.trocaArm!="Elmo de Ferro")
					usr << output("Elmo de Ferro", "NovaArm")
					usr << output("Defesa+8", "SNovaArm")
					usr.trocaArm="Elmo de Ferro"
					return
				else
					if(usr.carteira >= 700)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 700
						var/obj/Elmo/Elmo_de_Ferro/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Elmo","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			//  Cotas  //

			Coat()
				set hidden=1
				if(usr.trocaArm!="Cota de Cobra")
					usr << output("Cota de Cobra", "NovaArm")
					usr << output("Defesa+5", "SNovaArm")
					usr.trocaArm="Cota de Cobra"
					return
				else
					if(usr.carteira >= 150)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 150
						var/obj/Cota/Cota_de_Cobra/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua cota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Coat2()
				set hidden=1
				if(usr.trocaArm!="Cota de Lobo")
					usr << output("Cota de Lobo", "NovaArm")
					usr << output("Defesa+8", "SNovaArm")
					usr.trocaArm="Cota de Lobo"
					return
				else
					if(usr.carteira >= 400)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 400
						var/obj/Cota/Cota_de_Lobo/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua cota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Coat3()
				set hidden=1
				if(usr.trocaArm!="Cota de Tigre")
					usr << output("Cota de Tigre", "NovaArm")
					usr << output("Defesa+12", "SNovaArm")
					usr.trocaArm="Cota de Tigre"
					return
				else
					if(usr.carteira >= 800)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 800
						var/obj/Cota/Cota_de_Tigre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua cota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			//  Chapéu //

			Cap()
				set hidden=1
				if(usr.trocaArm!="Chapéu de Cobra")
					usr << output("Chapéu de Cobra", "NovaArm")
					usr << output("Defesa+2", "SNovaArm")
					usr.trocaArm="Chapéu de Cobra"
					return
				else
					if(usr.carteira >= 50)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 50
						var/obj/Chapeu/Chapeu_de_Cobra/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Chapéu","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Cap2()
				set hidden=1
				if(usr.trocaArm!="Chapéu de Lobo")
					usr << output("Chapéu de Lobo", "NovaArm")
					usr << output("Defesa+4", "SNovaArm")
					usr.trocaArm="Chapéu de Lobo"
					return
				else
					if(usr.carteira >= 200)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 200
						var/obj/Chapeu/Chapeu_de_Lobo/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Chapéu","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Cap3()
				set hidden=1
				if(usr.trocaArm!="Chapéu de Tigre")
					usr << output("Chapéu de Tigre", "NovaArm")
					usr << output("Defesa+6", "SNovaArm")
					usr.trocaArm="Chapéu de Tigre"
					return
				else
					if(usr.carteira >= 400)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 400
						var/obj/Chapeu/Chapeu_de_Tigre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está seu Chapéu","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			//  Botas Leves //

			BootL()
				set hidden=1
				if(usr.trocaArm!="Bota de Cobra")
					usr << output("Bota de Cobra", "NovaArm")
					usr << output("Defesa+1", "SNovaArm")
					usr.trocaArm="Bota de Cobra"
					return
				else
					if(usr.carteira >= 30)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 30
						var/obj/BotaL/Bota_de_Cobra/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			BootL2()
				set hidden=1
				if(usr.trocaArm!="Bota de Lobo")
					usr << output("Bota de Lobo", "NovaArm")
					usr << output("Defesa+3", "SNovaArm")
					usr.trocaArm="Bota de Lobo"
					return
				else
					if(usr.carteira >= 80)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 80
						var/obj/BotaL/Bota_de_Lobo/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			BootL3()
				set hidden=1
				if(usr.trocaArm!="Bota de Tigre")
					usr << output("Bota de Tigre", "NovaArm")
					usr << output("Defesa+5", "SNovaArm")
					usr.trocaArm="Bota de Tigre"
					return
				else
					if(usr.carteira >= 200)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 200
						var/obj/BotaL/Bota_de_Tigre/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Bota","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			//  Cartola/Capuz  //

			Hat()
				set hidden=1
				if(usr.trocaArm!="Cartola de Lã")
					usr << output("Cartola de Lã", "NovaArm")
					usr << output("Defesa+1", "SNovaArm")
					usr.trocaArm="Cartola de Lã"
					return
				else
					if(usr.carteira >= 20)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 20
						var/obj/Cartola/Cartola_de_La/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Cartola","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Hat2()
				set hidden=1
				if(usr.trocaArm!="Cartola de Seda")
					usr << output("Cartola de Seda", "NovaArm")
					usr << output("Defesa+3", "SNovaArm")
					usr.trocaArm="Cartola de Seda"
					return
				else
					if(usr.carteira >= 60)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 60
						var/obj/Cartola/Cartola_de_Seda/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Cartola","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Hat3()
				set hidden=1
				if(usr.trocaArm!="Cartola de Rubrosa")
					usr << output("Cartola de Rubrosa", "NovaArm")
					usr << output("Defesa+5", "SNovaArm")
					usr.trocaArm="Cartola de Rubrosa"
					return
				else
					if(usr.carteira >= 150)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 150
						var/obj/Cartola/Cartola_de_Rubrosa/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Cartola","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			//  Túnicas  //

			Tunic()
				set hidden=1
				if(usr.trocaArm!="Túnica de Lã")
					usr << output("Túnica de Lã", "NovaArm")
					usr << output("Defesa+3", "SNovaArm")
					usr.trocaArm="Túnica de Lã"
					return
				else
					if(usr.carteira >= 100)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 100
						var/obj/Tunica/Tunica_de_La/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Túnica","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Tunic2()
				set hidden=1
				if(usr.trocaArm!="Túnica de Seda")
					usr << output("Túnica de Seda", "NovaArm")
					usr << output("Defesa+6", "SNovaArm")
					usr.trocaArm="Túnica de Seda"
					return
				else
					if(usr.carteira >= 250)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 250
						var/obj/Tunica/Tunica_de_Seda/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Túnica","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")

			Tunic3()
				set hidden=1
				if(usr.trocaArm!="Túnica de Rubrosa")
					usr << output("Túnica de Rubrosa", "NovaArm")
					usr << output("Defesa+9", "SNovaArm")
					usr.trocaArm="Túnica de Rubrosa"
					return
				else
					if(usr.carteira >= 500)
						if(usr.espaco >= 25)
							usr <<output("<b>Você não tem espaço no inventário!</b>","Chat")
							return
						usr.espaco += 1
						usr.carteira -= 500
						var/obj/Tunica/Tunica_de_Rubrosa/C = new(src)
						usr.contents += C
						usr <<output("<b>Vendedor de Armas:</b> Aqui está sua Túnica","Chat")
						BankTag()
					else
						usr <<output("<b>Vendedor de Armas:</b> Você não tem ouro suficiente para comprar.","Chat")