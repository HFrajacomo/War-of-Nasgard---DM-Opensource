area/Block
	Entered(mob/M)
		if(M.monstro==1)
			del(M)
		else
			return
