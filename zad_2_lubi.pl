% PROGRAM: lubi1
% Definiowane predykaty: lubi/2
% ============================================


% lubi(X,Y)
% opis: spe³niony, gdy osoba X lubi rzecz Y
% ---------------------------------------------

% FAKTY:

lubi(marta,wino).
lubi(marta,mandarynki).
lubi(marta,tenis).
lubi(marta,kwiaty).

lubi('Piotr',banany).
lubi('Piotr',wino).
lubi('Piotr',tenis)

% REGU£Y:

% Jan lubi to co lubi Piotr.
lubi(jan,X):-lubi('Piotr',X).

% Ania lubi to co lubi jednoczesnie Marta i Jan.
lubi(ania,X):-lubi(marta,X), lubi(jan,X).


/*
SESJA PROLOGOWA


1. Czy Piotr lubi wino?
?- lubi('Piotr',wino).
true ;
false.

2. Co lubi Piotr?
?- lubi('Piotr',X).
X = banany ;
X = wino ;
X = tenis.

3. Co lubi Marta?
?- lubi(marta,X).
X = wino ;
X = mandarynki ;
X = tenis ;
X = kwiaty.

4. Czy Marta coœ lubi?
?- lubi(marta,_).
true ;
true ;
true ;
true.

5. Kto lubi tenis?
?- lubi(X,tenis).
X = marta ;
X = 'Piotr' ;
X = jan ;
X = ania ;
false.

6. Czy ktoœ lubi jab³ka?
?- lubi(_,jablka).
false.

7. Co lubi Ania?
?- lubi(ania,X).
X = wino ;
X = tenis ;
false.

8. Co kto lubi?
?- lubi(X,Y).
X = marta,
Y = wino ;
X = marta,
Y = mandarynki ;
X = marta,
Y = tenis ;
X = marta,
Y = kwiaty ;
X = 'Piotr',
Y = banany ;
X = 'Piotr',
Y = wino ;
X = 'Piotr',
Y = tenis ;
X = jan,
Y = banany ;
X = jan,
Y = wino ;
X = jan,
Y = tenis ;
X = ania,
Y = wino ;
X = ania,
Y = tenis ;
false.


9. Jakie rzeczy lubi¹ osoby w bazie danych?
?- lubi(_,X).
X = wino ;
X = mandarynki ;
X = tenis ;
X = kwiaty ;
X = banany ;
X = wino ;
X = tenis ;
X = banany ;
X = wino ;
X = tenis ;
X = wino ;
X = tenis ;
false.

*/
