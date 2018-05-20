
/** Ambiente */
dimensao(4,4).
poco(4,4).
poco(3,3).
poco(1,3).
ouro(3,2).

validaPosicao(X,Y):-
    dimensao(Px,Py),
    X > 0, X =< Px,
    Y > 0, Y =< Py.

/** Agente */
posicao(1,1).
:- dynamic posicao/2.

/*      Atuadores       */
virarDireita:- print("virar a direita").
virarEsquerda:- print("virar a direita").
paraFrente:- print("virar para frente").
agarrar:- print("agarrar").
atirar:- print("atirar").
escalar:- print("escalar").

/*      Sensores        */
fedor:- print("Fedor").
brisa:- print("brisa").
brilho:- print("brilho").
impacto:- print("impacto").
grito:- print("grito").
    
/**
escolher():-
    random_between(1, 4, R),
    print(R).
   */ 

    