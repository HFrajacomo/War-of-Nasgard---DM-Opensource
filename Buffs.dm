//Debuffs

mob/proc/VenenoEspada1(mob/M)  // Espada_Venenosa
	usr<<output("<font color = green><b>[M] foi envenenado </b></font color = green>","Chat")
	M.overlays+='Corte Venenoso2.dmi'
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.HP-=5
	DeathCheck(M)
	sleep(20)
	M.overlays-='Corte Venenoso2.dmi'
