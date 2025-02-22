agt([],_N).
agt([A|As],N):-
	A>N,
	agt(As,N).
	
bagtll([],_N,[]).


bagtll([B|Bs],N,R):-
	agt(B,N),
	bagtll(Bs,N,R1),
	R = [B|R1].
	
bagtll([B|Bs],N,R):-
	bagtll(Bs,N,R1),
	R = R1.


