len([],0).
len([_E|Es],R):- len(Es,R1), R is R1+1.

lessThan([],_N,[]).
lessThan([L|Ls],N,[L|R]):-len(L,Len), Len<N,lessThan(Ls,N,R).
lessThan([_L|Ls],N,R):-lessThan(Ls,N,R).

count([],0).
count([[X|Xs]|Xr],N):-count(Xr,N1),count([X|Xs],N2),N is N1+N2.
count([_X|Xs],N):-count(Xs,N1),N is N1+1.

countListElems([], 0).
countListElems([X|Xs], N):-countListElems(X, N1),countListElems(Xs, N2),N is N1+N2.
countListElems(_X, 1).