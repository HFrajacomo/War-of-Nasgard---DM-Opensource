
client/base_num_characters_allowed = 5



world/mob = /mob/Criar_Personagem




mob/Criar_Personagem
	base_save_allowed = 0

	Login()
		spawn()
			src.Criar_Personagem()

	proc/Criar_Personagem()
		var/prompt_title = "Novo Personagem"
		var/help_text = "	Escolha o seu nome:"
		var/default_value = key
		var/char_name = input(src, help_text, prompt_title, default_value) as null|text

		if (!char_name)
			client.base_ChooseCharacter()
			return

		var/ckey_name = ckey(char_name)
		var/list/characters = client.base_CharacterNames()
		if (characters.Find(ckey_name))
			alert("Esse nome já existe!Por favor escolha outro nome.")
			src.Criar_Personagem()
			return

		var/list/classes = list("Cavaleiro", "Arqueiro","Feiticeiro","Ladrão","Gladiador")
		help_text = "Qual classe você gostaria de ser ?"
		default_value = "Cop"
		var/char_class = input(src, help_text, prompt_title, default_value) in classes

		var/mob/new_mob
		switch(char_class)
			if ("Cavaleiro")new_mob = new /mob/usr/Cavaleiro()
			if ("Arqueiro")	new_mob = new /mob/usr/Arqueiro()
			if ("Feiticeiro") new_mob = new /mob/usr/Feiticeiro()
			if ("Ladrão") new_mob = new /mob/usr/Ladrao()
			if ("Gladiador") new_mob = new /mob/usr/Gladiador()


		oview() <<output("<font color=white><b>Olá seja Bem-Vindo ao War of Nasgard v1.0","Chat")
		usr<<output("<font color=red><b>Interaja com NPCs com a tecla 'D'","Chat")
		new_mob.name = char_name
		var/turf/first_location = locate(29,32,1)
		new_mob.Move(first_location)
		src.client.mob = new_mob

		del(src)



mob
	Login()
		world <<output("<font color = white>[usr.name] Entrou no Jogo","Chat")
		..()
		src.overlays -= 'velocidadeheroica.dmi'
		src.overlays -= 'taarget.dmi'
		src.overlays -= 'fogo.dmi'
		src.overlays -= 'rajadadegelo.dmi'
		src.overlays -= 'chamasagrada.dmi'
		src.overlays -= 'atacar.dmi'
		src.overlays -= 'fleecha.dmi'
		src.overlays -= 'Flecha sagrada.dmi'
		src.overlays -= 'AnimaçãoEspada.dmi'
		src.overlays -= 'AnimaçãoArco.dmi'
		src.overlays -= 'AnimaçãoCajado.dmi'
		MainClock()
		winshow(usr, "Background",0)
		usr.BolsaAtiva=0
		if(usr.wp == 1)
			RegenK()
		if(usr.wp !=1)
			Regen()







proc/MainClock()
	spawn while(1)
		sleep(2)
		UpdateBolsa()
		UpdateNum()






mob
	proc
		salvar_mundo()
			while(world)
				src.client.base_SaveMob()
				sleep(40)

mob
	proc
		sample_report()
			src <<output("<BR><BR>","Chat")

		Salvar()

			src.client.base_SaveMob()
			src <<output("\red Seu personagem foi salvo..","Chat")


		Deslogar()
			src.client.base_ChooseCharacter()












