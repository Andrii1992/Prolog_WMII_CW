% CW1: Zadanie 1
% Definiowane predykaty:
%	lubi/2
%	bratnia_dusza/2
% =========================================

% lubi(X,Y)
% Spe�niony, gdy osoba X lubi g�ry Y
% ----------------------------------------lunbi/2
lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy, beskidy).
lubi(jerzy, bieszczady).
lubi(adam, sudety).
lubi(justyna, bieszczady).
% ----------------------------------------lubi/2



% bratnia_dusza(X,Y)
% Spe�niony, gdy osoby X i Y lubi� te same g�ry
% ----------------------------------bratnia_dusza/2
bratnia_dusza(X,Y):-	% g�owa regu�y
	lubi(X,G),	% cia�o regu�y: podcel 1
	lubi(Y,G),	% cia�o regu�y: podcel 2
	X\==Y.		% cia�o regu�y: podcel 3
% ----------------------------------bratnia_dusza/2


/*
Informacje o programie:

Program sk�ada si� z 7 klauzul; klauzule 1-6 s� faktami,
a klauzula 7 jest regu��.
Program sk�ada si� z 2 definicji predykat�w (relacji): 
s� to relacje lubi/2 i bratnia_dusza/2

*/

/*
SESJA  PROLOGOWA:

1. Czy Jerzy lubi Sudety?
1 ?- lubi(jerzy,sudety).
false.

2. Jakie g�ry lubi Jan?
2 ?- lubi(jan,G).
G = tatry ;
G = beskidy.

3. Kto lubi Bieszczady?
3 ?- lubi(X,bieszczady).
X = jerzy ;
X = justyna.

4. Czy Jan ma bratni� dusz�?
4 ?- bratnia_dusza(jan,_).
true.

5. Kto jest bratni� dusz� Justyny?
5 ?- bratnia_dusza(justyna,X).
X = jerzy ;
false.

6. Jakie pary os�b s� bratnimi duszami?
6 ?- bratnia_dusza(X,Y).
X = jan,
Y = jerzy ;
X = jerzy,
Y = jan ;
X = jerzy,
Y = justyna ;
X = justyna,
Y = jerzy ;
false.


*/