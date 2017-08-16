


client
	show_verb_panel = 0


mob/verb/Dice()
	var/a = roll(1,6)
	usr<<output("[a]","Chat")

mob
	var/Frozen = 0
	var/Dialog=0
	var/D = list()
	Move()
		if(src.Frozen) return
		..()

mob/verb/Interagir()
	set hidden = 1
	for(var/mob/NPC/I in oview(1))
		I.Interagir(src)

mob/proc/Dialogue(mob/NPC/N)
	src.Dialog ++;src.Frozen = 1
	winshow(src, "Out", 1)
	winset(src,"Out","text='[N.D[src.Dialog]]'")
	return

mob/proc/Dialogue2(mob/NPC/N)
	src.Frozen = 1
	winshow(src, "Out", 1)
	winset(src,"Out","text='[N.D[src.Dialog]]'")
	return

mob/proc/CloseDialogue(mob/NPC/N)
	src.Dialog = 0;src.Frozen = 0
	winshow(usr,"Out", 0)
	return


mob
	proc
	Del()
		..()

mob/verb
	Falar()
		set hidden = 1
		if(usr.Logged==0)
			return
		var/t = input(usr,,"Escreva sua mensagem") as text
		var/a = lentext(t)
		if(a==0)
			return
		view() <<output("<b> [src]</b>:  [t]", "Chat")



mob
	Stat()
		statpanel("Status")
		stat("Nome: ", "[src.name]")
		stat("<b>Nivel:</b>","<b>[src.Level]</b>")
		stat("Forca:","[src.str]")
		stat("Defesa:","[src.Def]")
		stat("Inteligencia:","[src.Int]")
		stat("Agilidade:","[src.agi]")
		stat("Perks:","[usr.Perk]")
		if (wp==2)
			stat("<b>Flechas: [flecha]</b>")



mob
    Logout()

        src.SaveProc()

        sample_report()




mob
	Logout()
		usr.troca=""
		world <<output("<font color = white>[usr.name] Saiu do Jogo","Chat")
		..()


mob/proc
	LevelCheck()
		if(src.Exp>=src.Nexp)
			usr.str+=2
			usr.Def+=2
			usr.Int+=2
			usr.Exp=usr.Exp-usr.Nexp
			usr.MP+=50
			usr.MaxMP+=50
			usr.HP+=50
			usr.MaxHP+=50
			usr.Level+=1
			usr.agi+=2
			src.PontoLevel +=1
			if(usr.Level==2)
				usr<<output("<font color=red><b>Pressione 'O' para abrir a Árvore de Talentos do personagem","Chat")
				usr<<output("<font color=red><b>Você ganhará um perk para gastar em habilidades à cada 2 níveis","Chat")
				usr<<output("<font color=red><b>O máximo de perks possíveis é 10, então cuidado","Chat")
			if(usr.Level%2==0 && usr.Level<=20)
				usr.Perk+=1
			usr.Nexp = round(usr.Nexp*4/3)
			src<<output("<font color=white>Você evoluiu para o level [src.Level].","Chat")





mob/proc/SaveProc()
    var/FileName="players/[ckey(src.key)].sav"
    if(fexists(FileName))	fdel(FileName)
    var/savefile/F=new(FileName)
    F["Level"]<<src.Level
    F["Exp"]<<src.Exp
    F["Nexp"]<<src.Nexp
    F["HP"]<<src.HP
    F["MaxHP"]<<src.MaxHP
    F["Fadiga"]<<src.Folego
    F["Str"]<<src.str
    F["Def"]<<src.Def
    F["agi"]<<src.agi
    F["LastX"]<<src.x
    F["LastY"]<<src.y
    F["LastZ"]<<src.z
    F["ouro"]<<src.carteira
    F["contents"]<<src.contents
    src<<"Personagem salvo..."



mob/proc/LoadProc()
    var/FileName="players/[ckey(src.key)].sav"
    if(fexists(FileName))
        var/savefile/F=new(FileName)
        F["Level"]>>src.Level
        F["Nexp"]>>src.Nexp
        F["HP"]>>src.HP
        F["MaxHP"]>>src.MaxHP
        F["Fadiga"]<<src.Folego
        F["Str"]>>src.str
        F["Def"]>>src.Def
        F["agi"]<<src.agi
        F["ouro"]>>src.carteira
        F["contents"]>>src.contents
        src.loc=locate(F["LastX"],F["LastY"],F["LastZ"])
        src<<"Personagem carregado..."
        return 1






mob/usr/Cavaleiro
	icon = 'player.dmi'
	Level = 1
	tipo="str"
	HP = 450
	Folego = 100
	MaxHP = 450
	MP = 250
	MaxMP = 250
	str = 15
	Def = 15
	Nexp
	Int = 5
	Exp = 0
	Class = "Cavaleiro"
	agi = 10
	Nexp = 100
	PontoLevel = 1
	wp = 1
	step_size = 4
	vivo = 1
	reiorc = 0
	monstro = 0
	guildle = 1
	ID = 0
	fome = 5000
	Maxfome = 5000
	Stun=0
	Sentinela=0
	Spell1="Atacar"
	Spell2=""
	Spell3=""
	Spell4=""
	Spell5=""


mob/usr/Arqueiro
	icon = 'arch.dmi'
	Level = 1
	HP = 400
	Folego = 100
	MaxHP = 400
	MP = 500
	MaxMP = 500
	str = 10
	Nexp = 100
	Def = 15
	Int = 10
	Exp = 0
	Class = "Arqueiro"
	agi = 22
	step_size = 4
	vivo = 1
	reiorc = 0
	PontoLevel = 1
	wp = 2
	monstro = 0
	guildle = 1
	ID = 0
	fome = 5000
	Maxfome = 5000
	Stun=0
	Sentinela=0
	Spell1="Atirar Flecha"
	Spell2=""
	Spell3=""
	Spell4=""
	Spell5=""

mob/usr/Feiticeiro
	icon = 'warrior.dmi'
	Level = 1
	Folego = 100
	HP = 350
	MaxHP = 350
	MP = 850
	MaxMP = 850
	str = 5
	Nexp = 100
	Nexp
	Def = 15
	Int = 15
	Exp = 0
	Class = "Feiticeiro"
	PontoLevel = 1
	wp = 3
	agi = 5
	step_size = 4
	vivo = 1
	reiorc = 0
	monstro = 0
	guildle = 1
	ID = 0
	fome = 5000
	Maxfome = 5000
	Stun=0
	Spell1="Esfera Mágica"
	Spell2=""
	Spell3=""
	Spell4=""
	Spell5=""
	Sentinela=0

mob/usr/Ladrao
	icon = 'Ladrão.dmi'
	Level = 1
	HP = 400
	tipo="agi"
	Folego = 100
	MaxHP = 400
	MP = 300
	MaxMP = 300
	str = 10
	Def = 15
	Nexp
	Int = 5
	Exp = 0
	Class = "Ladrao"
	agi = 20
	Nexp = 100
	PontoLevel = 1
	wp = 4
	step_size = 5
	vivo = 1
	reiorc = 0
	monstro = 0
	guildle = 1
	ID = 0
	fome = 5000
	Maxfome = 5000
	Stun=0
	Spell1="Atacar"
	Spell2=""
	Spell3=""
	Spell4=""
	Spell5=""
	Sentinela=0

mob/usr/Gladiador
	icon = 'berserker_II.dmi'
	Level = 1
	HP = 600
	tipo="str"
	Folego = 100
	MaxHP = 500
	MP = 150
	MaxMP = 150
	str = 30
	Def = 20
	Nexp
	Int = 5
	Exp = 0
	Class = "Gladiador"
	agi = 8
	Nexp = 100
	PontoLevel = 1
	wp = 5
	step_size = 4
	vivo = 1
	reiorc = 0
	monstro = 0
	guildle = 1
	ID = 0
	fome = 5000
	Maxfome = 5000
	Stun=0
	Sentinela=0
	Spell1="Atacar"
	Spell2=""
	Spell3=""
	Spell4=""
	Spell5=""


world
     New()
          spawn() RepopWorld()
          return ..()



proc/RepopWorld()
	while(world)
		world.Repop()
		sleep(800)







