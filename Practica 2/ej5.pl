ingreso:- write('Ingrese una lista de elementos entre []: '), read(Lista),devolverUltimo(Lista,T),
          write('Ultimo elemento: '), write(T).

devolverUltimo(Lista,T) :- reverse(Lista,ListaR),[T|_] = ListaR.

