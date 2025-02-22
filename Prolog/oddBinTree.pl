bTree(void).
bTree(t(_E,L,R)):- bTree(L),bTree(R).

odd(void).
odd(E):- _E2 is E%2, _E2 is 1 ..

even(void).
even(E):-  
	_E1 is E%2,_E1 == 0.
	.




subsEvenWith13(void,void).
subsEvenWith13(t(E,L,R),V):-
	odd(E),
	write('Aaa'),
	subsEvenWith13(L,L1),
	subsEvenWith13(R,R1),
	V = t(E,L1,R1).

subsEvenWith13(t(E,_L,_R),V):- 
	even(E),
	write('BBB'),
	V = t(13,void,void).