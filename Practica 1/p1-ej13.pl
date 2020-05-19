suma(2,2,1).
suma(N,SumaPares,SumaImpares) :-
   N>0,
   N1 is N -1,
   suma(N1,SumaP,SumaI),
   ( 0 is mod(N,2) ->   SumaPares is SumaP + N, SumaImpares is SumaI).
   
suma(N,SumaPares,SumaImpares) :-
   N>0,
   N1 is N -1,
   suma(N1,SumaP,SumaI),
   ( 0 =\= mod(N,2) -> SumaImpares is SumaI +N, SumaPares is SumaP).
