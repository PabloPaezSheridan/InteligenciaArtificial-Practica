ingreso(Sum):- write('Ingrese una lista de elementos entre []: '), read(Lista),sumador(Lista,Sum).

sumador([],0).
sumador([H|T], Sum) :-  sumador(T,SumaCabeza),Sum is SumaCabeza + H.
