:- dynamic ([
        pos_agente/1,
        pos_ouro/1,
        pos_buraco/1,
        pos_wumpus/1,
        score/1,
        dimensao/1,
        visitado/1,
        visitado_campo/1,
        eh_burado/2,
        eh_wumpus/2,
        eh_ouro/2]).

principal:-
    inicializar,
    caminhar([1,1]).

inicializar:- 
    assert(pos_wumpus([4,1])),
    assert(pos_buraco([4,4])),
    assert(pos_buraco([3,3])),
    assert(pos_buraco([1,3])),
    assert(pos_agente([1,1])).
    

caminhar([X,Y]):-
    obter_percepcao(Percepcao),
    atualizar_conhecimento(Percepcao).

/*      Base de conhecimento        */


/*      Sensores        */
obter_percepcao([Fedor, Brisa, Brilho]):-
    cheirar(Fedor),
    sentir(Brisa),
    enchergar(Brilho).

cheirar(sim):-
    pos_agente(Pa),
    pos_wumpus(Pw),
    adj(Pa, Pw).
cheirar(nao).

sentir(sim):-
    pos_agente(Pa),
    pos_buraco(Pb),
    adj(Pa,Pb).
sentir(nao).

enchergar(sim):-
    pos_agente(Pa),
    pos_ouro(Pa).

enchegar(nao).

/*      Util        */
adj([Xa,Ya],[Xb,Yb]):-
    Xa = Xb+1, Ya = Yb+1,
    Xa = Xb+1, Ya = Yb-1,
    Xa = Xb-1, Ya = Yb+1,
    Xa = Xb-1, Ya = Yb-1.



validaPosicao(X,Y):-
    dimensao(Px,Py),
    X > 0, X =< Px,
    Y > 0, Y =< Py.



/*      Atuadores       */
virarDireita:- print("virar a direita").
virarEsquerda:- print("virar a direita").
paraFrente:- print("virar para frente").
agarrar:- print("agarrar").
atirar:- print("atirar").
escalar:- print("escalar").


impacto(X,Y):- print("impacto").
grito(X,Y):- print("grito").

/**
escolher():-
    random_between(1, 4, R),
    print(R).
   */ 

    