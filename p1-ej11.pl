factorial(0, 1).
factorial(X,Fact) :- X>0, X1 is X - 1, factorial(X1,F1), Fact is X* F1.


