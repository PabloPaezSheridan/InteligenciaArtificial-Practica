ingreso:- write('Ingrese una lista de números entre []: '),
             read(L),devuelveMayor(L,0).

devuelveMayor([],MaxActual):- write('El numero mayor es: '), write(MaxActual).
devuelveMayor([H|T],MaxActual) :- H > MaxActual -> devuelveMayor(T,H).
devuelveMayor([H|T],MaxActual) :- H < MaxActual -> devuelveMayor(T,MaxActual).

