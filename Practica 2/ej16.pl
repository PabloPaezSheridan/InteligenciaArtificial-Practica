ingreso:- write('Ingrese la lista de elementos entre []: '), read(Lista),
          write('Ingrese el elemento a buscar '), read(Item), buscarRepetido(Lista,Item,0).

%Unifica Cuando se encontro coincidencia
buscarRepetido([],Item,Cont) :- write('El elemento '), write(Item), write(' se repite '), write(Cont), write(' veces.').
%Unifica cuando no hay elementos repetidos
buscarRepetido([],_,0) :- write('No se encontro el elemento').
%Buscar coincidencia a partir del elemento
buscarRepetido([H|T],Item,Cont) :- buscarCoincidencia(Item,[H|T],Cont).

%Cuando se termina de recorrer la lista
buscarCoincidencia(Item,[],Cont):- buscarRepetido([],Item,Cont).
%Cuando se encontro una coincidencia
buscarCoincidencia(H,[H|T],Cont) :- Cont2 is Cont+1, buscarCoincidencia(H,T,Cont2).
%Cuando no se encontro coincidencia en el recorrido
buscarCoincidencia(H,[_|T],Cont):- buscarCoincidencia(H,T,Cont).
