suma(0,0,0).
suma(N,SumPares,SumImpares) :- N>0,
                               N1 is N -1,
                               suma(N1,SumaP,SumaI),
                               ((0 is mod(N,2)) ->SumPares is SumaP + (N-2);
                                                  SumImpares is SumaI +(N -2)).

/* (0 is mod(N,2) -> N-2>=0,SumPares is SumaP + N + (N-2) ;
                                                 N-2>=0,SumImpares is SumaI + N + (N-2)).    */

