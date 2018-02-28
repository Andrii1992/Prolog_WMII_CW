% Program: klocki
% Baza wiedzy o uk³adzie klocków
% Definiowane predykaty (relacje)
% 	na/2
%       pod/2
%       miedzy/3
% ======================================

% na(X,Y)
% opis: spe³niony, klocek X le¿y
%       na klocku Y
% -----------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
% -----------------------------------na/2


% pod(X,Y)
% opis: spe³niony, klocek X le¿y
%       pod klockiem Y
% -----------------------------------pod/2
	pod(X,Y):-	 % g³owa regu³y
		na(Y,X). % cia³o regu³y: podcel1
% -----------------------------------pod/2
      

% miedzy(X,Y,Z)
% opis: spe³niony, gdy klocek Y le¿y 
%       miêdzy X i Z
% -----------------------------------miedzy/3
	miedzy(X,Y,Z):-
		pod(Y,X),
		na(Y,Z).
	miedzy(X,Y,Z):- pod(Y,Z), na(Y,X).
% -----------------------------------miedzy/3



/*
Informacje o programie:
Program sk³ada siê z 3 klauzul, które s¹
faktami.
Program zawiera definicjê 1 relacji.
Jest to relacja na/2, która sk³ada siê 
z 3 klauzul, które s¹ faktami
*/



/*
Sesja  prologowa.

1.  Czy klocek d le¿y na klocku c?
?- na(d,c).
true.

2.  Czy klocek c le¿y na klocku a?
?- na(c,a).
true ;
false.

3. Czy klocek b le¿y na klocku c?
 ?- na(b,c).
false.

4. Jaki klocek le¿y na klocku c?
?- na(X,c).
X = d.

5. Na jakim klocku le¿y klocek c?
 ?- na(c,X).
X = a ;
X = b.

6. Para klocków (X,Y), taka ¿e X le¿y na Y?
 ?- na(X,Y).
X = c,
Y = a ;
X = c,
Y = b ;
X = d,
Y = c.

7. Czy jakiœ klocek le¿y na c?
?- na(_,c).
true.

8. Czy jakiœ klocek le¿y pod klockiem c?
 ?- na(c,_).
true ;
true.

9. Miêdzy jakimi klockami le¿y klocek c?
?- na(X,c),na(c,Y).
X = d,
Y = a ;
X = d,
Y = b.

10. Jaki klocek le¿y miêdzy dwoma innymi klockami?
?- na(_,X),na(X,_).
X = c ;
X = c.

*/