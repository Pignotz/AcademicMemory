


help(-1,Acc,Acc).

help(N,Acc,List):-
	NewAcc = [N|Acc],
	M is N-1,
	help(M,NewAcc,List).

num2List(N,List):-
	help(N,[],List).
	
	
f([A,A1|R],V):-
	write('here'),
	A<A1,
	num2List(A,R1),
	f([A1|R],V1),
	V = [R1|V1].

f([A,A1|R],V):-
	A>A1,
	f([A1|R],V).

f([A|R],V):-
	R == [],
	num2List(A,V1),
	V = [V1].