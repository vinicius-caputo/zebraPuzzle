# GCC128 - Inteligência Artificial

## O Problema

O problema a ser resolvido é um famoso problema de logica conhecido como Zebra Puzzle. 

A sua primeira versão surgiu na Life International em 1962 da seguinte forma:
1. Existem cinco casas.
2. O Inglês vive na casa vermelha.
3. O Espanhol tem um cachorro.
4. Café é a bebida da casa verde.
5. O Ucraniano bebe chá.
6. A casa verde está à direita da casa marfim.
7. O fumante de Old Gold tem caramujos de estimação.
8. Cigarros Kools são consumidos na casa amarela.
9. Leite é a bebida da casa do meio.
10. O norueguês vive na primeira casa.
11. O homem que fuma Chesterfields vive na casa vizinha do homem que tem uma raposa.
12. Kools  é o cigarro da casa vizinha à casa onde existe um cavalo.
13. O fumante de Lucky Strike bebe suco de laranja.
14. O Japonês fuma Parliaments.
15. O Norueguês é vizinho da casa azul.

A partir dessa base de conhecimento iremos utilizar prolog para encontrar as repostas para seguinte pergunta .

- Quem bebe água?
- Quem é o dono da zebra?  

## Como usar
Basta abrir um interpretador de prolog, como o [swi-prolog](https://swish.swi-prolog.org/),  e importar a base de conhecimento.

- Para descobrir a resposta com a tabela de conhecimento completa, basta executar o seguinte comando:

```prolog
?- casas(Casas).
```
- Para descobrir quem é o dono da zebra:

```prolog   
?- donoZebra(Quem).
```
- Para descobrir quem bebe água:

```prolog
?- bebeAgua(Quem).
```
