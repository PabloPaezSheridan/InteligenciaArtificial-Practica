calculadora :-
            write('Bienvenidos: Suma: 0 - Resta: 1 - Producto: 2 - Division: 3'),
            nl,
            write('Que quieres hacer?'),
            read(R),
            write('Operando 1: '),
            read(X),
            write('Operando 2: '),
            read(Y),
            (R=0-> Res is X+Y, write(Res);
            (R=1-> Res is X-Y, write(Res);
            (R=2-> Res is X*Y, write(Res);
            (R=3-> Res is X/Y, write(Res))))).


/* Poner el punto despues de cada consulta */

