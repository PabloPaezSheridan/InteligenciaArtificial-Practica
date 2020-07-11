ingreso:- write('Ingrese la primer lista de elementos entre []: '), read(L1),
          write('Ingrese la segunda lista de elementos entre []: '), read(L2),
          concatenar(L1,L2,[]).


concatenar([],[],LC) :- reverse(LC,LCR), write('Lista concatenada: '), write(LCR).
concatenar([],[HL2|TL2],LC) :- concatenar([],TL2,[HL2|LC]).
concatenar([HL1|TL1],L2,LC) :- concatenar(TL1,L2,[HL1|LC]).


