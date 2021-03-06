%usuario(idUsuario, nombre, localidad).
usuario(1,'miguel',rosario).
usuario(2,'pato',funes).
usuario(3,'marilyn',rosario).

%intereses(idUsuario, [lista intereses]).
intereses(1,['natacion','mineria de datos','yoga','comida mexicana']).
intereses(2,['frutas organicas','Fast & Furious','yoga','formula 1']).
intereses(3,['natacion','formula 1','yoga','frutas organicas']).

ingreso :- write('1 - Mostrar Intereses en comun'),nl,
           write('2 - Son candidatos a ser amigos?'),nl,
           write('3 - Mostrar los intereses de ambos'),nl,
           write('4 - Mostrar usuarios que viven en una ciudad'),nl, read(Op), delegar(Op).
           
delegar(Op) :- Op=1->  write('Ingrese el primer usuario '), read(Usr1),write('Ingrese el segundo usuario '), read(Usr2), intComun(Usr1,Usr2).
delegar(Op) :- Op=2->  write('Ingrese el primer usuario '), read(Usr1),write('Ingrese el segundo usuario '), read(Usr2), posAmigos(Usr1,Usr2).
delegar(Op) :- Op=3->  write('Ingrese el primer usuario '), read(Usr1),write('Ingrese el segundo usuario '), read(Usr2), intAmbos(Usr1,Usr2).
delegar(Op) :- Op=4->  write('Ingrese la ciudad '), read(Ciu), usrenCiu(Ciu).

intComun(Usr1,Usr2) :-  usuario(NU1,Usr1,_), usuario(NU2,Usr2,_),
                        intereses(NU1,Int1), intereses(NU2,Int2),
                        busIntComun(Int1,Int2,Int2,[]).

busIntComun([],_,_,[]):- write('No se encontraron coincidencias').
busIntComun([],_,_,Intereses) :- write('Los intereses en comun son: '),write(Intereses).
busIntComun([H|T1],[H|_],Int2,Int) :- append(Int,[H],IntN),busIntComun(T1,Int2,Int2,IntN).
busIntComun([_|T1],[],Int2,Int):- busIntComun(T1,Int2,Int2,Int).
busIntComun([H1|T1],[H2|T2],Int2,Int) :- busIntComun([H1|T1],T2,Int2,Int).

posAmigos(Usr1,Usr2) :-  usuario(NU1,Usr1,_), usuario(NU2,Usr2,_),
                        intereses(NU1,Int1), intereses(NU2,Int2),
                        contIntComun(Int1,Int2,Int2,0).

contIntComun([],_,_,Cont):- Cont >= 2 -> write('Son candidatos a amigos').
contIntComun([],_,_,Cont) :- Cont < 2 -> write('No son candidatos a amigos').
contIntComun([H|T1],[H|_],Int2,Cont) :- Cont2 is Cont+1, contIntComun(T1,Int2,Int2,Cont2).
contIntComun([_|T1],[],Int2,Cont):- contIntComun(T1,Int2,Int2,Cont).
contIntComun([H1|T1],[H2|T2],Int2,Cont) :- contIntComun([H1|T1],T2,Int2,Cont).

intAmbos(Usr1,Usr2) :-  usuario(NU1,Usr1,_), usuario(NU2,Usr2,_),
                        intereses(NU1,Int1), intereses(NU2,Int2),
                        busIntAmbos(Int2,Int1,Int1,Int1).

busIntAmbos([],_,_,Intereses) :- write('Los intereses en comun son: '),write(Intereses).
busIntAmbos([H|T1],[H|_],Int1,Union) :- busIntAmbos(T1,Int1,Int1,Union).
busIntAmbos([H1|T1],[],Int1,Union):- append(Union,[H1],Union2), busIntAmbos(T1,Int1,Int1,Union2).
busIntAmbos([H1|T1],[H2|T2],Int1,Union) :- busIntAmbos([H1|T1],T2,Int1,Union).


usrenCiu(Ciu) :- findall(X,usuario(_,X,Ciu),Usuarios),
                 write('Los usuarios que viven en'),write(Ciu),write(' son: '), write(Usuarios).
