tree(
	root,
	tree(
		l1,
		tree(
			l2,
			tree(
				l3,
				nil,
				nil
				),
			nil
			),
		tree(
			r2,
			nil,
			nil
		)
	),
	tree(
		r1,
		tree(
			l4,
			tree(
				l5,
				nil,
				nil
				),
			nil),
		tree(
			r3,
			nil,
			nil
			)
		)
	).

concat([],Ys,Ys).
concat([L|Ls],Ys,[L|Zs]):- concat(Ls,Ys,Zs).

gNAD(tree(_Element,_Left,_Right),0,_Element).
gNAD(nil,_X,nil).
gNAD(tree(_Element,Left,Right),N,R):-
	N1 is N-1,
	gNAD(Left,N1,R1),
	gNAD(Right,N1,R2),
	concat(R1,R2,R).