togreen: ;this is the function that is turning the green light on
	   ;starting the sequence with red and C.0
	   ;adding  the yellow with C.1 together with red
	high C.0 ;
	b1 = 1 ;
	pause 9000 ;
	
	high C.1 ;
	b1 = 2 ;
	pause 3000;	
	;turing red and yellow off
	low C.0 ;
	low C.1 ;
	
	;turning green with C.2 on with a delay for the needs of traffic to move
	high C.2 ;
	b1 = 3 ;
	pause 10000;
	
tored: ;this is the function that is turning the red light on
	; here the green is still on
	high C.2 ;
	b1 = 3 ;
	
	;and now green is turning off
	low C.2 ;
	
	;at this point we turn the yellow on for a small amount of time
	high C.1 ;
	b1= 4 ; 
	pause 3000;
	
	;and now the yellow if off
	low C.1 ;
	
	;and here the red is one again on
	high C.0 ;
	b1= 1;
	
	;and after this we start all over again by jumping to the begining of the sequence
	goto togreen ;