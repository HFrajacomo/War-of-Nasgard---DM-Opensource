mob/verb/Sair()
	switch(alert("Você tem certeza ?","Deslogar","Deslogar","Sair","Cancelar"))
		if("Deslogar")
			winshow(usr, "Background",1)
			var/mob/M=usr
			usr.Logged=0
			call(M,/mob/proc/Salvar)()
			call(M,/mob/proc/Deslogar)()
			call(M,/client/Del)()
		if("Sair")
			call(usr,/mob/Logout)()
			winset(usr, null, "command=.quit")
			return
		if("Cancelar")
			return
		else
			return

atom/proc/BankTag()
	var/obj/g = locate(/obj) in usr.contents
	for(g in usr.contents)
		g.verbs -= /obj/verb/Depositar
		g.verbs -= /obj/verb/Retirar
	for(g in usr.Equips)
		g.verbs -= /obj/verb/Depositar
		g.verbs -= /obj/verb/Retirar



mob/Login()
	var/obj/a = /obj
	for(a in usr.Equips)
		usr.Equips.Remove(a)
	usr.Equips += usr.E1
	usr.Equips += usr.E2
	usr.Equips += usr.Armadura
	usr.Equips += usr.Capacete
	usr.Equips += usr.Bota
	usr.Equips += usr.Colar
	usr.Equips += usr.Anel1
	usr.Equips += usr.Anel2
	usr.Frozen=0
	winset(usr,"Map","focus=true")
	BankTag()
	if(usr.Sacrificio==1)
		usr.str-=50
		usr.Def+=30
		usr.Sacrificio=0
	if(usr.Revive==1)
		usr.Revive=0
		usr.overlays-='Oração.dmi'
	if(usr.Hades==1)
		usr.overlays-='Selo de Hades.dmi'
		usr.Hades=0
		usr.Def-=20
	if(usr.Poseidon==1)
		usr.overlays-='Selo de Poseidon.dmi'
		usr.Poseidon=0
		usr.Frozen=0
		usr.Stun=0
	if(usr.Zeus==1)
		usr.overlays-='Selo de Zeus.dmi'
		usr.Zeus=0
		usr.str-=20
		usr.agi-=20
	if(usr.wp == 1)
		CheckTreeKnight()
	if(usr.wp == 2)
		CheckTreeArcher()
	if(usr.wp == 3)
		CheckTreeMage()
	if(usr.wp == 4)
		CheckTreeAssassin()
		if(usr.invisibility!=0)
			usr.invisibility=0
	if(usr.wp == 5)
		CheckTreeBeserker()
	if(usr.UR==1)
		usr.str-=20
		usr.UR=0
		usr.overlays-='Último Recurso.dmi'
	if(usr.Sentinela==1)
		Modo_Sentinela()
	usr.Logged=1
	usr.client.StartHotkeys()
	BankTag()


obj/Hotkeys
	layer = 99
	var/locc
	New(client/C)
		screen_loc=locc
		C.screen+=src

	BarraEsquerda
		icon='hotbar.dmi'
		icon_state = "esquerda"
		locc = "8,2"

	BarraDireita
		icon='hotbar.dmi'
		icon_state = "direita"
		locc = "14,2"

	Z
		icon='HotbarHint.dmi'
		icon_state="z"
		locc="9,3"

	X
		icon='HotbarHint.dmi'
		icon_state="x"
		locc="10,3"

	C
		icon='HotbarHint.dmi'
		icon_state="c"
		locc="11,3"

	V
		icon='HotbarHint.dmi'
		icon_state="v"
		locc="12,3"

	B
		icon='HotbarHint.dmi'
		icon_state="b"
		locc="13,3"

	I
		icon='HotbarHint.dmi'
		icon_state="i"
		locc="18,3"

	O
		icon='HotbarHint.dmi'
		icon_state="o"
		locc="19,3"

	P
		icon='HotbarHint.dmi'
		icon_state="p"
		locc="20,3"

	Enter
		icon='HotbarHint.dmi'
		icon_state="enter"
		locc="6,3"

	Pegar
		icon='Hotbar.dmi'
		icon_state="Pick"
		locc="4,2"

	Interagir
		icon='Hotbar.dmi'
		icon_state="Interact"
		locc="3,2"

	Q
		icon='HotbarHint.dmi'
		icon_state="q"
		locc="5,3"

	A
		icon='HotbarHint.dmi'
		icon_state="a"
		locc="16,3"

	S
		icon='HotbarHint.dmi'
		icon_state="s"
		locc="17,3"

	D
		icon='HotbarHint.dmi'
		icon_state="d"
		locc="3,3"

	Space
		icon='HotbarHint.dmi'
		icon_state="space"
		locc="4,3"

	Vida
		icon='hotbar.dmi'
		icon_state="Vida"
		locc = "16,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/QuickHP)()

	Mana
		icon='hotbar.dmi'
		icon_state="Mana"
		locc = "17,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/QuickMP)()

	Bolsa
		icon='hotbar.dmi'
		icon_state="Bolsa"
		locc = "18,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/CheckBolsa)()

	Guilda
		icon='hotbar.dmi'
		icon_state="Guild"
		locc = "20,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/GuildCommand)()

	SkillTree
		icon='hotbar.dmi'
		icon_state="Skill"
		locc = "19,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/OpenTree)()


	Chat
		icon='hotbar.dmi'
		icon_state="Chat"
		locc = "6,2"
		Click()
			var/mob/M=usr
			call(M,/mob/verb/Falar)()

	Opcoes
		icon='hotbar.dmi'
		icon_state="Options"
		locc = "5,2"

	vazio1
		icon='hotbar.dmi'
		icon_state ="vazio"
		locc = "9,2"

	vazio2
		icon='hotbar.dmi'
		icon_state ="vazio"
		locc = "10,2"

	vazio3
		icon='hotbar.dmi'
		icon_state ="vazio"
		locc = "11,2"

	vazio4
		icon='hotbar.dmi'
		icon_state ="vazio"
		locc = "12,2"

	vazio5
		icon='hotbar.dmi'
		icon_state ="vazio"
		locc = "13,2"

	quit
		icon='hotbar.dmi'
		icon_state="quit"
		locc = "21,20"
		Click()
			switch(alert("Você tem certeza ?","Deslogar","Deslogar","Sair","Cancelar"))
				if("Deslogar")
					winshow(usr, "Background",1)
					var/mob/M=usr
					usr.Logged=0
					call(M,/mob/proc/Salvar)()
					call(M,/mob/proc/Deslogar)()
					call(M,/client/Del)()
				if("Sair")
					call(usr,/mob/Logout)()
					winset(usr, null, "command=.quit")
					return
				if("Cancelar")
					return
				else
					return

// ------------- Spells --------------//
// Level 1 //
	Corte
		icon='STIcon.dmi'
		icon_state="Corte"
		locc = "9,2"

	Corte2
		icon='STIcon.dmi'
		icon_state="Corte2"
		locc = "9,2"

	Atirar
		icon='STIcon.dmi'
		icon_state="Atirar"
		locc = "9,2"

	Esfera
		icon='STIcon.dmi'
		icon_state="Esfera"
		locc = "9,2"

// Level 2 //

	CorteSangrento
		icon='STIcon.dmi'
		icon_state="Corte Sangrento"
		locc = "10,2"

	Ultimo_Recurso
		icon='STIcon.dmi'
		icon_state="Último Recurso"
		locc = "10,2"

	FlechaTrovao
		icon='STIcon.dmi'
		icon_state="FlechaTrovão"
		locc = "10,2"

	FlechaDrenagem
		icon='STIcon.dmi'
		icon_state="FlechaDrenagem"
		locc = "10,2"

	Salto
		icon='STIcon.dmi'
		icon_state="Salto"
		locc = "10,2"

	Flecha_Envenenada
		icon='STIcon.dmi'
		icon_state="Flecha Envenenada"
		locc = "10,2"

	Corte_Venenoso
		icon='STIcon.dmi'
		icon_state="CorteVenenoso"
		locc = "10,2"

	RoubaHP
		icon='STIcon.dmi'
		icon_state="RoubaHP"
		locc = "10,2"

	AtkMultiplo
		icon='STIcon.dmi'
		icon_state="AtkMultiplo"
		locc = "10,2"

	RoubaMP
		icon='STIcon.dmi'
		icon_state="RoubaMP"
		locc = "10,2"

	InvestidaA
		icon='STIcon.dmi'
		icon_state="InvestidaA"
		locc = "10,2"

	Provocar
		icon='STIcon.dmi'
		icon_state="Provocar"
		locc = "10,2"

	Bola_de_Fogo
		icon='STIcon.dmi'
		icon_state="Bola de Fogo"
		locc = "10,2"

	Arremesso_de_Terra
		icon='STIcon.dmi'
		icon_state="Arremesso de Terra"
		locc = "10,2"

	Investida5
		icon='STIcon.dmi'
		icon_state="Investida"
		locc = "10,2"

// Level 3 //

	Velocidade_Heroica
		icon='STIcon.dmi'
		icon_state="velocidade heroica"
		locc = "11,2"
	Bash
		icon='STIcon.dmi'
		icon_state="Bash"
		locc = "11,2"

	Corte_Lunar
		icon='STIcon.dmi'
		icon_state="lunar"
		locc = "11,2"

	Corte_Solar
		icon='STIcon.dmi'
		icon_state="solar"
		locc = "11,2"

	Rajada
		icon='STIcon.dmi'
		icon_state="Rajada"
		locc = "11,2"

	Encravar
		icon='STIcon.dmi'
		icon_state="Encravar"
		locc = "11,2"

	Invisibilidade
		icon='STIcon.dmi'
		icon_state="Invisibilidade"
		locc = "11,2"

	Emboscada
		icon='STIcon.dmi'
		icon_state="Emboscada"
		locc = "11,2"

	CorteRapido
		icon='STIcon.dmi'
		icon_state="CorteRápido"
		locc = "11,2"

	RoubaMPA
		icon='STIcon.dmi'
		icon_state="RoubaMPA"
		locc = "11,2"

	RoubaHPA
		icon='STIcon.dmi'
		icon_state="RoubaHPA"
		locc = "11,2"

	Furia_em_Massa
		icon='STIcon.dmi'
		icon_state="Fúria em Massa"
		locc = "11,2"

	Furia_de_Poseidon
		icon='STIcon.dmi'
		icon_state="Fúria de Poseidon"
		locc = "11,2"

	Corte_Giratorio
		icon='STIcon.dmi'
		icon_state="Corte Giratório"
		locc = "11,2"

	Selo_de_Zeus
		icon='STIcon.dmi'
		icon_state="Selo de Zeus"
		locc = "11,2"

	Selo_de_Hades
		icon='STIcon.dmi'
		icon_state="Selo de Hades"
		locc = "11,2"

	Selo_de_Poseidon
		icon='STIcon.dmi'
		icon_state="Selo de Poseidon"
		locc = "11,2"

	Cura
		icon='STIcon.dmi'
		icon_state="Cura"
		locc = "11,2"

	Semente_da_Vida
		icon='STIcon.dmi'
		icon_state="Semente da Vida"
		locc = "11,2"

	Estacas_de_Gelo
		icon='STIcon.dmi'
		icon_state="Estacas de Gelo"
		locc = "11,2"

// Level 4 //

	Sentinela
		icon='STIcon.dmi'
		icon_state="Sentinela"
		locc = "12,2"

	Combo_Mortal
		icon='STIcon.dmi'
		icon_state="combo mortal"
		locc = "12,2"

	TiroPerfurante
		icon='STIcon.dmi'
		icon_state="Tiro Perfurante"
		locc = "12,2"

	Flecha_de_Fogo
		icon='STIcon.dmi'
		icon_state="FlechaFogo"
		locc = "12,2"

	Flecha_de_Gelo
		icon='STIcon.dmi'
		icon_state="FlechaGelo"
		locc = "12,2"

	Flecha_Divina
		icon='STIcon.dmi'
		icon_state="Flecha Divina"
		locc = "12,2"

	Huuma
		icon='STIcon.dmi'
		icon_state="Huuma"
		locc = "12,2"

	ParalisiaA
		icon='STIcon.dmi'
		icon_state="ParalisiaA"
		locc = "12,2"

	Kunai_Venenosa
		icon='STIcon.dmi'
		icon_state="KunaiVenenosa"
		locc = "12,2"

	Furia_de_Hades
		icon='STIcon.dmi'
		icon_state="Fúria de Hades"
		locc = "12,2"

	Furia_de_Zeus
		icon='STIcon.dmi'
		icon_state="Fúria de Zeus"
		locc = "12,2"

	Choque_Cismico
		icon='STIcon.dmi'
		icon_state="Choque Císmico"
		locc = "12,2"

	Onda_Eletrica
		icon='STIcon.dmi'
		icon_state="Onda Elétrica"
		locc = "12,2"

	Oracao
		icon='STIcon.dmi'
		icon_state="Oração"
		locc = "12,2"

	Raios
		icon='STIcon.dmi'
		icon_state="Raios"
		locc = "12,2"

	Grande_Cura
		icon='STIcon.dmi'
		icon_state="Cura Área"
		locc = "12,2"

	Impacto_de_Cura
		icon='STIcon.dmi'
		icon_state="Tempo Espaço"
		locc = "12,2"

	Tufao
		icon='STIcon.dmi'
		icon_state="Tufão"
		locc = "12,2"

	Tempestade
		icon='STIcon.dmi'
		icon_state="Tempestade"
		locc = "12,2"

// Level 5 //

	Investida
		icon='STIcon.dmi'
		icon_state="Investida"
		locc = "13,2"

	Espada_Bumerangue
		icon='STIcon.dmi'
		icon_state="espada bumerangue"
		locc = "13,2"

	Impacto_Meteoro
		icon='STIcon.dmi'
		icon_state="impacto meteoro"
		locc = "13,2"

	Flecha_Final
		icon='STIcon.dmi'
		icon_state="FlechaFinal"
		locc = "13,2"

	Chuva_de_Flechas
		icon='STIcon.dmi'
		icon_state="Chuva"
		locc = "13,2"

	Turbilhao_de_Laminas
		icon='STIcon.dmi'
		icon_state="Tuurbilhão de Lâminas"
		locc = "13,2"

	Executar
		icon='STIcon.dmi'
		icon_state="Execultar"
		locc = "13,2"

	Sacrificio
		icon='STIcon.dmi'
		icon_state="Sacrifício"
		locc = "13,2"

	Punho_de_Cronos
		icon='STIcon.dmi'
		icon_state="Punho deCronos"
		locc = "13,2"

	Explosao_de_Mana
		icon='STIcon.dmi'
		icon_state="Explosão de Mana"
		locc = "13,2"

	Ressureicao
		icon='STIcon.dmi'
		icon_state="Ressureição"
		locc = "13,2"

	Furia_da_Natureza
		icon='STIcon.dmi'
		icon_state="Fúria da Natureza"
		locc = "13,2"

	Chuva_de_Fogo
		icon='STIcon.dmi'
		icon_state="Chuva de Fogo"
		locc = "13,2"

	Chamado_do_Tumulo
		icon='STIcon.dmi'
		icon_state="Chamado do Túmulo"
		locc = "13,2"