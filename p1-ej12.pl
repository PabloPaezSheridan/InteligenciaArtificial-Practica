suma(0,0).
suma(N,Sum) :- N>0,N1 is N-1,suma(N1,Suma1), Sum is Suma1+N.
