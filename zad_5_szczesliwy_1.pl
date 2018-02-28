% Program: szczesliwy
% =====================================================

% madry_a(X)
% sp³niony, gdy X jest m¹dr¹ osob¹
madry_a(ola).
madry_a(adam).

% piekny_a(X)
% sp³niony, gdy X jest piêkn¹ osob¹
piekny_a(ala).
piekny_a(piotr).

% dobry_a(X)
% sp³niony, gdy X jest dobr¹ osob¹
dobry_a(ala).
dobry_a(adam).

% bogaty_a(X)
% sp³niony, gdy X jest bogat¹ osob¹
bogaty_a(jan).
bogaty_a(ula).


% silny_a(X)
% sp³niony, gdy X jest siln¹ osob¹
silny_a(piotr).
silny_a(ula).


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
lubi(ula,X):-man(X),silny_a(X).
lubi(X,Y):- man(X), kobieta(Y), piekny_a(Y).
lubi(ola,X):-bogaty_a(X), dobry_a(X).
lubi(ala,X):-piekny_a(X), silny_a(X).

% szczesliwy(X) 
% spe³niony, gdy X jest szczêœliwy
% ---------------------------------------------------------
szczesliwy(X):-bogaty_a(X).
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
3 ?- piekny_a(X).
X = ala ;
X = piotr ;
false.

Czy ktoœ lubi m¹drych ludzi?
4 ?- madry_a(X), lubi(_,X).
false.

Którzy dobrzy ludzie s¹ lubiani przynamniej przez jedn¹ osobê?
5 ?- dobry_a(X),lubi(_,X).
Y = ala ;
Y = ala ;
Y = ala ;
false.

*/