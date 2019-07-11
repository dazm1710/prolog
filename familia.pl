%Hermanos, padres y yo
padrede('wilson','duvan').
padrede('hermila','duvan').
padrede('wilson','angie').
padrede('hermila','angie').
padrede('wilson','isabella').
padrede('hermila','isabella').

%Primos y tios

padrede('nilian','maria').
padrede('nilian','yesenia').
padrede('nilian','nailin').
padrede('yesid','maria').
padrede('yesid','yesenia').
padrede('yesid','nailin').

%Abuelos y Bisabuelos Maternos

padrede('enith','hermila').
padrede('enith','nilian').
padrede('fabian','hermila').
padrede('fabian','nilian').

padrede('sebastian','enith').
padrede('paula','enith').

padrede('nicolas','fabian').
padrede('isabell','fabian').

%Abuelos y Bisabuelos Maternos

padrede('rubiela','wilson').
padrede('benedicto','wilson').

padrede('raul','rubiela').
padrede('marisol','rubiela').

padrede('saul','benedicto').
padrede('soraya','benedicto').

%Reglas

hermanode(A,B) :-padrede(C,A), padrede(C,B), A \== B.

tiode(A,B) :- hermanode(A,C), hijode(B,C).
primo(A,B) :- tiode(C,A), hijode(B,C).
hijode(A,B) :- padrede(B,A).
abuelode(A,B) :-padrede(A,C), padrede(C,B).

casado(A,B) :- hijode(C,A), hijode(C,B), A \== B.
nietode(A,B) :- padrede(B,C), padrede(C,A).

feliz(A) :- (casado(A,B)), A \== B.
