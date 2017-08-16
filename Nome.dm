mob
	Login()
		..()
		usr.overlays=null
		src.addname("[usr]")




mob/proc
	addname(var/text)
		var/leftspot=round((length(text)/2)*-3.65)
		for(var/i=1,i<=length(text),i++)
			var/obj/N=new/obj/name
			N.pixel_x=leftspot
			N.icon_state="[copytext(text,i,i+1)]"
			src.overlays+=N
			leftspot+=8


obj/name
	icon='Text.dmi'
	icon_state=""
	layer=MOB_LAYER
	pixel_y=-20

// ------------------------------------------------------ //

obj/Bar
	icon='LifeBar.dmi'
	icon_state="1"
	layer=FLOAT_LAYER
	pixel_y=10

mob/proc/UpdateLife()
	var/I=1
	if(src.HP==src.MaxHP) goto Piroca
	if(src.HP>=(src.MaxHP/100)*95)
		I=2
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*87)
		I=3
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*80)
		I=4
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*75)
		I=5
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*66)
		I=6
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*60)
		I=7
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*50)
		I=8
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*43)
		I=9
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*35)
		I=10
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*28)
		I=11
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*20)
		I=12
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*15)
		I=13
		goto Piroca
	if(src.HP>=(src.MaxHP/100)*8)
		I=14
		goto Piroca
	if(src.HP>=(src.MaxHP/10000000)*1)
		I=15
		goto Piroca
	Piroca
	if(src.npc==1) return
	if(src.client)
		src.overlays+=image('LifeBar.dmi',"[I]")
		sleep(100)
		src.overlays-=image('LifeBar.dmi',"[I]")
	else
		src.overlays+=image('LifeBar.dmi',"[I]")

