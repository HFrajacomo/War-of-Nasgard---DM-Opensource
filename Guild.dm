var/list/Guild1 = list("Chat da Guilda","Usuários Online","Remover Membro","Promover Membro","Convidar Membro","Sair da Guilda","Cancelar")
var/list/Guild2 = list("Chat da Guilda","Usuários Online","Sair da Guilda","Cancelar")


mob/verb/GuildCommand()
	if(usr.InGuild==0)
		switch(alert(usr,"Você não está numa guilda. Deseja criar uma?","Criar Guilda","Sim","Não"))
			if("Sim")
				var/msg=input(usr, "Digite o nome da Guilda", "Criar Guilda") as text
				Create_Guild(msg)
			if("Não")
				return
	if(usr.GuildOfficer==0)
		var/O = SelectCommand2()
		ShowCommands0(O)
	else if(usr.GuildOfficer == 1)
		var/O = SelectCommand()
		ShowCommands1(O)


proc/ShowCommands1(O)
	if(O=="Usuários Online")
		call(usr,/mob/GuildCommands/verb/GuildWho)()
	if(O=="Chat da Guilda")
		var/msg = input(usr,"Guilda","Chat da Guilda") as text
		call(usr,/mob/GuildCommands/verb/Falar_Guild)(msg)
	if(O=="Sair da Guilda")
		call(usr,/mob/GuildCommands/verb/GuildLeave)()
		return
	if(O=="Remover Membro")
		var/list/K = newlist()
		for(var/mob/A in world)
			if(A.Guild == usr.Guild)
				K.Add(A)
		K.Add("Cancelar")
		var/mob/M = input(usr, "Remover Membro", "Guilda") in K
		if(M=="Cancelar")
			return
		call(usr,/mob/GuildOfficerCommands/verb/Guild_Kick)(M)
	if(O=="Convidar Membro")
		var/list/K = newlist()
		for(var/mob/A in oview(5))
			K.Add(A)
		K.Add("Cancelar")
		var/mob/M = input(usr, "Convidar Jogador", "Guilda") in K
		if(M=="Cancelar")
			return
		call(usr,/mob/GuildOfficerCommands/verb/Guild_Invite)(M)
	if(O=="Promover Membro")
		var/list/K = newlist()
		for(var/mob/A in world)
			if(A.Guild == usr.Guild)
				K.Add(A)
		K.Add("Cancelar")
		var/mob/M = input(usr, "Promover à Administrador", "Guilda") in K
		if(M=="Cancelar")
			return
		call(usr,/mob/GuildOfficerCommands/verb/Guild_Permission)(M)

proc/ShowCommands0(O)
	if(O=="Usuários Online")
		call(usr,/mob/GuildCommands/verb/GuildWho)()
	if(O=="Chat da Guilda")
		var/msg = input(usr,"Guilda","Chat da Guilda") as text
		call(usr,/mob/GuildCommands/verb/Falar_Guild)(msg)
	if(O=="Sair da Guilda")
		call(usr,/mob/GuildCommands/verb/GuildLeave)()
		return


proc/SelectMember()


proc/SelectCommand()
   var/O = input("Guilda","Comandos",) in Guild1
   return O

proc/SelectCommand2()
   var/O = input("Guilda","Comandos",) in Guild2
   return O



// -----------------------------------------------------------------------------------------------------------//

var/list/Guilds = newlist()

mob
	var
		Guild = null
		GuildTag = "None"
		InGuild = 0
		GuildOfficer = 0
		GuildName

	verb
		Create_Guild(msg as text)
			set category = "Guild"
			set name = "Guild: Criar"
			if(length(msg)<2)
				alert("Nome da Guild muito pequeno")
				return
			if(findtext("",msg))
				alert("Você precisa de um nome para a Guild")
				return
			if(usr.InGuild == 0)
				Guilds += "[msg]"
				src <<output("<b> Você criou a Guild </b> <font color =blue>[msg] </b>","Chat")
				src.Guild = "[msg]"
				src.GuildTag = "Líder"
				src.GuildName = "[msg]"
				src.InGuild = 1
				src.GuildOfficer = 1
				src.GuildCheck()
				src.verbs -= /mob/verb/Create_Guild
			else
				alert("Você já está em uma Guild")
				return


	proc
		GuildCheck()
			if(src.GuildOfficer == 1)
				src.verbs += typesof(/mob/GuildOfficerCommands/verb)
			if(src.InGuild == 1)
				src.verbs += typesof(/mob/GuildCommands/verb)

	GuildCommands
		verb
			GuildWho()
				set category = "Guild"
				set name = "Guild: Parceiros Online"
				src <<output("<font color = blue><b>Guild Membros:","Chat")
				for(var/mob/M in world)
					if(M.Guild == src.Guild)
						if(M.InGuild == 0)
							return()
						else
							src <<output("<font color = blue><b>[M] (Level [M.Level])</b></font>","Chat")

			Falar_Guild(msg as text)
				set category = "Guild"
				set name = "Guild: Chat da Guild"
				for(var/mob/M in world)
					if(M.Guild == src.Guild)
						if(M.InGuild == 0)
							return()
						else
							M <<output("<font color = blue><b>Guild: [src] (Level [usr.Level]):  [msg]","Chat")
			GuildLeave()
				set category = "Guild"
				set name = "Guild: Sair da Guild"
				usr <<output("<b>Você saiu da </b><font color = blue>[usr.Guild]</b>","Chat")
				usr.InGuild = 0
				usr.Guild = null
				usr.GuildTag = "None"
				usr.GuildOfficer = 0
				usr.verbs -= /mob/GuildOfficerCommands/verb/Guild_Invite
				usr.verbs -= /mob/GuildCommands/verb/GuildWho
				usr.verbs -= /mob/GuildCommands/verb/Falar_Guild
				usr.verbs -= /mob/GuildCommands/verb/GuildLeave
				usr.verbs -= /mob/GuildOfficerCommands/verb/Guild_Kick
				usr.verbs -= /mob/GuildOfficerCommands/verb/Guild_Permission
				usr.verbs += /mob/verb/Create_Guild


	GuildOfficerCommands
		verb
			Guild_Invite(var/mob/M in oview(5))
				if(M==null)
					usr<<output("Não há jogadores por perto","Chat")
					return
				if(M.monstro==0)
					if(M.InGuild == 0 && M.Guild == null)
						if(src.GuildTag == "Líder"||src.GuildTag == "Officer"||src.GuildTag == "Recruiter" && src.InGuild == 1)
							usr<<output("[M] foi convidado para a Guilda","Chat")
							switch(alert(M,"[M] Você foi convidado para a guild [usr.Guild] pelo [usr]","Guild Recrutamento","Sim","Não"))
								if("Sim")
									if(M.guildle == 0)
										return
									M <<output("<b>Você entrou na guild</b> <font color = blue>[src.Guild]</b>","Chat")
									M.InGuild=1
									M.Guild = src.Guild
									M.GuildTag = "Initiate"
									M.GuildName = "[src.GuildName]"
									M.InGuild = 1
									M.GuildCheck()
									for(var/mob/G in world)
										if(G.Guild == src.Guild)
											G <<output("<font color = blue>  [M] Entrou na Guild</b>","Chat")
								if("Não")
									if(M.guildle == 0)
										return
									src <<output("<b>[M] Recusou o convite</b>","Chat")
									return()
						else
							return()
					else
						alert("Esse jogador já está em uma guild")
						return()
				else
					usr<<output("Selecione um jogador","Chat")
					return


			Guild_Kick(var/mob/M in usr.Guild)
				set category="Guild"
				set name="Kickar Membro"
				if(M.GuildOfficer==0)
					M.InGuild = 0
					M.Guild = ""
					M.GuildTag = "None"
					M.GuildOfficer = 0
					M.verbs -= /mob/GuildOfficerCommands/verb/Guild_Invite
					M.verbs -= /mob/GuildCommands/verb/GuildWho
					M.verbs -= /mob/GuildCommands/verb/Falar_Guild
					M.verbs -= /mob/GuildCommands/verb/GuildLeave
					M.verbs += /mob/verb/Create_Guild
				else
					usr<<output("Você não pode kickar outro administrador da guilda","Chat")


			Guild_Permission(var/mob/M in usr.Guild)
				set name="Promover"
				set category="Guild"
				if(M==null)
					return
				if(M.GuildOfficer==0)
					M.GuildOfficer=1
					for(var/mob/N in world)
						if(N.Guild == src.Guild)
							N<<output("[M] virou comandante da Guilda","Chat")
							return()

