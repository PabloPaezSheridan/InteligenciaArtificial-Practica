calculadora(R,X,Y,Res) :-  R=0-> Res is X+Y.
calculadora(R,X,Y,Res) :-  R=1-> Res is X-Y.
calculadora(R,X,Y,Res) :-  R=2-> Res is X*Y.
calculadora(R,X,Y,Res) :-  R=3-> Res is X/Y.


