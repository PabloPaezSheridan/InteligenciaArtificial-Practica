ingreso:- write('Ingrese una lista de elementos, para finalizar ingrese []: '),
          leer(Lista), write(Lista).

leer([H|T]) :- read(H), H\=[], leer(T).
leer([]).


