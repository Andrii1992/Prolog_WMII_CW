% CW1, zadanie 3
% Definiowane predykaty:
%	czlowiek/1
%	zwierze/1
%	mieszka/2
%	rodzina/2
%	pokrewienstwo
% =====================================================

% czlowiek(X)
% spe³niony, gdy X jest cz³owiekiem
% ----------------------------------------czlowiek/1
czlowiek(ala).
czlowiek(ola).
czlowiek(kamil).
czlowiek(lena).
czlowiek(marta).
% ----------------------------------------czlowiek/1

% zwierze(X)
% spe³niony, gdy X jest zwierzêciem
% ----------------------------------------
zwierze(burek).
zwierze(misiek).
% ----------------------------------------


% mieszka(X,Y)
% spe³niony, gdy X mieszka w miejscu Y
% ----------------------------------------
mieszka(ala,sloneczna).
mieszka(marta,sloneczna).
mieszka(burek,sloneczna).
mieszka(lena,ksiezycowa).
mieszka(kamil,zodiakalna).
mieszka(misiek,zodiakalna).
% ----------------------------------------



% rodzina(X,Y)
% spe³niony, gdy X i Y mieszkaj¹ w tym samym miejscu
% ----------------------------------------
rodzina(X,Y):- 
	mieszka(X,Z),
	mieszka(Y,Z),
	X\==Y.
% ----------------------------------------


% pokrewienstwo(X,Y)
% dwoje ludzi ³¹czy pokrewienstwo, je¿eli mieszkaj¹ w tym samym miejscu
% ----------------------------------------

pokrewienstwo(X,Y):-
	czlowiek(X),
	czlowiek(Y),
	mieszka(X,Z),
	mieszka(Y,Z),
	X\==Y.
% ----------------------------------------