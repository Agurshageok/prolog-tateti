%Definir el Tablero de Juego
tablero=
       [hueco(1,l),
        hueco(2,l),
        hueco(3,l),
        hueco(4,l),
        hueco(5,l),
        hueco(6,l),
        hueco(7,l),
        hueco(8,l),
        hueco(9,l),]


%Ocupar hueco
ocupar(Pos, _) :- hueco(Pos, l). 


%Funciones para insertar las jugadas.
jugada(Pos,[H|Hs]) :-   ocupar(Pos, [H|Hs]),
                        centro_libre([H|Hs]), 
                        arriba_libre([H|Hs]), 
                        abajo_libre([H|Hs]), 
                        izq_libre([H|Hs]), 
                        der_libre([H|Hs]).

jugadaConWrite(Pos,Hs) :- jugada(Pos,Hs),write(Hs),nl,fail.