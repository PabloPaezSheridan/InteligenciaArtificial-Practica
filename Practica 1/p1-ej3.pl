pertenece(brasil,grupo1).
pertenece(espana,grupo1).
pertenece(italia,grupo1).
pertenece(jamaica,grupo1).
pertenece(argentina,grupo2).
pertenece(nigeria,grupo2).
pertenece(holanda,grupo2).
pertenece(escocia,grupo2).

esContrincante(X,Y) :- (pertenece(X,grupo1),pertenece(Y,grupo1));
                      (pertenece(X,grupo2),pertenece(Y,grupo2)).
                      
/*
esContrincante(argentina,brasil).
esContrincante(holanda,Quien). (despues ir poniendo ; para ver los rivales)
*/
