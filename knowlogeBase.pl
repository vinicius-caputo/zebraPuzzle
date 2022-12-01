direita(um, dois).
direita(dois, tres).
direita(tres, quatro).
direita(quatro, cinco).

esquerda(dois, um).
esquerda(tres, dois).
esquerda(quatro, tres).
esquerda(cinco, quatro).

%Verifica se uma casa esta a esquerda ou direita
vizinho(X, Y) :- direita(X, Y); esquerda(X, Y).

donoZebra(Quem):- 
    casas(Casas),
    member(casa(Quem, _, _, _, zebra, _), Casas).

bebeAgua(Quem):- 
    casas(Casas),
    member(casa(Quem, _, agua, _, _, _), Casas).
                                                            
casas(Casas):-                                                 
    		% Nacionalidade, Cor da casa, Bebida, Cigarro, Animal, Posição
                                                            %Regra numero:
    Casas = [                                                    %1
           casa(_, _, _, _, _, um),
           casa(_, _, _, _, _, dois),
           casa(_, _, _, _, _, tres),
           casa(_, _, _, _, _, quatro),
           casa(_, _, _, _, _, cinco)], 

member(casa(ingles, vermelha, _, _, _, _), Casas),              %2
member(casa(espanhol, _, _, _, cachorro, _), Casas),            %3
member(casa(_, verde, cafe, _, _, _), Casas),                   %4
member(casa(ucraniano, _, cha, _, _, _), Casas),                %5
member(casa(_, _, _, oldgold, caramujos, _), Casas),            %7    
member(casa(_, _, sucodelaranja, luckystrike, _, _), Casas),    %13
member(casa(_, amarela, _, kools, _, _), Casas),                %8
member(casa(japones, _, _, parliament, _, _), Casas),           %14

member(casa(noruegues, _, _, _, _, um), Casas),                 %10
member(casa(_, _, leite, _, _, tres), Casas),                   %9

member(casa(_, verde, _, _, _, A),Casas),                       %6
member(casa(_, marfim, _, _, _, B), Casas),
esquerda(A,B),

member(casa(_, _, _, chesterfield, _, C), Casas),               %11
member(casa(_, _, _, _, raposa, D), Casas),                 
vizinho(C, D),

member(casa(_, _, _, kools, _, E), Casas),                      %12
member(casa(_, _, _, _, cavalo, F), Casas),
vizinho(E, F), 

member(casa(noruegues, _, _, _, _, G), Casas),                  %15
member(casa(_, azul, _, _, _, H),Casas),
vizinho(G, H), 

%Essas regras sao necessarias para a tabela ser gerada completa
%Existe uma casa tem uma zebra;
member(casa(_, _, _, _, zebra, _), Casas),
%Existe uma casa que alguem bebe agua.
member(casa(_, _, agua, _, _, _), Casas).