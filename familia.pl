%Hermanos, padres y yo
padreDe('Wilson','Duvan').
padreDe('Hermila','Duvan').
padreDe('Wilson','Angie').
padreDe('Hermila','Angie').
padreDe('Wilson','Isabella').
padreDe('Hermila','Isabella').

%Primos y tios

padreDe('Nilian','Maria').
padreDe('Nilian','Yesenia').
padreDe('Nilian','Nailin').
padreDe('Yesid','Maria').
padreDe('Yesid','Yesenia').
padreDe('Yesid','Nailin').

%Abuelos y Bisabuelos Maternos

padreDe('Enith','Hermila').
padreDe('Enith','Nilian').
padreDe('Fabian','Hermila').
padreDe('Fabian','Nilian').

padreDe('Sebastian','Enith').
padreDe('Paula','Enith').

padreDe('Nicolas','Fabian').
padreDe('Isabell','Fabian').

%Abuelos y Bisabuelos Maternos

padreDe('Rubiela','Wilson').
padreDe('Benedicto','Wilson').

padreDe('Raul','Rubiela').
padreDe('Marisol','Rubiela').

padreDe('Saul','Benedicto').
padreDe('Soraya','Benedicto').

%Reglas

hermanoDe(A,B) :-padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B) :- hermanoDe(A,C), hijoDe(B,C).
primo(A,B) :- tioDe(C,A), hijoDe(B,C).
hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :-padreDe(A,C), padreDe(C,B).

casado(A,B) :- hijoDe(C,A), hijoDe(C,B), A \== B.
nietoDe(A,B) :- padreDe(B,C), padreDe(C,A).

feliz(A) :- (casado(A,B)), A \== B.
