mob/verb/OpenTree()
	set hidden=1
	if(usr.wp==1)
		usr<<output("[usr.Perk]","perk")
	if(usr.wp==2)
		usr<<output("[usr.Perk]","perk2")
	if(usr.wp==3)
		usr<<output("[usr.Perk]","perk3")
	if(usr.wp==4)
		usr<<output("[usr.Perk]","perk4")
	if(usr.wp==5)
		usr<<output("[usr.Perk]","perk5")
	if(usr.wp==1)
		if(usr.STAtiva==0)
			usr.STAtiva=1
			winshow(usr,"SkillTree1")
			DescattA()
		else
			winshow(usr,"SkillTree1",0)
			usr.STAtiva=0
			return
	if(usr.wp==2)
		if(usr.STAtiva==0)
			usr.STAtiva=1
			winshow(usr,"SkillTree2")
			DescattB()
		else
			winshow(usr,"SkillTree2",0)
			usr.STAtiva=0
			return
	if(usr.wp==3)
		if(usr.STAtiva==0)
			usr.STAtiva=1
			winshow(usr,"SkillTree3")
			DescattC()
		else
			winshow(usr,"SkillTree3",0)
			usr.STAtiva=0
	if(usr.wp==4)
		if(usr.STAtiva==0)
			usr.STAtiva=1
			winshow(usr,"SkillTree4")
			DescattD()
		else
			winshow(usr,"SkillTree4",0)
			usr.STAtiva=0
	if(usr.wp==5)
		if(usr.STAtiva==0)
			usr.STAtiva=1
			DescattE()
			winshow(usr,"SkillTree5")
		else
			winshow(usr,"SkillTree5",0)
			usr.STAtiva=0

	else
		return

mob/proc/CheckTreeKnight()

// 1

	if(ST1>=1)
		usr<<output('Atk & Def +4.dmi',"2")
	if(ST1>=2)
		usr<<output('Velocidade Heróica.dmi',"3")
	if(ST1>=3)
		usr<<output('Bash.dmi',"4-1")
		usr<<output('Lunar.dmi',"4-2")
	if(ST1>=4)
		usr<<output('Modo Sentinela.dmi',"5-1")
	if(ST1>=5)
		usr<<output('Vida + 100.dmi',"6-1")
	if(ST1>=6)
		usr<<output('Investida.dmi',"7-1")
	if(ST1>=7)
		usr<<output('Anti-Flecha.dmi',"8-1")
	if(ST1>=8)
		usr<<output('Anti-Magia.dmi',"9-1")
	if(ST1>=9)
		usr<<output('Deflect.dmi',"10-1")
	if(ST1==0)
		usr<<output(,"2")
		usr<<output(,"3")
		usr<<output(,"4-1")
		usr<<output(,"5-1")
		usr<<output(,"6-1")
		usr<<output(,"7-1")
		usr<<output(,"8-1")
		usr<<output(,"9-1")
		usr<<output(,"10-1")




// 2

	if(ST2>=4)
		usr<<output('Solar.dmi',"5-2")
	if(ST2>=5)
		usr<<output('Atk +8.dmi',"6-2")
	if(ST2>=6)
		usr<<output('Combo Mortal.dmi',"7-2")
	if(ST2>=7)
		usr<<output('URecurso.dmi',"8-2")
	if(ST2>=8)
		usr<<output('Espada Bumerangue.dmi',"9-2")
	if(ST2>=9)
		usr<<output('Impacto Meteoro.dmi',"10-2")

	if(ST2==0)
		usr<<output(,"4-2")
		usr<<output(,"5-2")
		usr<<output(,"6-2")
		usr<<output(,"7-2")
		usr<<output(,"8-2")
		usr<<output(,"9-2")
		usr<<output(,"10-2")

///////////////////////////////////////////////////////////////////////

// Archer
mob/proc/CheckTreeArcher()

	if(ST1>=1)
		usr<<output('Rajada.dmi',"2b")
	if(ST1>=2)
		usr<<output('Arqueirobuff.dmi',"3b")
	if(ST1>=3)
		usr<<output('BuffAgilidade.dmi',"4b")
	if(ST1>=4)
		usr<<output('FlechaE.dmi',"5-1b")
		usr<<output('FlechaDre.dmi',"5-2b")
	if(ST1>=5)
		usr<<output('FlechaF.dmi',"6-1b")
	if(ST1>=6)
		usr<<output('BuffAgilidade.dmi',"7-1b")
	if(ST1>=7)
		usr<<output('FlechaG.dmi',"8-1b")
	if(ST1>=8)
		usr<<output('FlechaD.dmi',"9-1b")
	if(ST1>=9)
		usr<<output('Chuva.dmi',"10-1b")
	if(ST1==0)
		usr<<output(,"2b")
		usr<<output(,"3b")
		usr<<output(,"4b")
		usr<<output(,"5-1b")
		usr<<output(,"6-1b")
		usr<<output(,"7-1b")
		usr<<output(,"8-1b")
		usr<<output(,"9-1b")
		usr<<output(,"10-1b")


// 2  //

	if(ST2>=5)
		usr<<output('BuffAgilidade.dmi',"6-2b")
	if(ST2>=6)
		usr<<output('Encravar.dmi',"7-2b")
	if(ST2>=7)
		usr<<output('TiroP.dmi',"8-2b")
	if(ST2>=8)
		usr<<output('Salto.dmi',"9-2b")
	if(ST2>=9)
		usr<<output('FlechaFinal.dmi',"10-2b")

	if(ST2==0)
		usr<<output(,"5-2b")
		usr<<output(,"6-2b")
		usr<<output(,"7-2b")
		usr<<output(,"8-2b")
		usr<<output(,"9-2b")
		usr<<output(,"10-2b")


///////////////////////////////////////////////////////////////////////

// Mage
mob/proc/CheckTreeMage()

	if(ST1>=1)
		usr<<output('Estacas de Gelo.dmi',"21c")
		usr<<output('Cure.dmi',"22c")
	if(ST1>=2)
		usr<<output('MP ou INT+.dmi',"31c")
	if(ST1>=3)
		usr<<output('ATerra.dmi',"41c")
	if(ST1>=4)
		usr<<output('MP ou INT+.dmi',"51c")
	if(ST1>=5)
		usr<<output('Tufão.dmi',"61c")
	if(ST1>=6)
		usr<<output('Tempestad.dmi',"71c")
	if(ST1>=7)
		usr<<output('Chuva de Fogo.dmi',"81c")
	if(ST1>=8)
		usr<<output('FNatureza.dmi',"91c")
	if(ST1>=9)
		usr<<output('Chamado do Túmulo.dmi',"101c")
	if(ST1==0)
		usr<<output(,"21c")
		usr<<output(,"31c")
		usr<<output(,"41c")
		usr<<output(,"51c")
		usr<<output(,"61c")
		usr<<output(,"71c")
		usr<<output(,"81c")
		usr<<output(,"91c")
		usr<<output(,"101c")

/////// 2 //////////////////////

	if(ST2>=2)
		usr<<output('MP ou INT+.dmi',"32c")
	if(ST2>=3)
		usr<<output('SVida.dmi',"42c")
	if(ST2>=4)
		usr<<output('MP ou INT+.dmi',"52c")
	if(ST2>=5)
		usr<<output('Rays.dmi',"62c")
	if(ST2>=6)
		usr<<output('Cura Área.dmi',"72c")
	if(ST2>=7)
		usr<<output('Tempo Espaço.dmi',"82c")
	if(ST2>=8)
		usr<<output('Explosão de Mana.dmi',"92c")
	if(ST2>=9)
		usr<<output('Ressureição.dmi',"102c")
	if(ST2==0)
		usr<<output(,"22c")
		usr<<output(,"32c")
		usr<<output(,"42c")
		usr<<output(,"52c")
		usr<<output(,"62c")
		usr<<output(,"72c")
		usr<<output(,"82c")
		usr<<output(,"92c")
		usr<<output(,"102c")


///////////////////////////////////////////////////////////////////////

// Assassin
mob/proc/CheckTreeAssassin()

	if(ST1>=1)
		usr<<output('Invisibilidade.dmi',"21d")
	if(ST1>=2)
		usr<<output('RoubaMP.dmi',"31d")
	if(ST1>=3)
		usr<<output('BuffAgilidade.dmi',"41d")
	if(ST1>=4)
		usr<<output('RoubaHP.dmi',"51d")
	if(ST1>=5)
		usr<<output('Kunai.dmi',"61d")
	if(ST1>=6)
		usr<<output('BuffVelocidade.dmi',"71d")
	if(ST1>=7)
		usr<<output('RoubaMPA.dmi',"81d")
	if(ST1>=8)
		usr<<output('RoubaHPA.dmi',"91d")
	if(ST1>=9)
		usr<<output('Executar.dmi',"101d")
	if(ST1==0)
		usr<<output(,"21d")
		usr<<output(,"31d")
		usr<<output(,"41d")
		usr<<output(,"51d")
		usr<<output(,"61d")
		usr<<output(,"71d")
		usr<<output(,"81d")
		usr<<output(,"91d")
		usr<<output(,"101d")

/////// 2 //////////////////////

	if(ST2>=1)
		usr<<output('Invisibilidade.dmi',"22d")
	if(ST2>=2)
		usr<<output('BuffVelocidade.dmi',"32d")
	if(ST2>=3)
		usr<<output('BuffAgilidade.dmi',"42d")
	if(ST2>=4)
		usr<<output('Emboscada.dmi',"52d")
	if(ST2>=5)
		usr<<output('RoubaHP.dmi',"62d")
	if(ST2>=6)
		usr<<output('Fuuma.dmi',"72d")
	if(ST2>=7)
		usr<<output('ParalisiaA.dmi',"82d")
	if(ST2>=8)
		usr<<output('CorteRápido.dmi',"92d")
	if(ST2>=9)
		usr<<output('Turbilhão.dmi',"102d")
	if(ST2==0)
		usr<<output(,"22d")
		usr<<output(,"32d")
		usr<<output(,"42d")
		usr<<output(,"52d")
		usr<<output(,"62d")
		usr<<output(,"72d")
		usr<<output(,"82d")
		usr<<output(,"92d")
		usr<<output(,"102d")


///////////////////////////////////////////////////////////////////////

// Beserker
mob/proc/CheckTreeBeserker()

	if(ST1>=1)
		usr<<output('Corte Giratório.dmi',"21e")
		usr<<output('InvestidaA.dmi',"22e")
	if(ST1>=2)
		usr<<output('Atk +8.dmi',"31e")
	if(ST1>=3)
		usr<<output('SeloZ.dmi',"41e")
	if(ST1>=4)
		usr<<output('Choque Císmico.dmi',"51e")
	if(ST1>=5)
		usr<<output('SeloP.dmi',"61e")
	if(ST1>=6)
		usr<<output('SeloH.dmi',"71e")
	if(ST1>=7)
		usr<<output('Onda Elétrica.dmi',"81e")
	if(ST1>=8)
		usr<<output('Prayer.dmi',"91e")
	if(ST1>=9)
		usr<<output('PunhoC.dmi',"101e")
	if(ST1==0)
		usr<<output(,"21e")
		usr<<output(,"31e")
		usr<<output(,"41e")
		usr<<output(,"51e")
		usr<<output(,"61e")
		usr<<output(,"71e")
		usr<<output(,"81e")
		usr<<output(,"91e")
		usr<<output(,"101e")

/////// 2 //////////////////////

	if(ST2>=2)
		usr<<output('Atk +8.dmi',"32e")
	if(ST2>=3)
		usr<<output('Atk+ Def-.dmi',"42e")
	if(ST2>=4)
		usr<<output('Taunt.dmi',"52e")
	if(ST2>=5)
		usr<<output('FúriaM.dmi',"62e")
	if(ST2>=6)
		usr<<output('FúriaP.dmi',"72e")
	if(ST2>=7)
		usr<<output('FúriaH.dmi',"82e")
	if(ST2>=8)
		usr<<output('FúriaZ.dmi',"92e")
	if(ST2>=9)
		usr<<output('Sacrifício.dmi',"102e")

	if(ST2==0)
		usr<<output(,"22e")
		usr<<output(,"32e")
		usr<<output(,"42e")
		usr<<output(,"52e")
		usr<<output(,"62e")
		usr<<output(,"72e")
		usr<<output(,"82e")
		usr<<output(,"92e")
		usr<<output(,"102e")

//------------------ Description ------------------//

mob/proc/GetSkillA1()
	var/A
	if(usr.ST1==0)
		A={"Corte Sangrento
		(Dano Mediano | Stun e Paralisia)"}
		return A
	if(usr.ST1==1)
		A={"Experiência de Batalha
		(Aumenta Ataque e Defesa)"}
		return A
	if(usr.ST1==2)
		A={"Velocidade Heróica
		(Bônus de Velocidade por 1 segundo)"}
		return A
	if(usr.ST1==3)
		A={"Escudada
		(Dano Baixo | Stun e Paralisia+)"}
		return A
	if(usr.ST1==4)
		A={"Modo Sentinela
		(Aumenta a defesa em 50% | Inibe Ataques)"}
		return A
	if(usr.ST1==5)
		A={"Vitalidade
		(Aumenta a Vida em 100 pontos)"}
		return A
	if(usr.ST1==6)
		A={"Investida
		(Dano Alto | Empurrão)"}
		return A
	if(usr.ST1==7)
		A={"Anti-Flecha
		(Diminui o dano tomado por flechas básicas)"}
		return A
	if(usr.ST1==8)
		A={"Anti-Magia
		(Diminui o dano tomado por magias básicas)"}
		return A
	if(usr.ST1==9)
		A={"Refletir
		(Diminui danos de ataque corpo-à-corpo)"}
		return A

mob/proc/GetSkillA2()
	var/A
	if(usr.ST2==4)
		A={"Corte Solar
		(Dano Alto)"}
		return A
	if(usr.ST2==5)
		A={"Técnicas de Combate
		(Aumenta o Ataque do personagem)"}
		return A
	if(usr.ST2==6)
		A={"Combo Mortal
		(Ataca repetidamente o alvo)"}
		return A
	if(usr.ST2==7)
		A={"Último Recurso
		(Aumenta as forças do personagem temporariamente)"}
		return A
	if(usr.ST2==8)
		A={"Espada Bumerangue
		(Dano Alto | Ataque Projétil)"}
		return A
	if(usr.ST2==9)
		A={"Impacto Meteoro
		(Dano Extremo)"}
		return A
	if(usr.ST1>=3)
		A={"Corte Lunar
		(Dano Mediano | Ataque Frontal)"}
		return A

mob/proc/GetSkillB1()
	var/A
	if(usr.ST1==0)
		A={"Flecha do Trovão
		(Dano Mediano | Projétil | Stun e Paralisia)"}
		return A
	if(usr.ST1==1)
		A={"Rajada
		(Atira flechas repetidamente)"}
		return A
	if(usr.ST1==2)
		A={"Pontaria Perfeita
		(Aumenta a Agilidade do personagem)"}
		return A
	if(usr.ST1==3)
		A={"Experiência de Combate
		(Aumenta a Agilidade do personagem)"}
		return A
	if(usr.ST1==4)
		A={"Flecha Venenosa
		(Dano Mediano | Projétil | Veneno)"}
		return A
	if(usr.ST1==5)
		A={"Flecha de Fogo
		(Dano Mediano+ | Projétil | Fogo)"}
		return A
	if(usr.ST1==6)
		A={"Profissionalismo
		(Aumenta a Agilidade)"}
		return A
	if(usr.ST1==7)
		A={"Flecha de Gelo
		(Dano Mediano+ | Projétil | Stun e Paralisia+)"}
		return A
	if(usr.ST1==8)
		A={"Flecha Divina
		(Dano Alto | Projétil | Teleguiado)"}
		return A
	if(usr.ST1==9)
		A={"Chuva de Flechas
		(Dano Alto | Dano em Tela)"}
		return A

mob/proc/GetSkillB2()
	var/A
	if(usr.ST2==5)
		A={"Táticas de Batalha
		(Aumenta a Agilidade)"}
		return A
	if(usr.ST2==6)
		A={"Encravar Flecha
		(Dano Alto | Movimentos Rápidos)"}
		return A
	if(usr.ST2==7)
		A={"Tiro Perfurante
		(Dano Alto+ | Projétil)"}
		return A
	if(usr.ST2==8)
		A={"Flecha Final
		(Dano Extremo | Projétil)"}
		return A
	if(usr.ST2==9)
		A={"Flecha de Drenagem
		(Dano Baixo | Projétil | Rouba HP)"}
		return A
	if(usr.ST1>=4)
		A={"Flecha de Drenagem
		(Dano Baixo | Projétil | Rouba HP)"}
		return A


mob/proc/GetSkillC1()
	var/A
	if(usr.ST1==0)
		A={"Bola de Fogo
		(Dano Mediano | Projétil)"}
		return A
	if(usr.ST1==1)
		A={"Estacas de Gelo
		(Dano Mediano | Projétil | Paralisia)"}
		return A
	if(usr.ST1==2)
		A={"Concentração
		(Aumenta Mana Máxima)"}
		return A
	if(usr.ST1==3)
		A={"Arremesso de Terra
		(Dano Baixo | Knockback)"}
		return A
	if(usr.ST1==4)
		A={"Estudos
		(Aumenta Inteligência)"}
		return A
	if(usr.ST1==5)
		A={"Tufão
		(Dano Alto | Área)"}
		return A
	if(usr.ST1==6)
		A={"Tempestade
		(Dano Alto | Dano em Tela)"}
		return A
	if(usr.ST1==7)
		A={"Fúria da Natureza
		(Dano Extremo+ | Projétil)"}
		return A
	if(usr.ST1==8)
		A={"Chuva de Fogo
		(Dano Extremo | Dano em Tela)"}
		return A
	if(usr.ST1==9)
		A={"Chamado do Túmulo
		(Dano Alto | Dano em Tela | Rouba HP)"}
		return A


mob/proc/GetSkillC2()
	var/A
	if(usr.ST2==2)
		A={"Concentração
		(Aumenta a Mana Máxima)"}
		return A
	if(usr.ST2==3)
		A={"Semente da Vida
		(Dano Baixo | Rouba HP)"}
		return A
	if(usr.ST2==4)
		A={"Meditação
		(Aumenta a Mana Máxima)"}
		return A
	if(usr.ST2==5)
		A={"Raios
		(Stun | Área+)"}
		return A
	if(usr.ST2==6)
		A={"Grande Cura
		(Cura Avançada | Área)"}
		return A
	if(usr.ST2==7)
		A={"Impacto de Cura
		(Cura Mediana | Paralisia | Área)"}
		return A
	if(usr.ST2==8)
		A={"Explosão de Mana
		(Dano Alto | Projétil)"}
		return A
	if(usr.ST2==9)
		A={"Ressureição
		(Cura Aliado quando morrer)"}
		return A
	if(usr.ST1>=1)
		A={"Cura
		(Cura Própria Básica)"}
		return A


mob/proc/GetSkillD1()
	var/A
	if(usr.ST1==0)
		A={"Ataque Múltiplo
		(Dano Mediano)"}
		return A
	if(usr.ST1==1)
		A={"Invisibilidade
		(Se torna invisível)"}
		return A
	if(usr.ST1==2)
		A={"Roubar Mana
		(Dano Baixo | Rouba MP)"}
		return A
	if(usr.ST1==3)
		A={"Destreza
		(Aumenta a Agilidade)"}
		return A
	if(usr.ST1==4)
		A={"Roubar Vida
		(Dano Baixo | Rouba HP)"}
		return A
	if(usr.ST1==5)
		A={"Kunai Venenosa
		(Dano Mediano+ | Projétil | Veneno)"}
		return A
	if(usr.ST1==6)
		A={"Corredor
		(Aumenta a Velocidade de Movimento)"}
		return A
	if(usr.ST1==7)
		A={"Absorver Mana
		(Dano Baixo | Rouba MP | Área)"}
		return A
	if(usr.ST1==8)
		A={"Absorver Vida
		(Dano Baixo | Rouba HP | Área)"}
		return A
	if(usr.ST1==9)
		A={"Executar
		(Dano Alto | Morte)"}
		return A

mob/proc/GetSkillD2()
	var/A
	if(usr.ST2==0)
		A={"Corte Venenoso
		(Dano Mediano | Veneno)"}
		return A
	if(usr.ST2==1)
		A={"Invisibilidade
		(Se torna invisível)"}
		return A
	if(usr.ST2==2)
		A={"Corredor
		(Aumenta a Velocidade de Movimento)"}
		return A
	if(usr.ST2==3)
		A={"Destreza
		(Aumenta a Agilidade)"}
		return A
	if(usr.ST2==4)
		A={"Emboscada
		(Dano Mediano+ | Atravessar)"}
		return A
	if(usr.ST2==5)
		A={"Roubar Vida
		(Dano Baixo | Rouba HP)"}
		return A
	if(usr.ST2==6)
		A={"Huuma
		(Dano Alto | Área | Projétil)"}
		return A
	if(usr.ST2==7)
		A={"Paralisar
		(Paralisia | Área)"}
		return A
	if(usr.ST2==8)
		A={"Corte Rápido
		(Dano Alto | Morte | Atravessar)"}
		return A
	if(usr.ST2==9)
		A={"Turbilhão de Lâminas
		(Dano Alto | Área)"}
		return A

mob/proc/GetSkillE1()
	var/A
	if(usr.ST1==0)
		A={"Investida
		(Aumenta a Velocidade temporáriamente)"}
		return A
	if(usr.ST1==1)
		A={"Corte Giratório
		(Dano Mediano | Área)"}
		return A
	if(usr.ST1==2)
		A={"Fúria
		(Aumenta o Ataque)"}
		return A
	if(usr.ST1==3)
		A={"Selo de Zeus
		(Aumenta a força e agilidade | Área)"}
		return A
	if(usr.ST1==4)
		A={"Choque Císmico
		(Dano Mediano+ | Área | Projétil)"}
		return A
	if(usr.ST1==5)
		A={"Selo de Poseidon
		(Paralisia | Área)"}
		return A
	if(usr.ST1==6)
		A={"Selo de Hades
		(Aumenta a defesa | Área)"}
		return A
	if(usr.ST1==7)
		A={"Onda Elétrica
		(Dano Mediano | Área)"}
		return A
	if(usr.ST1==8)
		A={"Oração
		(Ativa ressureição caso morrer em 20 segundos)"}
		return A
	if(usr.ST1==9)
		A={"Punho de Cronos
		(Dano Alto | Área | Projétil)"}
		return A

mob/proc/GetSkillE2()
	var/A
	if(usr.ST2==1)
		A={"Investida Atordoadora
		(Aumenta a velocidade | Stun)"}
		return A
	if(usr.ST2==2)
		A={"Fúria
		(Aumenta a força)"}
		return A
	if(usr.ST2==3)
		A={"Loucura
		(Aumenta o ataque e diminui a defesa)"}
		return A
	if(usr.ST2==4)
		A={"Provocar
		(Atrái atenção de monstros para você)"}
		return A
	if(usr.ST2==5)
		A={"Fúria em Massa
		(Stun | Área)"}
		return A
	if(usr.ST2==6)
		A={"Fúria de Poseidon
		(Dano Mediano | Stun | Área)"}
		return A
	if(usr.ST2==7)
		A={"Fúria de Hades
		(Dano Alto | Área)"}
		return A
	if(usr.ST2==8)
		A={"Fúria de Zeus
		(Dano Alto | Morte | Atravessar)"}
		return A
	if(usr.ST2==9)
		A={"Sacrifício
		(Aumenta muito o ataque e diminui a defesa)"}
		return A


// --------------- Description Command ---------------- //

mob/proc/DescattA()
	var/A=GetSkillA1()
	var/B=GetSkillA2()
	usr<<output("[A]","Desca1")
	usr<<output("[B]","Desca2")

mob/proc/DescattB()
	var/A=GetSkillB1()
	var/B=GetSkillB2()
	usr<<output("[A]","Descb1")
	usr<<output("[B]","Descb2")

mob/proc/DescattC()
	var/A=GetSkillC1()
	var/B=GetSkillC2()
	usr<<output("[A]","Descc1")
	usr<<output("[B]","Descc2")

mob/proc/DescattD()
	var/A=GetSkillD1()
	var/B=GetSkillD2()
	usr<<output("[A]","Descd1")
	usr<<output("[B]","Descd2")

mob/proc/DescattE()
	var/A=GetSkillE1()
	var/B=GetSkillE2()
	usr<<output("[A]","Desce1")
	usr<<output("[B]","Desce2")


////////////////// Comandos //////////////////////////

// Knight //


mob/verb/Ba1()
	if(usr.ST1==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=1
			usr.Spell2="Corte Sangrento"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>0)
		usr.Spell2="Corte Sangrento"
		usr.client.StartHotkeys()

mob/verb/Ba2()
	if(usr.ST1==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=2
			usr.str+=5
			usr.Def+=5
			CheckTreeKnight()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Ba3()
	if(usr.ST1==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=3
			usr.Spell3="Velocidade Heróica"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>2)
		usr.Spell3="Velocidade Heróica"
		usr.client.StartHotkeys()

mob/verb/Ba41()
	if(usr.ST1==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=4
			usr.Spell3="Escudada"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>3)
		usr.Spell3="Escudada"
		usr.client.StartHotkeys()

mob/verb/Ba51()
	if(usr.ST1==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=5
			usr.Spell4="Modo Sentinela"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>4)
		usr.Spell4="Modo Sentinela"
		usr.client.StartHotkeys()

mob/verb/Ba61()
	if(usr.ST1==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=6
			usr.MaxHP+=100
			usr.HP +=100
			CheckTreeKnight()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Ba71()
	if(usr.ST1==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=7
			usr.Spell5="Investida"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>6)
		usr.Spell5="Investida"
		usr.client.StartHotkeys()

mob/verb/Ba81()
	if(usr.ST1==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=8
			usr.AntiRange=1
			CheckTreeKnight()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Ba91()
	if(usr.ST1==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=9
			usr.AntiMagic=1
			CheckTreeKnight()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Ba101()
	if(usr.ST1==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=10
			usr.Deflect=1
			CheckTreeKnight()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")



mob/verb/Ba42()
	if(usr.ST1<3)
		return
	if(usr.ST1>=3 && usr.ST2==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=4
			usr.Spell3="Corte Lunar"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>3)
		usr.Spell3="Corte Lunar"
		usr.client.StartHotkeys()

mob/verb/Ba52()
	if(usr.ST2==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=5
			usr.Spell3="Corte Solar"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>4)
		usr.Spell3="Corte Solar"
		usr.client.StartHotkeys()

mob/verb/Ba62()
	if(usr.ST2==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=6
			usr.str+=10
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")


mob/verb/Ba72()
	if(usr.ST2==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=7
			usr.Spell4="Combo Mortal"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>6)
		usr.Spell4="Combo Mortal"
		usr.client.StartHotkeys()


mob/verb/Ba82()
	if(usr.ST2==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=8
			usr.Spell2="Último Recurso"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>7)
		usr.Spell2="Último Recurso"
		usr.client.StartHotkeys()

mob/verb/Ba92()
	if(usr.ST2==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=9
			usr.Spell5="Espada Bumerangue"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>8)
		usr.Spell5="Espada Bumerangue"
		usr.client.StartHotkeys()

mob/verb/Ba102()
	if(usr.ST2==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=10
			usr.Spell5="Impacto Meteoro"
			CheckTreeKnight()
			usr.client.StartHotkeys()
			DescattA()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>9)
		usr.Spell5="Impacto Meteoro"
		usr.client.StartHotkeys()



// Archer //////////////////////////////////////////////////////////////////////////////////


mob/verb/Bb1()
	if(usr.ST1==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=1
			usr.Spell2="Flecha do Trovão"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>0)
		usr.Spell2="Flecha do Trovão"
		usr.client.StartHotkeys()

mob/verb/Bb2()
	if(usr.ST1==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=2
			usr.Spell3="Rajada"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>1)
		usr.Spell3="Rajada"
		usr.client.StartHotkeys()

mob/verb/Bb3()
	if(usr.ST1==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=3
			usr.agi+=6
			CheckTreeArcher()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bb4()
	if(usr.ST1==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=4
			usr.agi+=5
			CheckTreeArcher()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bb51()
	if(usr.ST1==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=5
			usr.Spell2="Flecha Envenenada"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>4)
		usr.Spell2="Flecha Envenenada"
		usr.client.StartHotkeys()

mob/verb/Bb61()
	if(usr.ST1==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=6
			usr.Spell4="Flecha de Fogo"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>5)
		usr.Spell4="Flecha de Fogo"
		usr.client.StartHotkeys()

mob/verb/Bb71()
	if(usr.ST1==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=7
			usr.agi+=7
			CheckTreeArcher()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")


mob/verb/Bb81()
	if(usr.ST1==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=8
			usr.Spell4="Flecha de Gelo"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>7)
		usr.Spell4="Flecha de Gelo"
		usr.client.StartHotkeys()


mob/verb/Bb91()
	if(usr.ST1==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=9
			usr.Spell4="Flecha Divina"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>8)
		usr.Spell4="Flecha Divina"
		usr.client.StartHotkeys()

mob/verb/Bb101()
	if(usr.ST1==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=10
			usr.Spell5="Chuva de Flechas"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>9)
		usr.Spell5="Chuva de Flechas"
		usr.client.StartHotkeys()


// 2 ////////////////////////////////

mob/verb/Bb52()
	if(usr.ST1>=4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=5
			usr.Spell2="Flecha de Drenagem"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>4)
		usr.Spell2="Flecha de Drenagem"
		usr.client.StartHotkeys()

mob/verb/Bb62()
	if(usr.ST2==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=6
			usr.agi+=7
			CheckTreeArcher()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bb72()
	if(usr.ST2==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=7
			usr.Spell3="Encravar"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>6)
		usr.Spell3="Encravar"
		usr.client.StartHotkeys()

mob/verb/Bb82()
	if(usr.ST2==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=8
			usr.Spell4="Tiro Perfurante"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>7)
		usr.Spell4="Tiro Perfurante"
		usr.client.StartHotkeys()

mob/verb/Bb92()
	if(usr.ST2==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=9
			usr.Spell2="Salto"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>8)
		usr.Spell2="Salto"
		usr.client.StartHotkeys()

mob/verb/Bb102()
	if(usr.ST2==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=10
			usr.Spell5="Flecha Final"
			CheckTreeArcher()
			usr.client.StartHotkeys()
			DescattB()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk2")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>9)
		usr.Spell5="Flecha Final"
		usr.client.StartHotkeys()


//--- Mage ----------------------------------------------------------//

mob/verb/Bc1()
	if(usr.ST1==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=1
			usr.ST2=1
			usr.Spell2="Bola de Fogo"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>0)
		usr.Spell2="Bola de Fogo"
		usr.client.StartHotkeys()

mob/verb/Bc21()
	if(usr.ST1==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=2
			usr.Spell3="Estaca de Gelo"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>1)
		usr.Spell3="Estaca de Gelo"
		usr.client.StartHotkeys()

mob/verb/Bc31()
	if(usr.ST1==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=3
			usr.MaxMP+=100
			CheckTreeMage()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bc41()
	if(usr.ST1==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=4
			usr.Spell2="Arremesso de Terra"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>3)
		usr.Spell2="Arremesso de Terra"
		usr.client.StartHotkeys()

mob/verb/Bc51()
	if(usr.ST1==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=5
			usr.Int+=8
			CheckTreeMage()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bc61()
	if(usr.ST1==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=6
			usr.Spell4="Tufão"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>5)
		usr.Spell4="Tufão"
		usr.client.StartHotkeys()

mob/verb/Bc71()
	if(usr.ST1==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=7
			usr.Spell4="Tempestade"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>6)
		usr.Spell4="Tempestade"
		usr.client.StartHotkeys()

mob/verb/Bc81()
	if(usr.ST1==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=8
			usr.Spell5="Chuva de Fogo"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>7)
		usr.Spell5="Chuva de Fogo"
		usr.client.StartHotkeys()

mob/verb/Bc91()
	if(usr.ST1==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=9
			usr.Spell5="Fúria da Natureza"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>8)
		usr.Spell5="Fúria da Natureza"
		usr.client.StartHotkeys()

mob/verb/Bc101()
	if(usr.ST1==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=10
			usr.Spell5="Chamado do Túmulo"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>9)
		usr.Spell5="Chamado do Túmulo"
		usr.client.StartHotkeys()

// ---- 2 ----- //

mob/verb/Bc22()
	if(usr.ST2==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=2
			usr.Spell3="Cura"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>1)
		usr.Spell3="Cura"
		usr.client.StartHotkeys()

mob/verb/Bc32()
	if(usr.ST2==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=3
			usr.MaxMP+=100
			CheckTreeMage()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bc42()
	if(usr.ST2==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=4
			usr.Spell3="Semente da Vida"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>3)
		usr.Spell3="Semente da Vida"
		usr.client.StartHotkeys()

mob/verb/Bc52()
	if(usr.ST2==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=5
			usr.MaxMP+=150
			CheckTreeMage()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bc62()
	if(usr.ST2==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=6
			usr.Spell4="Raios"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>5)
		usr.Spell4="Raios"
		usr.client.StartHotkeys()

mob/verb/Bc72()
	if(usr.ST2==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=7
			usr.Spell4="Cura Área"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>6)
		usr.Spell4="Cura Área"
		usr.client.StartHotkeys()

mob/verb/Bc82()
	if(usr.ST2==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=8
			usr.Spell4="Tempo Espaço"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>7)
		usr.Spell4="Tempo Espaço"
		usr.client.StartHotkeys()

mob/verb/Bc92()
	if(usr.ST2==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=9
			usr.Spell5="Explosão de Mana"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>8)
		usr.Spell5="Explosão de Mana"
		usr.client.StartHotkeys()

mob/verb/Bc102()
	if(usr.ST2==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=10
			usr.Spell5="Ressurreição"
			CheckTreeMage()
			usr.client.StartHotkeys()
			DescattC()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk3")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>9)
		usr.Spell5="Ressurreição"
		usr.client.StartHotkeys()

//--- Assassin ------------------------------------------------------------------------//


mob/verb/Bd11()
	if(usr.ST1==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=1
			usr.Spell2="Ataque Múltiplo"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>0)
		usr.Spell2="Ataque Múltiplo"
		usr.client.StartHotkeys()

mob/verb/Bd21()
	if(usr.ST1==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=2
			usr.Spell3="Invisibilidade"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>1)
		usr.Spell3="Invisibilidade"
		usr.client.StartHotkeys()

mob/verb/Bd31()
	if(usr.ST1==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=3
			usr.Spell2="Roubar MP"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>2)
		usr.Spell2="Roubar MP"
		usr.client.StartHotkeys()

mob/verb/Bd41()
	if(usr.ST1==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=4
			usr.agi+=5
			CheckTreeAssassin()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")


mob/verb/Bd51()
	if(usr.ST1==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=5
			usr.Spell2="Roubar HP"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>4)
		usr.Spell2="Roubar HP"
		usr.client.StartHotkeys()

mob/verb/Bd61()
	if(usr.ST1==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=6
			usr.Spell4="Kunai Venenosa"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>5)
		usr.Spell4="Kunai Venenosa"
		usr.client.StartHotkeys()


mob/verb/Bd71()
	if(usr.ST1==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=7
			usr.step_size+=1
			CheckTreeAssassin()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Bd81()
	if(usr.ST1==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=8
			usr.Spell3="Roubar MP A"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>7)
		usr.Spell3="Roubar MP A"
		usr.client.StartHotkeys()

mob/verb/Bd91()
	if(usr.ST1==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=9
			usr.Spell3="Roubar HP A"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>8)
		usr.Spell3="Roubar HP A"
		usr.client.StartHotkeys()

mob/verb/Bd101()
	if(usr.ST1==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=10
			usr.Spell5="Executar"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>9)
		usr.Spell5="Executar"
		usr.client.StartHotkeys()

// --------------2---------------//

mob/verb/Bd12()
	if(usr.ST2==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=1
			usr.Spell2="Corte Venenoso"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>0)
		usr.Spell2="Corte Venenoso"
		usr.client.StartHotkeys()


mob/verb/Bd22()
	if(usr.ST2==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=2
			usr.Spell3="Invisibilidade"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>1)
		usr.Spell3="Invisibilidade"
		usr.client.StartHotkeys()


mob/verb/Bd32()
	if(usr.ST2==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=3
			usr.step_size+=1
			CheckTreeAssassin()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")


mob/verb/Bd42()
	if(usr.ST2==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=4
			usr.agi+=5
			CheckTreeAssassin()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")


mob/verb/Bd52()
	if(usr.ST2==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=5
			usr.Spell3="Emboscada"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>4)
		usr.Spell3="Emboscada"
		usr.client.StartHotkeys()


mob/verb/Bd62()
	if(usr.ST2==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=6
			usr.Spell2="Roubar HP"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>5)
		usr.Spell2="Roubar HP"
		usr.client.StartHotkeys()


mob/verb/Bd72()
	if(usr.ST2==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=7
			usr.Spell4="Huuma"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>6)
		usr.Spell4="Huuma"
		usr.client.StartHotkeys()

mob/verb/Bd82()
	if(usr.ST2==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=8
			usr.Spell4="Paralisia A"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>7)
		usr.Spell4="Paralisia A"
		usr.client.StartHotkeys()

mob/verb/Bd92()
	if(usr.ST2==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=9
			usr.Spell3="Corte Rápido"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>8)
		usr.Spell3="Corte Rápido"
		usr.client.StartHotkeys()

mob/verb/Bd102()
	if(usr.ST2==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=10
			usr.Spell5="Turbilhão de Lâminas"
			CheckTreeAssassin()
			usr.client.StartHotkeys()
			DescattD()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk4")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>9)
		usr.Spell5="Turbilhão de Lâminas"
		usr.client.StartHotkeys()


// ------------------------------------- Beserk ------------------------------//

// ---- 1 ---- //

mob/verb/Be1()
	if(usr.ST1==0)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=1
			usr.ST2=1
			usr.Spell2="Investida5"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>0)
		usr.Spell2="Investida5"
		usr.client.StartHotkeys()

mob/verb/Be21()
	if(usr.ST1==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=2
			usr.Spell3="Corte Giratório"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>1)
		usr.Spell3="Corte Giratório"
		usr.client.StartHotkeys()

mob/verb/Be31()
	if(usr.ST1==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=3
			usr.str+=5
			CheckTreeBeserker()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Be41()
	if(usr.ST1==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=4
			usr.Spell3="Selo de Zeus"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>3)
		usr.Spell3="Selo de Zeus"
		usr.client.StartHotkeys()

mob/verb/Be51()
	if(usr.ST1==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=5
			usr.Spell4="Choque Císmico"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>4)
		usr.Spell4="Choque Císmico"
		usr.client.StartHotkeys()

mob/verb/Be61()
	if(usr.ST1==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=6
			usr.Spell3="Selo de Poseidon"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>5)
		usr.Spell3="Selo de Poseidon"
		usr.client.StartHotkeys()

mob/verb/Be71()
	if(usr.ST1==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=7
			usr.Spell3="Selo de Hades"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>6)
		usr.Spell3="Selo de Hades"
		usr.client.StartHotkeys()

mob/verb/Be81()
	if(usr.ST1==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=8
			usr.Spell4="Onda Elétrica"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>7)
		usr.Spell4="Onda Elétrica"
		usr.client.StartHotkeys()



mob/verb/Be91()
	if(usr.ST1==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=9
			usr.Spell4="Oração"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>8)
		usr.Spell4="Oração"
		usr.client.StartHotkeys()

mob/verb/Be101()
	if(usr.ST1==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST1=10
			usr.Spell5="Punho de Cronos"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST1>9)
		usr.Spell5="Punho de Cronos"
		usr.client.StartHotkeys()

// ------ 2 ------ //


mob/verb/Be22()
	if(usr.ST2==1)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=2
			usr.Spell2="Investida Atordoadora"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>1)
		usr.Spell2="Investida Atordoadora"
		usr.client.StartHotkeys()

mob/verb/Be32()
	if(usr.ST2==2)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=3
			usr.str+=5
			CheckTreeBeserker()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Be42()
	if(usr.ST2==3)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=4
			CheckTreeBeserker()
			DescattE()
			usr.str+=6
			usr.Def-=6
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")

mob/verb/Be52()
	if(usr.ST2==4)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=5
			usr.Spell2="Provocar"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>4)
		usr.Spell2="Provocar"
		usr.client.StartHotkeys()

mob/verb/Be62()
	if(usr.ST2==5)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=6
			usr.Spell3="Fúria em Massa"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>5)
		usr.Spell3="Fúria em Massa"
		usr.client.StartHotkeys()

mob/verb/Be72()
	if(usr.ST2==6)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=7
			usr.Spell3="Fúria de Poseidon"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>6)
		usr.Spell3="Fúria de Poseidon"
		usr.client.StartHotkeys()

mob/verb/Be82()
	if(usr.ST2==7)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=8
			usr.Spell4="Fúria de Hades"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>7)
		usr.Spell3="Fúria de Hades"
		usr.client.StartHotkeys()

mob/verb/Be92()
	if(usr.ST2==8)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=9
			usr.Spell4="Fúria de Zeus"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>8)
		usr.Spell4="Fúria de Zeus"
		usr.client.StartHotkeys()

mob/verb/Be102()
	if(usr.ST2==9)
		if(usr.Perk>0)
			usr.Perk-=1
			usr.ST2=10
			usr.Spell5="Sacrifício"
			CheckTreeBeserker()
			usr.client.StartHotkeys()
			DescattE()
			usr<<output("Você liberou a nova habilidade","Chat")
			usr<<output("[usr.Perk]","perk5")
		else
			usr<<output("Você precisa de um perk","Chat")
	else if(usr.ST2>9)
		usr.Spell5="Sacrifício"
		usr.client.StartHotkeys()







mob/verb/Perk()
	usr.Perk+=1























//////////////////////////// Hotbar / /////////////////////////////////////////////

client/proc/StartHotkeys()
	usr<<output("[usr.Perk]","perk")
	usr<<output("[usr.Perk]","perk2")
	usr<<output("[usr.Perk]","perk3")
	usr<<output("[usr.Perk]","perk4")
	usr<<output("[usr.Perk]","perk5")
	UpdateNum()
	UpdateInv()
	new/obj/Hotkeys/BarraEsquerda(src)
	new/obj/Hotkeys/BarraDireita(src)
	new/obj/Hotkeys/Vida(src)
	new/obj/Hotkeys/Mana(src)
	new/obj/Hotkeys/quit(src)
	new/obj/Hotkeys/Bolsa(src)
	new/obj/Hotkeys/Chat(src)
	new/obj/Hotkeys/Opcoes(src)
	new/obj/Hotkeys/SkillTree(src)
	new/obj/Hotkeys/Guilda(src)
	new/obj/Hotkeys/Z(src)
	new/obj/Hotkeys/X(src)
	new/obj/Hotkeys/C(src)
	new/obj/Hotkeys/V(src)
	new/obj/Hotkeys/B(src)
	new/obj/Hotkeys/I(src)
	new/obj/Hotkeys/O(src)
	new/obj/Hotkeys/P(src)
	new/obj/Hotkeys/Q(src)
	new/obj/Hotkeys/A(src)
	new/obj/Hotkeys/S(src)
	new/obj/Hotkeys/D(src)
	new/obj/Hotkeys/Interagir(src)
	new/obj/Hotkeys/Pegar(src)
	new/obj/Hotkeys/Space(src)
	new/obj/Hotkeys/Enter(src)

// Level 1

	if(usr.Spell1=="Atacar")
		if(usr.wp==1 || usr.wp==5)
			new/obj/Hotkeys/Corte(src)
		else if(usr.wp==4)
			new/obj/Hotkeys/Corte2(src)
	if(usr.Spell1=="Atirar Flecha")
		new/obj/Hotkeys/Atirar(src)
	if(usr.Spell1=="Esfera Mágica")
		new/obj/Hotkeys/Esfera(src)

// Level 2

	if(usr.Spell2=="Corte Sangrento")
		new/obj/Hotkeys/CorteSangrento(src)
	if(usr.Spell2=="Último Recurso")
		new/obj/Hotkeys/Ultimo_Recurso(src)
	if(usr.Spell2=="Flecha do Trovão")
		new/obj/Hotkeys/FlechaTrovao(src)
	if(usr.Spell2=="Flecha de Drenagem")
		new/obj/Hotkeys/FlechaDrenagem(src)
	if(usr.Spell2=="Salto")
		new/obj/Hotkeys/Salto(src)
	if(usr.Spell2=="Flecha Envenenada")
		new/obj/Hotkeys/Flecha_Envenenada(src)
	if(usr.Spell2=="Ataque Múltiplo")
		new/obj/Hotkeys/AtkMultiplo(src)
	if(usr.Spell2=="Corte Venenoso")
		new/obj/Hotkeys/Corte_Venenoso(src)
	if(usr.Spell2=="Roubar HP")
		new/obj/Hotkeys/RoubaHP(src)
	if(usr.Spell2=="Roubar MP")
		new/obj/Hotkeys/RoubaMP(src)
	if(usr.Spell2=="Investida5")
		new/obj/Hotkeys/Investida5(src)
	if(usr.Spell2=="Investida Atordoadora")
		new/obj/Hotkeys/InvestidaA(src)
	if(usr.Spell2=="Provocar")
		new/obj/Hotkeys/Provocar(src)
	if(usr.Spell2=="Bola de Fogo")
		new/obj/Hotkeys/Bola_de_Fogo(src)
	if(usr.Spell2=="Arremesso de Terra")
		new/obj/Hotkeys/Arremesso_de_Terra(src)
	if(usr.Spell2=="")
		new/obj/Hotkeys/vazio2(src)

// Level 3
	if(usr.Spell3=="Velocidade Heróica")
		new/obj/Hotkeys/Velocidade_Heroica(src)
	if(usr.Spell3=="Escudada")
		new/obj/Hotkeys/Bash(src)
	if(usr.Spell3=="Corte Lunar")
		new/obj/Hotkeys/Corte_Lunar(src)
	if(usr.Spell3=="Corte Solar")
		new/obj/Hotkeys/Corte_Solar(src)
	if(usr.Spell3=="Rajada")
		new/obj/Hotkeys/Rajada(src)
	if(usr.Spell3=="Encravar")
		new/obj/Hotkeys/Encravar(src)
	if(usr.Spell3=="Invisibilidade")
		new/obj/Hotkeys/Invisibilidade(src)
	if(usr.Spell3=="Emboscada")
		new/obj/Hotkeys/Emboscada(src)
	if(usr.Spell3=="Corte Rápido")
		new/obj/Hotkeys/CorteRapido(src)
	if(usr.Spell3=="Roubar MP A")
		new/obj/Hotkeys/RoubaMPA(src)
	if(usr.Spell3=="Roubar HP A")
		new/obj/Hotkeys/RoubaHPA(src)
	if(usr.Spell3=="Fúria em Massa")
		new/obj/Hotkeys/Furia_em_Massa(src)
	if(usr.Spell3=="Fúria de Poseidon")
		new/obj/Hotkeys/Furia_de_Poseidon(src)
	if(usr.Spell3=="Corte Giratório")
		new/obj/Hotkeys/Corte_Giratorio(src)
	if(usr.Spell3=="Selo de Zeus")
		new/obj/Hotkeys/Selo_de_Zeus(src)
	if(usr.Spell3=="Selo de Poseidon")
		new/obj/Hotkeys/Selo_de_Poseidon(src)
	if(usr.Spell3=="Selo de Hades")
		new/obj/Hotkeys/Selo_de_Hades(src)
	if(usr.Spell3=="Cura")
		new/obj/Hotkeys/Cura(src)
	if(usr.Spell3=="Semente da Vida")
		new/obj/Hotkeys/Semente_da_Vida(src)
	if(usr.Spell3=="Estaca de Gelo")
		new/obj/Hotkeys/Estacas_de_Gelo(src)
	if(usr.Spell3=="")
		new/obj/Hotkeys/vazio3(src)

// Level 4

	if(usr.Spell4=="Modo Sentinela")
		new/obj/Hotkeys/Sentinela(src)
	if(usr.Spell4=="Combo Mortal")
		new/obj/Hotkeys/Combo_Mortal(src)
	if(usr.Spell4=="Tiro Perfurante")
		new/obj/Hotkeys/TiroPerfurante(src)
	if(usr.Spell4=="Flecha de Fogo")
		new/obj/Hotkeys/Flecha_de_Fogo(src)
	if(usr.Spell4=="Flecha de Gelo")
		new/obj/Hotkeys/Flecha_de_Gelo(src)
	if(usr.Spell4=="Flecha Divina")
		new/obj/Hotkeys/Flecha_Divina(src)
	if(usr.Spell4=="Huuma")
		new/obj/Hotkeys/Huuma(src)
	if(usr.Spell4=="Paralisia A")
		new/obj/Hotkeys/ParalisiaA(src)
	if(usr.Spell4=="Kunai Venenosa")
		new/obj/Hotkeys/Kunai_Venenosa(src)
	if(usr.Spell4=="Fúria de Hades")
		new/obj/Hotkeys/Furia_de_Hades(src)
	if(usr.Spell4=="Fúria de Zeus")
		new/obj/Hotkeys/Furia_de_Zeus(src)
	if(usr.Spell4=="Choque Císmico")
		new/obj/Hotkeys/Choque_Cismico(src)
	if(usr.Spell4=="Onda Elétrica")
		new/obj/Hotkeys/Onda_Eletrica(src)
	if(usr.Spell4=="Oração")
		new/obj/Hotkeys/Oracao(src)
	if(usr.Spell4=="Raios")
		new/obj/Hotkeys/Raios(src)
	if(usr.Spell4=="Cura Área")
		new/obj/Hotkeys/Grande_Cura(src)
	if(usr.Spell4=="Tempo Espaço")
		new/obj/Hotkeys/Impacto_de_Cura(src)
	if(usr.Spell4=="Tufão")
		new/obj/Hotkeys/Tufao(src)
	if(usr.Spell4=="Tempestade")
		new/obj/Hotkeys/Tempestade(src)
	if(usr.Spell4=="")
		new/obj/Hotkeys/vazio4(src)

// Level 5

	if(usr.Spell5=="Investida")
		new/obj/Hotkeys/Investida(src)
	if(usr.Spell5=="Espada Bumerangue")
		new/obj/Hotkeys/Espada_Bumerangue(src)
	if(usr.Spell5=="Impacto Meteoro")
		new/obj/Hotkeys/Impacto_Meteoro(src)
	if(usr.Spell5=="Flecha Final")
		new/obj/Hotkeys/Flecha_Final(src)
	if(usr.Spell5=="Chuva de Flechas")
		new/obj/Hotkeys/Chuva_de_Flechas(src)
	if(usr.Spell5=="Turbilhão de Lâminas")
		new/obj/Hotkeys/Turbilhao_de_Laminas(src)
	if(usr.Spell5=="Executar")
		new/obj/Hotkeys/Executar(src)
	if(usr.Spell5=="Sacrifício")
		new/obj/Hotkeys/Sacrificio(src)
	if(usr.Spell5=="Punho de Cronos")
		new/obj/Hotkeys/Punho_de_Cronos(src)
	if(usr.Spell5=="Explosão de Mana")
		new/obj/Hotkeys/Explosao_de_Mana(src)
	if(usr.Spell5=="Ressurreição")
		new/obj/Hotkeys/Ressureicao(src)
	if(usr.Spell5=="Fúria da Natureza")
		new/obj/Hotkeys/Furia_da_Natureza(src)
	if(usr.Spell5=="Chuva de Fogo")
		new/obj/Hotkeys/Chuva_de_Fogo(src)
	if(usr.Spell5=="Chamado do Túmulo")
		new/obj/Hotkeys/Chamado_do_Tumulo(src)
	if(usr.Spell5=="")
		new/obj/Hotkeys/vazio5(src)
