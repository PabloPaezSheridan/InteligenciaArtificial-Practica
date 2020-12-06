/*
ingreso:- write('Ingrese la primer lista de elementos entre []: '), read(L1),
          write('Ingrese la segunda lista de elementos entre []: '), read(L2),
          concatenar(L1,L2,[]).


concatenar([],[],LC) :- reverse(LC,LCR), write('Lista concatenada: '), write(LCR).
concatenar([],[HL2|TL2],LC) :- concatenar([],TL2,[HL2|LC]).
concatenar([HL1|TL1],L2,LC) :- concatenar(TL1,L2,[HL1|LC]).
*/

ingreso:- write('Ingrese la primer lista de elementos entre []: '), read(L1),
          write('Ingrese la segunda lista de elementos entre []: '), read(L2),
          concatenar(L1,L2,Lista),write(Lista).


concatenar([],[],[]).
concatenar([HL1|TL1],L2,[HL1|TL]) :- concatenar(TL1,L2,TL).
concatenar([],[HL2|TL2],[HL2|TL]) :- concatenar([],TL2,TL).


