ingreso:- write('Ingrese una lista de números entre []: '),
             read(L),devuelveMenor(L,9999).

devuelveMenor([],MinActual):- write('El numero menor es: '), write(MinActual).
devuelveMenor([H|T],MinActual) :- H < MinActual -> devuelveMenor(T,H).
devuelveMenor([H|T],MinActual) :- H > MinActual -> devuelveMenor(T,MinActual).

