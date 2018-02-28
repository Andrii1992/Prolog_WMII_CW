% Program: szczesliwy
% =====================================================

% madry_a(X)
% sp�niony, gdy X jest m�dr� osob�
madry_a(ola).
madry_a(adam).

% piekny_a(X)
% sp�niony, gdy X jest pi�kn� osob�
piekny_a(ala).
piekny_a(piotr).

% dobry_a(X)
% sp�niony, gdy X jest dobr� osob�
dobry_a(ala).
dobry_a(adam).

% bogaty_a(X)
% sp�niony, gdy X jest bogat� osob�
bogaty_a(jan).
bogaty_a(ula).


% silny_a(X)
% sp�niony, gdy X jest siln� osob�
silny_a(piotr).
silny_a(ula).


% jest(X,Y)
% spe�niony, osoba X posiada cech� Y
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
% spe�niony, gdy X jest kobiet�
% -----------------------------------------------------
kobieta(ola).
kobieta(ala).
kobieta(ula).

% man(X)
% spe�niony, gdy X jest m�czyzn�
% ------------------------------------------------------
man(piotr).
man(adam).
man(jan).

% lubi(X,Y)
% spe�niony, gdy osoba X lubi osob� Y
% -----------------------------------------------------
lubi(piotr,ula).
lubi(ula,X):-man(X),silny_a(X).
lubi(X,Y):- man(X), kobieta(Y), piekny_a(Y).
lubi(ola,X):-bogaty_a(X), dobry_a(X).
lubi(ala,X):-piekny_a(X), silny_a(X).

% szczesliwy(X) 
% spe�niony, gdy X jest szcz�liwy
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
Kto jest szcz�liwy?
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

Kto jest pi�kny?
3 ?- piekny_a(X).
X = ala ;
X = piotr ;
false.

Czy kto� lubi m�drych ludzi?
4 ?- madry_a(X), lubi(_,X).
false.

Kt�rzy dobrzy ludzie s� lubiani przynamniej przez jedn� osob�?
5 ?- dobry_a(X),lubi(_,X).
Y = ala ;
Y = ala ;
Y = ala ;
false.

*/