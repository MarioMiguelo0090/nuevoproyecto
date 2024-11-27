factorial(0,0).
factorial(1,1).
factorial(X,Y):-
	X>0,
	X2 is  X-1,
	factorial(X2,Y2),
	Y is X * Y2.
