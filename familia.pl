padrede('juan','maria').
padrede('pablo','juan').
padrede('pablo','marcela').
padrede('lina','marcela').
padrede('luis','pablo').
padrede('marcela','jose').
padrede('carlos','debora').
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
casadocon(A,B) :- padrede(A,C), padrede(B,C), A \== B.
bisabuelo(A,B) :- padrede(A,C), abuelode(C,B).
tiode(A,B) :- padrede(C,B), hermanode(A,C).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
esfeliz(A,B) :- casadocon(A,B).
