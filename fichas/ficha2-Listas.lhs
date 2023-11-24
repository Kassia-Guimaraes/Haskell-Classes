% Literate Programming em Haskell
% Jorge Gustavo Rocha
% 4 de outubro, 2022

Ficha 2 - Listas
================================================

Definição de uma lista
----

Definição literal de uma lista:

> lista = [ 7, 6, 1, 4, 9]
> listac = [ 2^2, 3^3, 4^4]

Operações básicas
----

As principais operações são `head` e `tail`, e depois `take` e `drop`.

`head lista` pega numa lista e dá o primeiro elemento da lista.

`last lista` pega numa lista e dá o último elemento da lista.

`tail lista` pega numa lista e dá uma lista, sem o primeiro elemento.

`init lista` pega numa lista e dá uma lista, sem o último elemento.

`take n lista` pela numa lista e dá uma lista com os n primeiros elementos.

`drop n lista` pela numa lista e dá uma lista sem os primeiros n elementos.

`tail lista == drop 1 lista`

> um =
>   print(lista) >>
>   print([head lista] == take 1 lista) >>
>   print(last lista) >>
>   print(tail lista) >>
>   print(init lista) >>
>   print(tail lista == drop 1 lista) >>
>   print(init lista) 

Juntar um elemento a uma lista (operador `:`)

> doisa = 
>   print( head lista : tail lista)

Juntar duas listas (operador `++`):

> listab = [ 10, 14, 12]
> doisb = 
>   print(lista ++ listab) >>
>   print( [head lista] ++ tail lista) >>
>   print( [head lista] ++ tail lista == head lista : tail lista)

O operador `!!` dá o elemento numa dada posição (entre 0 e o tamanho da lista menos 1).

> doisc = do
>   print(lista)    
>   print(lista !! 0)    
>   print(lista !! 4)    

Testes
------

Testar se a lista está vazia 

> tres = 
>     print(null lista) >>
>     print(null [])

> quatro = do
>     print(null lista)
>     print(null [])

Testar se um elemento pertence

> cinco = do 
>   print(elem 0 [9, 1, 0])
>   print(elem 'x' ['a', 'b', 'c'])

Outras
------

> seis = do
>   print(length lista)
>   print(concat [[3, 1], [2], [], [5, 10]])
>   print(reverse lista)

Intervalos
---------

Em vez de uma lista literal, pode-se definir uma lista à custa de um intervalo.

> sete = do 
>   print([1 .. 10])    
>   print([5, 10 .. 20])    
>   print([15 .. 1])
>   print([15, 14 ..1])

Não dá para pedir ao Haskell uma lista `[1,2,4,8..128]` ou `[1,3,9,27..243]`.

Repare que ele não deixa fazer `print([15 .. 1])``. É preciso explicitamente dizer qual é o decremento com `print([15, 14 ..1])`.

O haskell faz lazy evaluation. Significa que só calcula o que é preciso, da maneira mais preguiçosa possível.

Repare que pode criar uma lista infinita em Haskell, com o seguinte intervalo: `[0 ..]`.

> oito = do
>   print(take 5 [0 .. ])
>   print(take 5 (drop 5 [0 .. ]))

O Haskell não precisa de calcular a lista toda. Só calcula o que for preciso.

É tão preguiçoso que acontece o seguinte:

> nove = do
>   print(head [5, 10, head []])
>   print([5, 10, head []] !! 0)

Se escreverem apenas `[5, 10, head []]` no prompt do ghci, irão ver que dá erro, pois o Haskell vai calcular todos os elementos.

Mas como o Haskell calcula o que for preciso NÃO FAÇAM o seguinte: `length [0 .. ]`. Se fizerem, usem o Ctrl+C para parar a execução.

STRINGS
=======

    :t ['h', 'e', 'l', 'l', 'o']
    :t "Hello"

    "Bom dia, " ++ "Bárbara!"

    words "Hello,    Haskell    world!"
    unwords ["My", "name", "is"]

    
