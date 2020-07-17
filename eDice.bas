playerready:
	if pinC.3=1 then
		;the random function returns a value between 0 and 65535
		;but the byte 0 should only be between 0 and 255
		'255 / 6 = 42.5
		random w0
		if b0<42 then goto display1; based on the number picked execute function
		if b0<85 then goto display2
		if b0<127 then goto display3
		if b0<170 then goto display4
		if b0<212 then goto display5
		goto display6 ; if nothing else happened it must be 6
	end if
goto playerready ; loop back to player ready

clearnumber: ;this function waits a second then clears the dice then goes to player ready
	pause 1000
	low C.1 ;turn all the pins LOW/FALSE/0
	low C.4
	low C.2
	low C.0
	goto playerready ;jump back to the player ready code block

display1: ;this function displays dice 1 then clears the board
	high C.2 ;turn the C2 pin HIGH/TRUE/1
	goto clearnumber ;jump to the clear number code block

display2: ;this function displays dice 2 then clears the board
	high C.1
	goto clearnumber

display3:
	high C.2
	high C.1 
	goto clearnumber

display4:
	high C.1
	high C.4
	goto clearnumber

display5:
	high C.1
	high C.4
	high C.2
	goto clearnumber

display6:
	high C.1
	high C.4
	high C.2
	high C.0
	goto clearnumber