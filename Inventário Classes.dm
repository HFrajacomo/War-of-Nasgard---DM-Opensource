	// Chap�u //

obj/proc/EquiparCH()
	if(usr.wp!=2 && usr.wp!=4)
		usr<<output("Apenas um Arqueiro ou Assassino podem equipar um chap�u","Chat")
		return
	if(usr.Capacete==src)
		usr<<output("Esse chap�u j� est� equipada","Chat")
		return
	else if(usr.Capacete==null)
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Capacete
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparCH()
	if(usr.Capacete==src && usr.espaco<25)
		usr.Capacete=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


	// Capuz //

obj/proc/EquiparCAP()
	if(usr.wp!=3)
		usr<<output("Apenas um Mago pode equipar uma cartola","Chat")
		return
	if(usr.Capacete==src)
		usr<<output("Esse capuz j� est� equipada","Chat")
		return
	else if(usr.Capacete==null)
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Capacete
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparCAP()
	if(usr.Capacete==src && usr.espaco<25)
		usr.Capacete=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return

	// Elmos //

obj/proc/Equiparel()
	if(usr.wp!=1 && usr.wp!=5)
		usr<<output("Apenas um Cavaleiro ou Gladiador podem equipar um elmo","Chat")
		return
	if(usr.Capacete==src)
		usr<<output("Esse elmo j� est� equipada","Chat")
		return
	else if(usr.Capacete==null)
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Capacete
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Capacete=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/Desequiparel()
	if(usr.Capacete==src && usr.espaco<25)
		usr.Capacete=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


	// Armaduras //


obj/proc/EquiparARM()
	if(usr.wp!=1 && usr.wp!=5)
		usr<<output("Apenas um Cavaleiro ou Gladiador podem equipar uma armadura","Chat")
		return
	if(usr.Armadura==src)
		usr<<output("Essa armadura j� est� equipada","Chat")
		return
	else if(usr.Armadura==null)
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Armadura
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparARM()
	if(usr.Armadura==src && usr.espaco<25)
		usr.Armadura=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return




	// Cota //

obj/proc/EquiparCO()
	if(usr.wp!=2 && usr.wp!=4)
		usr<<output("Apenas um Arqueiro ou Assassino podem equipar uma cota","Chat")
		return
	if(usr.Armadura==src)
		usr<<output("Essa cota j� est� equipada","Chat")
		return
	else if(usr.Armadura==null)
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Armadura
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparCO()
	if(usr.Armadura==src && usr.espaco<25)
		usr.Armadura=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return

	// BotaL //

obj/proc/EquiparBL()
	if(usr.wp==1 || usr.wp==5)
		usr<<output("Apenas Arqueiros, Magos e Assassinos podem equipar uma bota de couro","Chat")
		return
	if(usr.Bota==src)
		usr<<output("Essa bota j� est� equipada","Chat")
		return
	else if(usr.Bota==null)
		usr.Bota=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Bota
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Bota=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparBL()
	if(usr.Bota==src && usr.espaco<25)
		usr.Bota=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return




	// BotaF  //

obj/proc/EquiparBOF()
	if(usr.wp!=1 && usr.wp!=5)
		usr<<output("Apenas um Guerreiro ou Gladiador podem equipar uma bota de metal","Chat")
		return
	if(usr.Bota==src)
		usr<<output("Essa bota j� est� equipada","Chat")
		return
	else if(usr.Bota==null)
		usr.Bota=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Bota
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Bota=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparBOF()
	if(usr.Bota==src && usr.espaco<25)
		usr.Bota=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


	// T�nicas //

obj/proc/EquiparTU()
	if(usr.wp!=3)
		usr<<output("Apenas um Mago podem equipar uma t�nica","Chat")
		return
	if(usr.Armadura==src)
		usr<<output("Essa T�nica j� est� equipada","Chat")
		return
	else if(usr.Armadura==null)
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou o [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.Armadura
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.Armadura=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparTU()
	if(usr.Armadura==src && usr.espaco<25)
		usr.Armadura=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


	// Adagas //

obj/proc/EquiparA()
	var/obj/Teste = usr.E1
	if(usr.wp!=4)
		usr<<output("Apenas um Ladr�o pode equipar uma adaga","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else if(usr.E2==null)
		usr.E2=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else if(Teste.agiincrease!=src.agiincrease)
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
	else
		var/obj/Change = usr.E2
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E2=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null


obj/proc/DesequiparA()
	if(usr.E2==src && usr.espaco<25)
		usr.E2=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


	// Montante //

obj/proc/EquiparEP()
	if(usr.wp!=5)
		usr<<output("Apenas um Gladiador pode equipar uma montante","Chat")
		return
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparEP()
	if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		usr.E2=null
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return

    // Espadas //

obj/proc/EquiparE()
	if(usr.wp!=1)
		usr<<output("Apenas um Cavaleiro pode equipar uma espada","Chat")
		return
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		src.loc=null

obj/proc/Desequiparp()
	if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return

obj/proc/Removerp()
	if(usr.E1!=src)
		src.Move(usr.loc)	//takes it out of the inventory and drops it where you are standing
		usr <<output("<b>Voc� removeu a [src.name]!</b>","Chat")
		usr.espaco -= 1
	else
		usr<<output("A arma equipada n�o pode ser removida","Chat")

	  // Ferramentas //

obj/proc/Equiparf()
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	if(usr.E1==usr.E2 && usr.wp!=4 && usr.E2!=null)
		var/obj/Change = usr.E1
		usr.E2=null
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/Desequiparf()
	if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		src.suffix = null
		usr <<output("<b>Voc� desequipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Essa arma n�o est� equipada ou n�o existe espa�o livre no invent�rio","Chat")
		return


      // Escudo //

obj/proc/Equipare()
	if(usr.wp!=1)
		usr<<output("Voc� precisa ser um Cavaleiro para usar escudo","Chat")
		return
	if(usr.E2==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E2==null)
		usr.E2=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E2
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		usr.E2=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/Desequipare()
	if(usr.E2==src && usr.espaco<25)
		usr.E2=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		usr <<output("<b>Voc� desequipou [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Esse escudo n�o est� equipado ou n�o tem espa�o livre no invent�rio","Chat")
		return


// Arcos //

obj/proc/EquiparARC()
	if(usr.wp!=2)
		usr<<output("Apenas um arqueiro pode equipar um arco", "Chat")
		return
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.E2=null
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparARC()
	if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		usr.E2=null
		usr <<output("<b>Voc� desequipou [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Esse arco n�o est� equipado ou n�o tem espa�o livre no invent�rio","Chat")
		return


// Cajados //

obj/proc/EquiparCa()
	if(usr.wp!=3)
		usr<<output("Apenas um mago pode usar um cajado")
		return
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.E2=null
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr.E2=src
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null

obj/proc/DesequiparCa()
	if(usr.E1==src && usr.espaco<25)
		usr.E1=null
		usr.str-=src.strincrease
		usr.Def-=src.Defincrease
		usr.Int-=src.Intincrease
		usr.agi-=src.agiincrease
		usr.E2=null
		usr <<output("<b>Voc� desequipou [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=usr
		usr.espaco+=1
		return
	else
		usr<<output("Esse escudo n�o est� equipado ou n�o tem espa�o livre no invent�rio","Chat")
		return




// P //

obj/proc/Equiparp()
	if(usr.E1==src)
		usr<<output("Essa arma j� est� equipada","Chat")
		return
	else if(usr.E1==null)
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
		usr.espaco-=1
	else
		var/obj/Change = usr.E1
		Change.loc=usr
		usr.str-=Change.strincrease
		usr.Def-=Change.Defincrease
		usr.Int-=Change.Intincrease
		usr.agi-=Change.agiincrease
		Change.suffix=null
		usr.E1=src
		usr.str+=src.strincrease
		usr.Def+=src.Defincrease
		usr.Int+=src.Intincrease
		usr.agi+=src.agiincrease
		usr <<output("<b>Voc� equipou a [src.name].</b>","Chat")
		UpdateInv()
		call(/obj/proc/UpdateLojaArmas)()
		call(/obj/proc/UpdateLojaArmadura)()
		src.loc=null
