ingreso:- write('Ingrese una lista de elementos entre []: '), read(Lista),
            sumador(Lista,Sum),
            write('Suma de los elementos: '), write(Sum).

sumador([],0).
sumador([H|T], Sum) :-  sumador(T,SumaCabeza),Sum is SumaCabeza + H.
