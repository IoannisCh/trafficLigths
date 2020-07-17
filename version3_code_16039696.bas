
b1 = 1 ; we give our variable a starting value
 
main: ; here is the main function that controls the system
sensor:
if PinC.4 = 1 then; before any other action the programm checks the value of the light sensor and if it is 1
	goto togreen ;goes to green directly
endif
	if PinC.3 = 1 then ;else if the sensor value is 0 and the button is on, which gives a value of 1
		if b1 = 3 then ; and variable b1 is 3 it goes to red
			goto tored
		else
		
			if b1 = 1 then ; else if button is 1 and variable b1 is 1 it goes to green
				goto togreen 
			endif
		endif	
	endif
 
	
	if b1 = 1 then 
		goto red
	endif
 
	
	if b1 = 3 then 
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