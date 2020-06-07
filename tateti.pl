%%%%%%%%%%%%%
% 1 | 2 | 3 %
%---------- %
% 4 | 5 | 6 %
%---------- %
% 7 | 8 | 9 %
%%%%%%%%%%%%%

%Definir el Tablero de Juego
hueco(1,libre).
hueco(2,libre).
hueco(3,libre).
hueco(4,libre).
hueco(5,libre).
hueco(6,libre).
hueco(7,libre).
hueco(8,libre).
hueco(9,libre).


%Ocupar hueco
ocuparPorMaquina(Pos, _) :- hueco(Pos, cruz). 
ocuparPorJugador(Pos, _) :- hueco(Pos, circulo). 

centro_libre (_) :- true.
arriba_libre (_) :- true.
abajo_libre (_) :- true.
izq_libre (_) :- true.
der_libre (_) :- true.


%Funciones para insertar las jugadas.
jugada(Pos,[H|Hs]) :-   ocuparPorJugador(Pos, [H|Hs]),
                        centro_libre([H|Hs]), 
                        arriba_libre([H|Hs]), 
                        abajo_libre([H|Hs]), 
                        izq_libre([H|Hs]), 
                        der_libre([H|Hs]).

jugadaConWrite(Pos,Hs) :- jugada(Pos,Hs),write(Hs),nl,fail.