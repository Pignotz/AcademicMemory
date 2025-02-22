
twoElemList([E1,E2|R]):- R == [].

checkList([]).
checkList([L|Ls]):- twoElemList(L), checkList(Ls).

findT([[T,V]|Rest],T,V).
findT([[K,V]|Rest],T,R1):- findT(Rest,T,R1).



subs([[K,V]|R],[K1|R1],[R2|R3]):- subs([[K,V]|R],K1,R2), subs([[K,V]|R],R1,R3).


subs([[K,V]|R],K,V).
subs([[K,V]|R],K1,V1):- subs(R,K1,V1).

subs(S,[],[]).
subs([],S,S).