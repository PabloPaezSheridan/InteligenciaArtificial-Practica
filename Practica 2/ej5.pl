ingreso(T):- write('Ingrese una lista de elementos entre []: '), read(Lista),devolverUltimo(Lista,T).
devolverUltimo(Lista,T) :- reverse(Lista,ListaR),[T|_] = ListaR.

