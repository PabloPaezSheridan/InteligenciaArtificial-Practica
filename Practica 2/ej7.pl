ingreso:- write('Ingrese una lista de elementos entre []: '),read(Lista),
                     contar(Lista, Cant),
                     write('Numero de elementos: '), write(Cant).

contar([],0).
contar([_|T],Cant):- contar(T,Cant_cola), Cant is Cant_cola + 1.


