ingreso:- write('Ingrese una lista de elementos entre []: '), read(L),
         write('Elemento a buscar:'), read(X), pertenece(X,L).

pertenece(_,[]):-write('No pertenece a la lista.').
pertenece(X,[X|_]):- write('Si pertenece a la lista').
pertenece(X,[_|T]):-pertenece(X,T).

