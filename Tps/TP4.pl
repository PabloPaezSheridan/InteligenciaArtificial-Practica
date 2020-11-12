ingreso :-  write('Bienvenido al sistema experto de diagnostico de casos sospechosos de COVID-19'), nl,
            write('Por favor responda a las preguntas que se le harán'),nl,nl,
            write('¿Ha sufrido el paciente perdida repentina de olfato? (s/n)'), nl, read(Op), preguntaOlfato(Op).

preguntaOlfato(Op):- Op = 's' ->  write('El paciente es sospechoso de COVID-19'),nl, halt.
preguntaOlfato(Op):- Op = 'n' ->  nl,
            write('¿Cumple el paciente con  ALGUNA de las siguientes condiciones?'),nl,
            write('*Trabajador esencial'), nl,
            write('*Reside o trabaja en instituciones cerradas o de internacion prolongada'), nl,
            write('*Reside en barrio populares o es de algun pueblo originario'), nl,
            write('*Contacto estrecho con un caso de COVID confirmado dentro de un rango de 14 días'), nl,nl,
            write('(s/n): '), read(Riesgo), delegar(Riesgo).

sintomas(['Fiebre (37.5°C o más)', 'Tos', 'Odinofagia', 'Dificultad respiratoria', 'Cefalea', 'Mialgias', 'Diarrea y vómitos']).

delegar(Riesgo) :- Riesgo='s' -> sintomas(ListaSintomas), esSospechoso(1,0,ListaSintomas).
delegar(Riesgo) :- Riesgo='n' -> sintomas(ListaSintomas), esSospechoso(0,0,ListaSintomas).

esSospechoso(_,0,[]) :- write('El paciente no es sospechoso de COVID-19').
esSospechoso(0,1,[]) :- write('El paciente no es sospechoso de COVID-19').
esSospechoso(1,1,_) :- write('El paciente es sospechoso de COVID-19').
esSospechoso(0,2,_) :- write('El paciente es sospechoso de COVID-19').

esSospechoso(Riesgo,Cont,[H|T]) :- write(H), write('? (s/n): '), read(Res), pregunta(Riesgo,Cont,[H|T],Res).

pregunta(Riesgo,Cont,[_|T],Res) :- Res = 's' -> Cont2 is Cont + 1, esSospechoso(Riesgo,Cont2,T).
pregunta(Riesgo,Cont,[_|T],Res) :- Res = 'n' -> esSospechoso(Riesgo,Cont,T).
