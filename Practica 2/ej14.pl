ingreso:- write('Ingrese la lista de elementos entre []: '), read(Lista), buscarRepetido(Lista,1,1).

%Unifica Cuando se encontro coincidencia
buscarRepetido([_],0,_).
%Unifica cuando no hay elementos repetidos
buscarRepetido([],_,0) :- write('No se encontro el elemento').
%Buscar coincidencia a partir del siguiente elemento
buscarRepetido([HT|TT],_,_) :- buscarCoincidencia(HT,TT,TT).

%Cuando se termina de recorrer una vez la lista
buscarCoincidencia(_,[],Xbus):- buscarRepetido(Xbus,1,0).
%Cuando se encontro una coincidencia
buscarCoincidencia(H,[H|_],_) :- write('El elemento '), write(H), write(' es el que primero se repite'),buscarRepetido([H],0,_).
%Cuando no se encontro coincidencia en la comparacion
buscarCoincidencia(H,[_|T],Xbus):- buscarCoincidencia(H,T,Xbus).


