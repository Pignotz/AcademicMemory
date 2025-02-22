natural_number(0).
natural_number(s(X)):- natural_number(X).
plus1(0,X,X):- natural_number(X).
plus1(s(X),Y,s(Z)):- plus1(X,Y,Z).
times1(0,_X,0).
times1(s(X),Y,Z):- times1(X,Y,XY), plus1(XY,Y,Z).
exp1(s(_N),0,0).
exp1(0,s(_X),s(0)).
exp1(s(N),X,Y):- exp1(N,X,Z), times1(Z,X,Y).