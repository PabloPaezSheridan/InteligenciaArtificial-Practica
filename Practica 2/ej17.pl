persona(jaime, [tala,rosario,mendoza]).
persona(rosa, [tala,cordoba,mendoza]).
persona(mateo, [tala,rosario,mendoza]).
persona(pablo, [villaguay,rosario,mendoza]).
persona(marcos, [tala,parana,mendoza]).
persona(patricia, [parana,rosario,mendoza]).

ingreso :- write('Ingrese nombre de la persona: '), read(Nombre),
           write('Ingrese una ciudad para saber si la visito: '), read(Ciudad), visitoCiudad(Nombre,Ciudad).

visitoCiudad(Nombre,Ciudad) :- persona(Nombre,Ciudades), buscarRepetido(Ciudades,Ciudad,1).

%Unifica Cuando se encontro coincidencia
buscarRepetido([],Item,1) :- write('La persona viajo a '), write(Item).
%Unifica cuando no hay elementos repetidos
buscarRepetido([],Item,0) :- write('La persona no viajo a '), write(Item).
%Buscar coincidencia a partir del elemento
buscarRepetido([H|T],Item,_) :- buscarCoincidencia(Item,[H|T]).

%Cuando se termina de recorrer la lista
buscarCoincidencia(Item,[]):- buscarRepetido([],Item,0).
%Cuando se encontro una coincidencia
buscarCoincidencia(H,[H|_]) :- buscarRepetido([],H,1).
%Cuando no se encontro coincidencia en el recorrido
buscarCoincidencia(H,[_|T]):- buscarCoincidencia(H,T).
