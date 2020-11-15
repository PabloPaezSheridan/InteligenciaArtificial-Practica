:- dynamic(habito/2).

inicio :-   write('1 - Habitos por animal'),nl,
            write('2 - Animales por habito'),nl,
            read(Op),
            abrir_base,
            delegar(Op).

abrir_base:-consult('./datos.txt').

delegar(Op) :- Op = 1 -> write('Ingrese el animal: '),read(Animal),listarHabitos(Animal).

delegar(Op) :- Op = 2 -> write('Ingrese el habito: '),read(Habito), listarAnimales(Habito).

listarHabitos(Animal):- habito(Animal, X), write(X), nl, fail.
listarHabitos(_).

listarAnimales(Habito) :- habito(Y,X), functor(X,Nombre,_), Nombre = Habito -> write(Y), nl, retract(habito(Y,X)), listarAnimales(Habito).
%no se porque en este caso solo me anda si uso el retract, con el fail solo lista el primero.
listarAnimales(_).

/*
    :- dynamic habito/2.

    habito(perro, alimentacion(balanceado,25)).
    habito(perro, bebida(agua,30))
    habito(perro, reproduccion(todo el año, 4))
    habito(perro, horadesueño(8)).

    habito(gato, alimentacion(caza,20)).
    habito(gato, bebida(agua,25))
    habito(gato, reproduccion(todo el año, 3))
    habito(gato, horadesueño(6)).
*/
