Resolução prova 2022
====================

Quest 1
-------

- Em Haskell, é indiferente escrever "a" ou 'a' 

Falso, pois quando você colocar "a" está levando em consideração uma lista com apenas um elemento, o elemento a. 
Quando coloca-se 'a' está se referindo apenas a um elemento, do tipo char

Quest 2
-------

- Em Haskell, uma lista  pode não ter elementos de vários tipos

Verdadeiro, uma lista, em haskell, só pode conter um tipo de elemento, seja string "abdbcd", por exemplo.

Quest 3
-------

> desconhecida [] = []
> desconhecida (x:xs) = desconhecida esquerda ++ [x] ++ desconhecida direita
>   where
>       esquerda = [k | k <- xs, k < x]
>       direita = [j | j <- xs, j > x]

A função desconhecida é uma função ue pega numa lista e devolver uma lista ordenada, sem repetir elementos

> desconhecida [1,2,3,7,5,3]
> [1,2,3,5,7]

Quest 4
-------

- Pagamento com o mínimo de notas possíveis

> notas = [500, 200, 100, 50, 20, 10, 5, 2, 1]
> payment value [] = []
> payment value (x:xs) = 
>     if (div value x) /= 0
>         then (x, div value x) : [] ++ payment (rem value x) xs
>     else payment value xs 
> pagatelemovel value =  payment value notas

> pagatelemovel 1342
> [(500,2),(200,1),(100,1),(20,2),(2,1)]

Quest 5
-------

- Encriptação de mensagens

> import Data.Char
> letra2int c = ord c - ord 'a'
> letra3INT c = ord c - ord 'A'

> int2letra n = chr (ord 'a' + n)
> int3LETRA n = chr (ord 'A' + n)

> desloca n c 
>      | isLower c = int2letra(mod(letra2int c + n)26)
>      | isUpper c = int3LETRA(mod(letra3INT c + n)26)
>      | otherwise = c

> codifica n xs = [desloca n x | x <- xs]
> descodifica n xs = codifica (-n) xs


> codifica 3 "A casa Da Alana E Muito BONITA"
> "D fdvd Gd Dodqd H Pxlwr ERQLWD"

> descodifica 3 "D fdvd Gd Dodqd H Pxlwr ERQLWD"
> "A casa Da Alana E Muito BONITA"

Quest 6
-------

- Verificar se um número é múltiplo de 5 ou não

> e_multiplo_5 value
>   | mod value 5 == 0 = True
>   | otherwise = False


> e_multiplo_5 35
> True

Quest 7
-------

- Ordenar a lista dada em ordem crescente

> import Data.List
> list = [8,92,34,66,39,96,28,26,99,6,24,69,50,89,14,30,38]
> increasing x = sort x -- crescente
> decreasing x = reverse(sort x) -- decrescente

> increasing list
> [6,8,14,24,26,28,30,34,38,39,50,66,69,89,92,96,99]