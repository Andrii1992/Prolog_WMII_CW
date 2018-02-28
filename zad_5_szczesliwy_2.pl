% Program: szczesliwy
% =====================================================


% jest(X,Y)
% spe³niony, osoba X posiada cechê Y
% ---------------------------------------------------
jest(ola,madry_a).
jest(ala,piekny_a).
jest(ala,dobry_a).
jest(piotr,piekny_a).
jest(piotr,silny_a).
jest(adam,dobry_a).
jest(adam,madry_a).
jest(jan,bogaty_a).
jest(ula,bogaty_a).
jest(ula,silny_a).


% kobieta(X)
% spe³niony, gdy X jest kobiet¹
% -----------------------------------------------------
kobieta(ola).
kobieta(ala).
kobieta(ula).

% man(X)
% spe³niony, gdy X jest mê¿czyzn¹
% ------------------------------------------------------
man(piotr).
man(adam).
man(jan).

% lubi(X,Y)
% spe³niony, gdy osoba X lubi osobê Y
% -----------------------------------------------------
lubi(piotr,ula).
lubi(ula,X):-man(X),jest(X,silny_a).
lubi(X,Y):- man(X), kobieta(Y), jest(Y,piekny_a).
lubi(ola,X):-jest(X,bogaty_a), jest(X,dobry_a).
lubi(ala,X):-jest(X,piekny_a), jest(X,silny_a).

% szczesliwy(X) 
% spe³niony, gdy X jest szczêœliwy
% ---------------------------------------------------------
szczesliwy(X):-jest(X,bogaty_a).
szczesliwy(X):- kobieta(X),
                man(Y),
                lubi(X,Y),
                lubi(Y,X).
 
szczesliwy(Y):- kobieta(X),
                man(Y),
                lubi(X,Y),
                lubi(Y,X).

/*
Kto jest szczêœliwy?
1 ?- szczesliwy(X).
X = jan ;
X = ula ;
X = ala ;
X = ula ;
X = piotr ;
X = piotr ;
false.

Kto kogo lubi?
2 ?- lubi(X,Y).
X = piotr,
Y = ula ;
X = ula,
Y = piotr ;
X = piotr,
Y = ala ;
X = adam,
Y = ala ;
X = jan,
Y = ala ;
X = ala,
Y = piotr ;
false.

Kto jest piêkny?
3 ?- jest(X,piekny_a).
X = ala ;
X = piotr ;
false.

Czy ktoœ lubi m¹drych ludzi?
4 ?- lubi(_,X),jest(X,madry_a).
false.

Którzy dobrzy ludzie s¹ lubiani przynamniej przez jedn¹ osobê?
5 ?- jest(Y,dobry_a),lubi(_,Y).
Y = ala ;
Y = ala ;
Y = ala ;
false.

*/