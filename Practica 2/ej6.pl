ingreso(Resta):- write('Ingrese una lista de numeros enteros entre []: '), read(Lista),hacerResta(Lista,Resta).
hacerResta(Lista,Resta) :- [Primer|_] = Lista, reverse(Lista,ListaR), [Ultimo|_] = ListaR, Resta is Primer - Ultimo.
