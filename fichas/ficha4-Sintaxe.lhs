% Literate Programming em Haskell
% Jorge Gustavo Rocha
% 25 outubro, 2022

Ficha 4 - Sintaxe Haskell
=========================

Condições if then else
----------------------

> import Data.Char

> primeiroOuZero :: [Int] -> Int
> primeiroOuZero list =
>     if null list
>     then 0
>     else head list

Sintaxe numa linha:
    primeiroOuZero list = if null list then 0 else head list

Função listaGrande devolve True se a lista tiver mais do que 10 elementos

> listaGrande lista = 
>     if length lista > 10
>     then True
>     else False

> listaGrande2 lista = length lista > 10

Guardas
-------

> sign :: Int -> String
> sign n
>     | n == 0    = "Zero"
>     | n < 0     = "Negative"
>     | otherwise = "Positive"

> semcedilha :: Char -> Char
> semcedilha c
>     | c == 'ç'    = 'c'
>     | c == 'Ç'     = 'c'
>     | otherwise = c   

> limpaacentos :: Char -> Char
> limpaacentos c
>     | c == 'ç'    = 'c'
>     | c == 'ã'     = 'a'
>     | c == 'õ'     = 'o'
>     | c == 'é'     = 'e'
>     | otherwise = c  

Sintaxe let in
--------------

> primeiroseultimostres :: [Int] -> Bool
> primeiroseultimostres list =
>     let firstThree = take 3 list
>         lastThree  = reverse (take 3 (reverse list))
>     in firstThree == lastThree

Sintaxe where
-------------

> appendLastTwos :: [Int] -> [Int] -> [Int]
> appendLastTwos list1 list2 = lastTwo list1 ++ lastTwo list2
>   where
>     lastTwo :: [Int] -> [Int]
>     lastTwo l = reverse (take 2 (reverse l))

