kobieta(miroslawa).
kobieta(magda).
kobieta(karolina).
kobieta(danuta).
kobieta(irena).

mezczyzna(krzysztof).
mezczyzna(ryszard).
mezczyzna(tadeusz).
mezczyzna(michal).

rodzic(krzysztof, michal).
rodzic(krzysztof, karolina).
rodzic(krzysztof, magda).
rodzic(miroslawa, michal).
rodzic(miroslawa, magda).
rodzic(miroslawa, karolina).
rodzic(ryszard, krzysztof).
rodzic(danuta, krzysztof).
rodzic(tadeusz, miroslawa).
rodzic(irena, miroslawa).

ojciec(X,Y):-mezczyzna(X),rodzic(X,Y).
matka(X,Y):-kobieta(X),rodzic(X,Y).

jest_ojciec(X):-ojciec(X,_).
jest_matka(X):-matka(X,_).

rodzenstwo(X,Y):- rodzic(Z,X),rodzic(Z,Y),X\==Y.
brat(X,Y):- mezczyzna(X),rodzenstwo(X,Y).
siostra(X,Y):- kobieta(X),rodzenstwo(X,Y).

dziadek(X,Y):- ojciec(X,Z),rodzic(Z,Y).
babcia(X,Y):- matka(X,Z),rodzic(Z,Y).
wnuk(X,Y):- babcia(Y,X).
wnuk(X,Y):- dziadek(Y,X).


% Definicja rekurencyjna
przodek(X,Y):- rodzic(X,Y).
przodek(X,Y):- rodzic(X,Z),przodek(Z,Y).
