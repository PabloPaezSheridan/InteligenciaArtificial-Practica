ingreso:- write('Ingrese la primer lista de elementos entre []: '), read(L1),
          write('Ingrese la segunda lista de elementos entre []: '), read(L2),
          concatenar(L1,L2,[]).


concatenar([],[],LC) :- write('Lista concatenada: '), write(LC).
concatenar([HL1|TL1],L2,HLC) :- concatenar(TL1,L2,[HLC|HL1]).
concatenar([],[HL2|TL2],HLC) :- concatenar([],TL2,[HLC|HL2]).


