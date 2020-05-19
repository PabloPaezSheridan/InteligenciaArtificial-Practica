hombre(pablo).
hombre(daniel).
hombre(juan).
hombre(jose).
hombre(coco).
hombre(aristobulo).

mujer(estela).
mujer(patricia).
mujer(belen).
mujer(elisa).
mujer(lita).
mujer(mara).
mujer(eliana).
mujer(estela).

padres(pablo,patricia,daniel).
padres(belen,patricia,daniel).
padres(mara,estela,juan).
padres(eliana,estela,juan).
padres(estela,lita,coco).
padres(patricia,lita,coco).
pares(daniel,elisa,aritobulo).
padres(jose,elisa,aristobulo).

eshermana(A,B) :- mujer(A),padres(A,X,Y), padres(B,X,Y).

esnieto(A,B) :- padres(A,X,Y), padres(X,B,B2).
esnieto(A,B) :- padres(A,X,Y), padres(X,B2,B).
esnieto(A,B) :- padres(A,X,Y), padres(Y,B,B2).
esnieto(A,B) :- padres(A,X,Y), padres(Y,B2,B).

esabuelo(B,A) :- padres(A,X,Y), padres(X,B,B2).
esabuelo(B,A) :- padres(A,X,Y), padres(X,B2,B).
esabuelo(B,A) :- padres(A,X,Y), padres(Y,B,B2).
esabuelo(B,A) :- padres(A,X,Y), padres(Y,B2,B).

estia(A,B) :- mujer(A),padres(B,X,Y),padres(X,P1,P2),padres(A,P1,P2).
estia(A,B) :- mujer(A),padres(B,X,Y),padres(Y,P1,P2),padres(A,P1,P2).

estia2(A,B) :- mujer(A),padres(B,X,Y),eshermana(A,X).
estia2(A,B) :- mujer(A),padres(B,X,Y),eshermana(A,Y).



