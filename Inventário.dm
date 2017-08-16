obj/verb/Removera()
	set name= "Remover"
	set category = null
	src.Move(usr.loc)
	usr <<output("<b>Você removeu a [src.name]!<b>","Chat")
	usr.espaco-=1

obj/Armas/Ferramenta
	verb
		Equipar()
			set category=null
			set src in usr
			Equiparf()

		Desequipar()
			set category=null
			set src in usr
			Desequiparf()

		Remover()
			set category=null
			set src in usr
			Removerp()

	DblClick()
		if(usr.E1==src)
			Desequipar()
		else
			Equipar()

obj/Escudos
	verb
		Equipar()
			set category=null
			set src in usr
			Equipare()


		Desequipar()
			set category=null
			set src in usr
			Desequipare()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.E2==src)
			Desequipar()
		else
			Equipar()

obj/Armas/Espada
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparE()

		Desequipar()
			set category=null
			set src in usr
			Desequiparp()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.E1==src)
			Desequipar()
		else
			Equipar()


obj/Armas/Montante
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparEP()


		Desequipar()
			set category=null
			set src in usr
			DesequiparEP()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.E1==src)
			Desequipar()
		else
			Equipar()

obj/Armas/Arco
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparARC()


		Desequipar()
			set category=null
			set src in usr
			DesequiparARC()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.E1==src)
			Desequipar()
		else
			Equipar()

obj/Armas/Cajado
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparCa()


		Desequipar()
			set category=null
			set src in usr
			DesequiparCa()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.E1==src)
			Desequipar()
		else
			Equipar()


obj/Armas/Adaga
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparA()


		Desequipar()
			set category=null
			set src in usr
			DesequiparA()


		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(src in usr.contents)
			Equipar()
		else if(usr.E1!=null || usr.E2!=null)
			Desequipar()

obj/Elmo
	verb
		Equipar()
			set category=null
			set src in usr
			Equiparel()


		Desequipar()
			set category=null
			set src in usr
			Desequiparel()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Capacete==src)
			Desequipar()
		else
			Equipar()


obj/Armadura
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparARM()


		Desequipar()
			set category=null
			set src in usr
			DesequiparARM()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Armadura==src)
			Desequipar()
		else
			Equipar()

obj/Cota
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparCO()


		Desequipar()
			set category=null
			set src in usr
			DesequiparCO()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Armadura==src)
			Desequipar()
		else
			Equipar()


obj/BotaF
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparBOF()


		Desequipar()
			set category=null
			set src in usr
			DesequiparBOF()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Bota==src)
			Desequipar()
		else
			Equipar()

obj/Tunica
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparTU()


		Desequipar()
			set category=null
			set src in usr
			DesequiparTU()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Armadura==src)
			Desequipar()
		else
			Equipar()

obj/Cartola
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparCAP()


		Desequipar()
			set category=null
			set src in usr
			DesequiparCAP()



		Remover()
			set category=null
			set src in usr
			Removerp()

	DblClick()
		if(usr.Capacete==src)
			Desequipar()
		else
			Equipar()

obj/Chapeu
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparCH()


		Desequipar()
			set category=null
			set src in usr
			DesequiparCH()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Capacete==src)
			Desequipar()
		else
			Equipar()

obj/BotaL
	verb
		Equipar()
			set category=null
			set src in usr
			EquiparBL()


		Desequipar()
			set category=null
			set src in usr
			DesequiparBL()



		Remover()
			set category=null
			set src in usr
			Removerp()


	DblClick()
		if(usr.Bota==src)
			Desequipar()
		else
			Equipar()


mob/var/E1=null
mob/var/E2=null
mob/var
	Capacete=null
	Armadura=null
	Bota=null
	Anel1=null
	Anel2=null
	Colar=null





obj
	var
		strincrease=0
		Defincrease=0
		MPincrease=0
		Intincrease=0
		agiincrease=0





		// Espadas //


obj/Armas/Espada
	Espada_de_Madeira
		name="Espada de Madeira"
		icon = 'espada de madeira.dmi'
		strincrease=3
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+3"


	Espada_de_Cobre
		name="Espada de Cobre"
		icon = 'Espadas.dmi'
		icon_state="Cobre"
		strincrease=6
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+6"

	Espada_de_Bronze
		name="Espada de Bronze"
		icon = 'Espadas.dmi'
		icon_state="Bronze"
		strincrease=9
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+9"

	Espada_de_Ferro
		icon = 'Espadas.dmi'
		icon_state="Ferro"
		name="Espada de Ferro"
		strincrease=12
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+12"

	Espada_de_Bronze_Preto
		icon = 'Espadas.dmi'
		icon_state="Bronze Preto"
		name="Espada de Bronze Preto"
		strincrease=16
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+16"

	Espada_de_Aco
		icon = 'Espadas.dmi'
		icon_state="Aço"
		name="Espada de Aço"
		strincrease=20
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+20"

	Espada_de_Ouro
		icon = 'Espadas.dmi'
		icon_state="Ouro"
		name="Espada de Ouro"
		strincrease=25
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+25"

	Espada_de_Prata
		icon = 'Espadas.dmi'
		icon_state="Prata"
		name="Espada de Prata"
		strincrease=30
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+30"

	Espada_de_Electrum
		icon = 'Espadas.dmi'
		icon_state="Eléctrum"
		name="Espada de Eléctrum"
		strincrease=35
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+35"

	Espada_de_Aco_Escuro
		icon = 'Espadas.dmi'
		icon_state="Aço Escuro"
		name="Espada de Aço Escuro"
		strincrease=41
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+41"

	Espada_de_Meteoro
		icon = 'Espadas.dmi'
		icon_state="Meteoro"
		name="Espada de Meteoro"
		strincrease=47
		Defincrease=0
		Intincrease=0
		agiincrease=0
		desc="Força+47"


          //Arcos//

obj/Armas/Arco
	Arco_de_Madeira
		icon='Arcos2.dmi'
		icon_state="Madeira"
		name="Arco de Madeira"
		agiincrease=3
		Defincrease=0
		Intincrease=0
		strincrease=0
		desc="Agilidade+3"

	Arco_de_Cobre
		icon='Arcos2.dmi'
		icon_state="Cobre"
		name="Arco de Cobre"
		agiincrease=6
		Defincrease=0
		Intincrease=0
		strincrease=0
		desc="Agilidade+6"

	Arco_de_Bronze
		icon='Arcos2.dmi'
		icon_state="Bronze"
		name="Arco de Bronze"
		agiincrease=9
		Defincrease=0
		Intincrease=0
		strincrease=0
		desc="Agilidade+9"

	Arco_de_Ferro
		icon='Arcos2.dmi'
		icon_state="Ferro"
		name="Arco de Ferro"
		agiincrease=12
		Defincrease=0
		Intincrease=0
		strincrease=0
		desc="Agilidade+12"

	Arco_Venenoso
		icon = 'arco venenoso.dmi'
		name="Arco Venenoso"
		agiincrease=15
		Defincrease=0
		Intincrease=0
		strincrease=0
		desc="Agilidade+15"

	Arco_da_Honra
		icon='arco da honra.dmi'
		agiincrease=18
		Defincrease=6
		Intincrease=0
		strincrease=0

	Arco_de_Ossos
		icon='arco de ossos.dmi'
		agiincrease=21
		Defincrease=7
		Intincrease=0
		strincrease=0

	Arco_Demoniaco
		icon='arco demoniaco.dmi'
		agiincrease=27
		Defincrease=9
		Intincrease=0
		strincrease=0

	Arco_da_Morte
		icon='arco da morte.dmi'
		agiincrease=33
		Defincrease=11
		Intincrease=0
		strincrease=0





         //Cajados//


obj/Armas/Cajado
	Cajado_de_Madeira
		icon='Cajados.dmi'
		icon_state="Madeira"
		name="Cajado de Madeira"
		Intincrease=3
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+3"

	Cajado_de_Folhas
		icon='Cajados.dmi'
		icon_state="Folhas"
		name="Cajado de Folhas"
		Intincrease=6
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+6"

	Cajado_da_Natureza
		icon='Cajados.dmi'
		icon_state="Natureza"
		name="Cajado da Natureza"
		Intincrease=9
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+9"

	Cajado_de_Ferro
		icon='Cajados.dmi'
		icon_state="Ferro"
		name="Cajado de Ferro"
		Intincrease=12
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+12"

	Cajado_de_Nevoa
		icon='Cajados.dmi'
		icon_state="Névoa"
		name="Cajado das Névoas"
		Intincrease=16
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+16"

	Cajado_de_Anciao
		icon='Cajados.dmi'
		icon_state="Ancião"
		name="Cajado Ancião"
		Intincrease=20
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+20"

	Cajado_de_Peregrino
		icon='Cajados.dmi'
		icon_state="Peregrino"
		name="Cajado do Peregrino"
		Intincrease=25
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+25"

	Cajado_de_Sol
		icon='Cajados.dmi'
		icon_state="Sol"
		name="Cajado do Sol"
		Intincrease=30
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+30"

	Cajado_de_Ancestral
		icon='Cajados.dmi'
		icon_state="Ancestral"
		name="Cajado Ancestral"
		Intincrease=35
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+35"

	Cajado_de_Magma
		icon='Cajados.dmi'
		icon_state="Magma"
		name="Cajado de Magma"
		Intincrease=41
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+41"

	Cajado_de_Tausend
		icon='Cajados.dmi'
		icon_state="Tausend"
		name="Cajado de Tausend"
		Intincrease=47
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+47"


	 // Adagas //

obj/Armas/Adaga
	Adaga_de_Madeira
		icon='Espadas.dmi'
		icon_state="MADEIRA"
		strincrease=0
		Defincrease=0
		Intincrease=0
		agiincrease=2

	Adaga_de_Cobre
		icon='Espadas.dmi'
		icon_state="COBRE"
		strincrease=0
		Defincrease=0
		Intincrease=0
		agiincrease=4

	Adaga_de_Bronze
		icon='Espadas.dmi'
		icon_state="BRONZE"
		strincrease=0
		Defincrease=0
		Intincrease=0
		agiincrease=5

	Adaga_de_Ferro
		icon='Espadas.dmi'
		icon_state="FERRO"
		strincrease=0
		Defincrease=0
		Intincrease=0
		agiincrease=7


	 // Montante //

obj/Armas/Montante
	Montante_de_Madeira
		icon='Espadas.dmi'
		icon_state="madeira"
		strincrease=5
		Defincrease=0
		Intincrease=0
		agiincrease=0

	Montante_de_Cobre
		icon='Espadas.dmi'
		icon_state="cobre"
		strincrease=9
		Defincrease=0
		Intincrease=0
		agiincrease=0

	Montante_de_Bronze
		icon='Espadas.dmi'
		icon_state="bronze"
		strincrease=14
		Defincrease=0
		Intincrease=0
		agiincrease=0

	Montante_de_Ferro
		icon='Espadas.dmi'
		icon_state="ferro"
		strincrease=18
		Defincrease=0
		Intincrease=0
		agiincrease=0



     // Ferramentas //

obj/Armas/Ferramenta
	Vara_de_Pesca
		icon='pesca.dmi'
		name="Vara de Pesca"
		Intincrease=3
		Defincrease=0
		agiincrease=0
		strincrease=0
		desc="Inteligência+3"

	Machado_de_Lenhador
		icon='Machado de Lenha.dmi'
		name="Machado de Lenhador"
		Defincrease=0
		strincrease=3
		agiincrease=0
		Intincrease=0
		desc="Força+3"

	Picareta
		icon='picareta.dmi'
		name="Picareta"
		Defincrease=0
		strincrease=3
		agiincrease=0
		Intincrease=0
		desc="Força+3"

	Enxada
		icon='Agro.dmi'
		icon_state="Enxada"
		name="Enxada"
		Defincrease=0
		strincrease=3
		agiincrease=0
		Intincrease=0
		desc="Força+3"

	Machete
		icon='faca.dmi'
		name="Machete"
		Defincrease=0
		strincrease=3
		agiincrease=0
		Intincrease=0
		desc="Força+3"

	// Escudos //


obj/Escudos
	Escudo_de_Madeira
		icon='Escudos.dmi'
		icon_state="madeira"
		agiincrease=0
		Defincrease=3
		Intincrease=0
		strincrease=0
		desc="Defesa+3"

	Escudo_de_Cobre
		icon='Escudos.dmi'
		icon_state="cobre"
		agiincrease=0
		Defincrease=6
		Intincrease=0
		strincrease=0
		desc="Defesa+6"

	Escudo_de_Bronze
		icon='Escudos.dmi'
		icon_state="bronze"
		agiincrease=0
		Defincrease=10
		Intincrease=0
		strincrease=0
		desc="Defesa+10"

	Escudo_de_Ferro
		icon='Escudos.dmi'
		icon_state="ferro"
		agiincrease=0
		Defincrease=14
		Intincrease=0
		strincrease=0
		desc="Defesa+14"

	//  Elmos //

obj/Elmo
	Elmo_de_Cobre
		icon='Elmo.dmi'
		icon_state="Cobre"
		agiincrease=0
		Defincrease=3
		Intincrease=0
		strincrease=0
		desc="Defesa+3"

	Elmo_de_Bronze
		icon='Elmo.dmi'
		icon_state="Bronze"
		agiincrease=0
		Defincrease=5
		Intincrease=0
		strincrease=0
		desc="Defesa+5"

	Elmo_de_Ferro
		icon='Elmo.dmi'
		icon_state="Ferro"
		agiincrease=0
		Defincrease=8
		Intincrease=0
		strincrease=0
		desc="Defesa+8"


	//  Armaduras  //

obj/Armadura
	Armadura_de_Cobre
		icon='Armadura de Cobre.dmi'
		agiincrease=0
		Defincrease=7
		Intincrease=0
		strincrease=0
		desc="Defesa+7"

	Armadura_de_Bronze
		icon='Armadura de Bronze.dmi'
		agiincrease=0
		Defincrease=12
		Intincrease=0
		strincrease=0
		desc="Defesa+12"

	Armadura_de_Ferro
		icon='Armadura de Ferro.dmi'
		agiincrease=0
		Defincrease=17
		Intincrease=0
		strincrease=0
		desc="Defesa+17"


	//  Cotas  //

obj/Cota
	Cota_de_Cobra
		icon='Cota de Cobra.dmi'
		agiincrease=0
		Defincrease=5
		Intincrease=0
		strincrease=0
		desc="Defesa+5"

	Cota_de_Lobo
		icon='Cota de Lobo.dmi'
		agiincrease=0
		Defincrease=8
		Intincrease=0
		strincrease=0
		desc="Defesa+8"

	Cota_de_Tigre
		icon='Cota de Tigre.dmi'
		agiincrease=0
		Defincrease=12
		Intincrease=0
		strincrease=0
		desc="Defesa+12"


	//  BotasF  //

obj/BotaF
	Bota_de_Cobre
		icon='Bota de Cobre.dmi'
		agiincrease=0
		Defincrease=2
		Intincrease=0
		strincrease=0
		desc="Defesa+2"

	Bota_de_Bronze
		icon='Bota de Bronze.dmi'
		agiincrease=0
		Defincrease=4
		Intincrease=0
		strincrease=0
		desc="Defesa+4"

	Bota_de_Ferro
		icon='Bota de Ferro.dmi'
		agiincrease=0
		Defincrease=6
		Intincrease=0
		strincrease=0
		desc="Defesa+6"


	//  Túnicas  //

obj/Tunica
	Tunica_de_La
		name="Túnica de Lã"
		icon='Túnica de Lã.dmi'
		agiincrease=0
		Defincrease=3
		Intincrease=0
		strincrease=0
		desc="Defesa+3"

	Tunica_de_Seda
		name="Túnica de Seda"
		icon='Túnica de Seda.dmi'
		agiincrease=0
		Defincrease=6
		Intincrease=0
		strincrease=0
		desc="Defesa+6"

	Tunica_de_Rubrosa
		name="Túnica de Rubrosa"
		icon='Túnica de Rubrosa.dmi'
		agiincrease=0
		Defincrease=9
		Intincrease=0
		strincrease=0
		desc="Defesa+9"

	Tunica_de_Umburarna
		name="Túnica de Umburarna"
		icon='Túnica de Umburarna.dmi'
		agiincrease=0
		Defincrease=13
		Intincrease=0
		strincrease=0
		desc="Defesa+13"

	Tunica_de_Aesir
		name="Túnica de Aesir"
		icon='Túnica de Aesir.dmi'
		agiincrease=0
		Defincrease=17
		Intincrease=0
		strincrease=0
		desc="Defesa+17"

	Tunica_de_Alpineia
		name="Túnica de Alpineia"
		icon='Túnica de Alpineia.dmi'
		agiincrease=0
		Defincrease=22
		Intincrease=0
		strincrease=0
		desc="Defesa+22"

	Tunica_de_Coeda
		name="Túnica de Coeda"
		icon='Túnica de Coeda.dmi'
		agiincrease=0
		Defincrease=27
		Intincrease=0
		strincrease=0
		desc="Defesa+27"

	Tunica_de_Catalosia
		name="Túnica de Catalosia"
		icon='Túnica de Catalosia.dmi'
		agiincrease=0
		Defincrease=33
		Intincrease=0
		strincrease=0
		desc="Defesa+33"

	Tunica_de_Dutron
		name="Túnica de Dutron"
		icon='Túnica de Dutron.dmi'
		agiincrease=0
		Defincrease=39
		Intincrease=0
		strincrease=0
		desc="Defesa+39"

	Tunica_de_Ordog
		name="Túnica de Ordog"
		icon='Túnica de Ordog.dmi'
		agiincrease=0
		Defincrease=45
		Intincrease=0
		strincrease=0
		desc="Defesa+45"

	//  Capuz  //

obj/Cartola
	Cartola_de_La
		name="Cartola de Lã"
		icon='Capuz de Lã.dmi'
		agiincrease=0
		Defincrease=1
		Intincrease=0
		strincrease=0
		desc="Defesa+1"

	Cartola_de_Seda
		name="Cartola de Seda"
		icon='Capuz de Seda.dmi'
		agiincrease=0
		Defincrease=3
		Intincrease=0
		strincrease=0
		desc="Defesa+3"

	Cartola_de_Rubrosa
		name="Cartola de Rubrosa"
		icon='Capuz de Rubrosa.dmi'
		agiincrease=0
		Defincrease=5
		Intincrease=0
		strincrease=0
		desc="Defesa+5"

	Cartola_de_Umburarna
		name="Cartola de Umburarna"
		icon='Capuz de Umburarna.dmi'
		agiincrease=0
		Defincrease=8
		Intincrease=0
		strincrease=0
		desc="Defesa+8"

	Cartola_de_Aesir
		name="Cartola de Aesir"
		icon='Capuz de Aesir.dmi'
		agiincrease=0
		Defincrease=11
		Intincrease=0
		strincrease=0
		desc="Defesa+11"

	Cartola_de_Alpineia
		name="Cartola de Alpineia"
		icon='Capuz de Alpineia.dmi'
		agiincrease=0
		Defincrease=15
		Intincrease=0
		strincrease=0
		desc="Defesa+15"

	Cartola_de_Coeda
		name="Cartola de Coeda"
		icon='Capuz de Coeda.dmi'
		agiincrease=0
		Defincrease=19
		Intincrease=0
		strincrease=0
		desc="Defesa+19"

	Cartola_de_Coeda
		name="Cartola de Catalosia"
		icon='Capuz de Catalosia.dmi'
		agiincrease=0
		Defincrease=23
		Intincrease=0
		strincrease=0
		desc="Defesa+23"

	Cartola_de_Dutron
		name="Cartola de Dutron"
		icon='Capuz de Dutron.dmi'
		agiincrease=0
		Defincrease=28
		Intincrease=0
		strincrease=0
		desc="Defesa+28"

	Cartola_de_Ordog
		name="Cartola de Ordog"
		icon='Capuz de Ordog.dmi'
		agiincrease=0
		Defincrease=33
		Intincrease=0
		strincrease=0
		desc="Defesa+33"

	//  Chapéus  //

obj/Chapeu
	Chapeu_de_Cobra
		name="Chapéu de Cobra"
		icon='Chapéu de Cobra.dmi'
		agiincrease=0
		Defincrease=2
		Intincrease=0
		strincrease=0
		desc="Defesa+2"

	Chapeu_de_Lobo
		name="Chapéu de Lobo"
		icon='Chapéu de Lobo.dmi'
		agiincrease=0
		Defincrease=4
		Intincrease=0
		strincrease=0
		desc="Defesa+4"

	Chapeu_de_Tigre
		name="Chapéu de Tigre"
		icon='Chapéu de Tigre.dmi'
		agiincrease=0
		Defincrease=6
		Intincrease=0
		strincrease=0
		desc="Defesa+6"

	// Bota Leve //

obj/BotaL
	Bota_de_Cobra
		icon='Elmo.dmi'
		icon_state="BCobra"
		agiincrease=0
		Defincrease=1
		Intincrease=0
		strincrease=0
		desc="Defesa+1"

	Bota_de_Lobo
		icon='Elmo.dmi'
		icon_state="BLobo"
		agiincrease=0
		Defincrease=3
		Intincrease=0
		strincrease=0
		desc="Defesa+3"

	Bota_de_Tigre
		icon='Elmo.dmi'
		icon_state="BTigre"
		agiincrease=0
		Defincrease=5
		Intincrease=0
		strincrease=0
		desc="Defesa+5"