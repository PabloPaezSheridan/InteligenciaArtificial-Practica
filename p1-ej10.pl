tareaPrecede(a,c).
tareaPrecede(c,d).
tareaPrecede(b,d).
tareaPrecede(d,e).
tareaPrecede(e,h).
tareaPrecede(e,i).
tareaPrecede(b,f).
tareaPrecede(f,g).
tareaPrecede(g,j).
tareaPrecede(i,j).

requiere_de(X,Y) :- tareaPrecede(X,Y);(tareaPrecede(X,Z),requiere_de(Z,Y)).

