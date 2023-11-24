Funções Recursivas
==================

Funções recursivas serve para entender a respeito do funcionamento das funções, sem chamá-las diretamente

Função fatorial
---------------

    > fatorial 1 = 1
    > fatorial n = n * fatorial(n-1)

* Função Fatorial utlizando if e else

        > fatorialb m = 
        > if m == 1 || m == 0 
        > then 1 
        > else 
        > m * fatorialb(m-1)

Função Length
-------------
Uma função existente para a contagem do tamanho de um array é a função length, abaixo está a demonstração de tal função de forma recursiva

    > count [] = 0
    > count lista = 1 + count(tail lista)
    > count2 (cab:resto) = 1 + count resto

* Função Length utlizando if e else

        > tamanho m = 
        > if m == [] 
        > then 0
        > else 
        > 1 + tamanho(tail m)

Soma Elementos da Lista
-----------------------
Função sum() que serve para soma de elementos, abaixo é apresentada uma função recursiva demonstrando o funcionamento da função.

    > sumLista [] = 0
    > sumLista x = (head x) + sumLista(tail x)
    > sumLista2 (x:xs) = x + sumLista2 xs
    > sumLista3 x = sum x

* Função Soma com if e else
            
        > somaLista x =
        > if x == []
        > then 0
        > else
        > (head x) + somaLista(tail x)

