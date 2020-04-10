hombre(pablo).
hombre(daniel).
hombre(juancito).
hombre(jose).
hombre(coco).
hombre(aristobulo).
mujer(estela).
mujer(patricia).
mujer(belen).
mujer(elisa).
mujer(lita).

padres(pablo,patricia,daniel).
padres(belen,patricia,daniel).

hermano(pablo,belen).
hermano(estela,patricia).
hermano(daniel,jose).

nieto(pablo,coco).
nieto(pablo,aristobulo).
nieto(pablo,elisa).
nieto(pablo,lita).
nieto(belen,coco).
nieto(belen,aristobulo).
nieto(belen,elisa).
nieto(belen,lita).

tio(estela,pablo).
tio(estela,belen).
tio(jose,pablo).
tio(jose,pablo).

estia(X,Y) :- mujer(X),tio(X,Y).



