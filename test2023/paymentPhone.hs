-- Imagine que vai comprar um telemóvel e que leva um saco cheio de dinheiro com notas e moedas de 500, 200, 100, 50, 20, 10, 5, 2, 1.
-- Escreva uma função "pagatelemovel" que recebe preco do telemóvel e deovlve uma lista com o mínimo de notas e ou moedas que é preciso entregar
-- Para tal, tente usar o máximo de notas de 500, 200, 100...

notas = [500, 200, 100, 50, 20, 10, 5, 2, 1]
payment value [] = []
payment value (x:xs) = 
    if (div value x) /= 0  -- se a parte inteira da divisão for diferente de 0
        then (x, div value x) : [] ++ payment (rem value x) xs -- pega o valor do head e a parte inteira da divisão adicionando a uma lista vazia, adicionando a recursivdade da função para o tail da lista
    else payment value xs 

pagatelemovel value =  payment value notas -- pega  afunção recursiva para calcular as notas necessárias, tendo como imput necessário apenas o valor do telemóvel