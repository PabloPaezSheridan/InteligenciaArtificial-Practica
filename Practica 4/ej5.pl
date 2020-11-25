:- dynamic(libro/5).

inicio :-   write("1 - Ingresar un nuevo libro"),nl,
            write("2 - Eliminar un libro"), nl,
            write("3 - Consultar datos de un libro"),nl,
            write("4 - Promedio de costo de los libros dado un autor"),nl,
            read(Op), delegar(Op).

abrir_base :- consult('./datos.txt').
guardar:-tell('./datos.txt'), listing(libro), told.

delegar(Op) :- Op = 1 -> write('Titulo del libro'), read(Tit),nl,
                         write('Autor'), read(Aut),nl,
                         write('Editorial'), read(Edit),nl,
                         write('Precio'), read(Precio),nl,
                         cargaLibro(Tit, Aut, Edit, Precio).

delegar(Op) :- Op = 2 -> write('Ingrese el numero del libro a eliminar'), read(Nro), elimminarLibro(Nro).

delegar(Op) :- Op = 3 -> write('Nro del libro'), read(Nro), consultarLibro(Nro).

delegar(Op) :- Op = 4 -> write('Autor'), read(Autor), promedioxAutor(Autor).

traerNroUltimo(Nro) :- libro(_,_,_,_,_),retract(libro(_,_,_,_,_)),traerNroUltimo().
traerNroUltimo(_).

contarLibros(NroPreds) :- libro(_,_,_,_,_),retract(libro(_,_,_,_,_)),
                          contarLibros(Cont), NroPreds is Cont + 1.
contarLibros(0).

contarLibrosxAutor(Autor,NroLibros) :-  libro(_,_,Autor,_,_),retract(libro(_,_,Autor,_,_)),contarLibrosxAutor(Autor,Cont),NroLibros is Cont + 1.
contarLibrosxAutor(_,0).

sumarPrecios(Autor,Acum):-libro(_,_,Autor,_,Precio),retract(libro(_,_,Autor,_,Precio)),sumarPrecios(Autor,Acum2),Acum is Acum2 + Precio.
sumarPrecios(_,0).


cargaLibro(Tit, Aut, Edit, Precio) :- abrir_base, contarLibros(NroUltimo), Nro is NroUltimo + 1, abrir_base, assert(libro(Nro,Tit,Aut,Edit,Precio)), guardar.

elimminarLibro(Nro) :- abrir_base, retract(libro(Nro,_,_,_,_)),guardar.

consultarLibro(Nro) :- abrir_base, libro(Nro,Titulo,Autor,Editorial,Precio),
                       write("Titulo: "), write(Titulo),nl,
                       write("Autor: "), write(Autor), nl,
                       write("Editorial: "), write(Editorial),nl.

promedioxAutor(Autor):-
    abrir_base, contarLibrosxAutor(Autor,NroLibros),abrir_base,sumarPrecios(Autor,Acum), Prom is Acum/NroLibros, write(Prom).
