ingreso:- write('Ingrese una lista de elementos entre []: '), read(L),
            promedio(L,S,C),Prom is S/C,
            write('Promedio: '), write(Prom).

promedio([],0,0).
promedio([H|T],S,C) :- promedio(T,SumaCabeza,Contador),S is SumaCabeza + H, C is Contador + 1.
