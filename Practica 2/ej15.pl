ingreso:- write('Ingrese la lista de elementos entre []: '), read(Lista), buscarRepetido(Lista,[]).

%Unifica cuando termino de recorrer la lista
buscarRepetido([],Repetidos) :- write(Repetidos).
%Buscar coincidencia a partir del siguiente elemento
buscarRepetido([HT|TT],Repetidos) :- buscarCoincidencia(HT,TT,TT,Repetidos).

%Cuando se termina de recorrer una vez la lista
buscarCoincidencia(_,[],Xbus,Repetidos):- buscarRepetido(Xbus,Repetidos).
%Cuando se encontro una coincidencia
buscarCoincidencia(H,[H|_],Xbus,Rep) :- append(Rep,[H], Repetidos),buscarRepetido(Xbus,Repetidos).
%Cuando no se encontro coincidencia en la comparación
buscarCoincidencia(H,[_|T],Xbus,Repetidos):- buscarCoincidencia(H,T,Xbus,Repetidos).
