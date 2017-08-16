var/k=0

mob/proc/ExpShare()
	for(var/mob/M in view(10)) // Muda o view aqui pra saber o raio de onde o efeito vai ativar
		if(M.client!=null)
			k+=1
	for(var/mob/M in view(10)) // Muda aqúi também
		if(M.client!=null)
			src.Exp+=(ExpDrop/k)
			k=0
