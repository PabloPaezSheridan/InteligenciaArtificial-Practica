hijo(juan,miguel).
hijo(jose,miguel).
hijo(miguel,roberto).
hijo(julio,roberto).
hijo(roberto,carlos).

antecesorDe(X,Y) :- hijo(X,Y); (hijo(X,Z), antecesorDe(Z,Y)).


