% CW1: Zadanie 1
% Definiowane predykaty:
%	lubi/2
%	bratnia_dusza/2
% =========================================

% lubi(X,Y)
% Spe³niony, gdy osoba X lubi góry Y
% ----------------------------------------lunbi/2
lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy, beskidy).
lubi(jerzy, bieszczady).
lubi(adam, sudety).
lubi(justyna, bieszczady).
% ----------------------------------------lubi/2



% bratnia_dusza(X,Y)
% Spe³niony, gdy osoby X i Y lubi¹ te same góry
% ----------------------------------bratnia_dusza/2
bratnia_dusza(X,Y):-	% g³owa regu³y
	lubi(X,G),	% cia³o regu³y: podcel 1
	lubi(Y,G),	% cia³o regu³y: podcel 2
	X\==Y.		% cia³o regu³y: podcel 3
% ----------------------------------bratnia_dusza/2


/*
Informacje o programie:

Program sk³ada siê z 7 klauzul; klauzule 1-6 s¹ faktami,
a klauzula 7 jest regu³¹.
Program sk³ada siê z 2 definicji predykatów (relacji): 
s¹ to relacje lubi/2 i bratnia_dusza/2

*/

/*
SESJA  PROLOGOWA:

1. Czy Jerzy lubi Sudety?
1 ?- lubi(jerzy,sudety).
false.

2. Jakie góry lubi Jan?
2 ?- lubi(jan,G).
G = tatry ;
G = beskidy.

3. Kto lubi Bieszczady?
3 ?- lubi(X,bieszczady).
X = jerzy ;
X = justyna.

4. Czy Jan ma bratni¹ duszê?
4 ?- bratnia_dusza(jan,_).
true.

5. Kto jest bratni¹ dusz¹ Justyny?
5 ?- bratnia_dusza(justyna,X).
X = jerzy ;
false.

6. Jakie pary osób s¹ bratnimi duszami?
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