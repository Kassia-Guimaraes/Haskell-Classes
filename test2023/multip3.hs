-- Escreva uma função em Haskell chamada “e_multiplo_3”, que recebe um número e retorna verdadeiro ou falso, consoante o número é ou não múltiplo de 3.
--Depois de testar a função, copiar para aqui apenas a definição da função.

e_multiplo_3 value
    | mod value 3 == 0 = True
    | otherwise = False