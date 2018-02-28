% Przyjaciele
% ==============================================

% lubi(X,Y)
% spelniony, gdy osoba X lubi osob� Y
% ----------------------------------------------
lubi(ola,X):-jarosz(X), uprawia_sport(X).
lubi(ewa,X):-jarosz(X), nie_pali(X).
lubi(iza,X):-czyta_ksiazki(X).
lubi(iza,X):-uprawia_sport(X), nie_pali(X).
lubi(jan,X):-uprawia_sport(X).
lubi(piotr,X):-czyta_ksiazki(X).
lubi(piotr,X):-jarosz(X), uprawia_sport(X).
lubi(pawel,X):-jarosz(X), uprawia_sport(X), czyta_ksiazki(X).

% jarosz(X)
% spe�niony, gdy osoba X jest jaroszem
% -------------------------------------------------
jarosz(ola).
jarosz(ewa).
jarosz(jan).
jarosz(pawel).

% nie_pali(X)
% spe�niony, gdy osoba X nie pali papieros�w
% --------------------------------------------------
nie_pali(ola).
nie_pali(ewa).
nie_pali(jan).

% czyta_ksiazki(X)
% spe�niony, gdy osoba X czyta ksi�zki
% -------------------------------------------------
czyta_ksiazki(ola).
czyta_ksiazki(iza).
czyta_ksiazki(piotr).

% uprawia_sport(X)
% spe�niony, gdy osoba X uprawia sport
% ------------------------------------------------
uprawia_sport(ola).
uprawia_sport(jan).
uprawia_sport(piotr).
uprawia_sport(pawel).

% przyjaciele(X,Y)
% spelniony, gdy osoby X i Y lubi� si� wzajemnie
% ------------------------------------------------
przyjaciele(X,Y):-lubi(X,Y),lubi(Y,X),X\==Y.


/*
1 ?- przyjaciele(X,Y).

X = ola,
Y = jan ;

X = ola,
Y = pawel ;

X = iza,
Y = piotr ;

X = jan,
Y = ola ;

X = jan,
Y = piotr ;

X = piotr,
Y = iza ;

X = piotr,
Y = jan ;

X = pawel,
Y = ola ;

false.

*/