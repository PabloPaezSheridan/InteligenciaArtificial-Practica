guitarrista(carolina,rosario).
guitarrista(jose,rosario).
guitarrista(miguel,funes).

cantante(mariano,rosario).
cantante(silvia,funes).
cantante(mauro,funes).

baterista(diego,casilda).
baterista(laura,rosario).
baterista(eduardo,roldan).

ciudadesdistintas(A,B,C) :- A \== B, B \== C, A \== C.
formarBanda(Ciudad):- cantante(A,Ciudad),guitarrista(B,Cuidad),baterista(C,Ciudad), ciudadesdistintas(A,B,C).
