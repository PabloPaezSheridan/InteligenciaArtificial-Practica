:- dynamic(persona/2).

inicio :-   abrir_base,
            write('Ingrese el codigo de la persona: '),
            read(Cod),
            verificarExistencia(Cod).

abrir_base :- consult('./datos.txt').

verificarExistencia(Cod) :- persona(Cod,X) -> write('La persona es: '),write(X),nl,halt.

verificarExistencia(Cod):- agregar(Cod).

agregar(Cod) :- write('Ingrese el nombre de la persona'), read(Nombre), assert(persona(Cod,Nombre)), guardar().

guardar:-tell('./datos.txt'), listing(persona), told.

