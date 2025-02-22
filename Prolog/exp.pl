exp(_N,0,1).
exp(N,E,R):-(
	E>0 ->
	(
		E1 is E-1,
		exp(N,E1,R1),
		R is R1*N
	);
	(E<0 ->
		(
		E1 is E-1,
		exp(N,E1,R1),
		R is R1/N
		);
		R is R
	)
).