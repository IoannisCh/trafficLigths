b1 = 1 ;giving the variable a starting value
 
 ;we start with the main function which controls the sequence
main:
	if PinC.3 = 1 then ; first we need to chech the value of the switch and if it is 1 and
		if b1 = 3 then ; also the variable b1 = 3 it must jump to red
			goto tored
		else
		
			if b1 = 1 then ; else if it is equal to 1 it must jump to green
				goto togreen 
			endif
		endif	
	endif
 
	
	if b1 = 1 then ;if the switch is 0 and b1 = 1 it must go to red
		goto red
	endif
 
	
	if b1 = 3 then ; if the switch is 0 and b1 = 3 then it must go to green(this happens only if the programm completes a full cirlce first)
		goto green
	endif	
	goto main
 
red:
	
	low C.1 
	low C.2 
	
	high C.0 
	goto main 
	
green:
	
	low C.0 
	low C.1
 
	high C.2 
	goto main
	
togreen:

	high C.0 ;
	b1 = 1 ;
	pause 9000 ;
	
	high C.1 ;
	b1 = 2 ;
	pause 3000;
	
	low C.0 ;
	low C.1 ;
	
	high C.2 ;
	b1 = 3 ;
	pause 10000;
	
	goto main;
 
tored:
	
	high C.2 ;
	b1 = 3 ;
	
	low C.2 ;
	
	high C.1 ;
	b1= 4 ; 
	pause 3000;
	
	low C.1 ;
	
	high C.0 ;
	b1= 1;
	
	goto main ;