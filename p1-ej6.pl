guitarrista(carolina,rosario).
guitarrista(jose,rosario)
guitarrista(miguel,funes).
cantante(mariano,rosario).
cantante(silvia,funes).
cantante(mauro,funes).
baterista(diego,casilda).
baterista(laura,rosario).
baterista(eduardo,roldan).

formarBanda(Ciudad):- cantante(_,Ciudad),guitarrista(_,Cuidad),baterista(_,Ciudad).
