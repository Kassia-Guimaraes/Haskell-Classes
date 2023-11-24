import Data.List

main = do 
    line <- getLine
    if null line
        then return()
        else do 
            let abacaxi = reverseWords line
            putStrLn $ (abacaxi)

reverseWords :: String -> String
reverseWords = unwords . map reverse . words 

quadrado x = (x * x)
somaQuadrado a b = quadrado a + quadrado b

-- Função para Calcular Fatorial ---------------------------
fatorial 1 = 1
fatorial n = n * fatorial(n-1)

fatorialb m = 
    if m == 1 || m == 0
        then 1
    else 
        m * fatorialb(m-1)

-- Função length ---------------------------------------
count [] = 0
count lista = 1 + count(tail lista)
count2 (cab:resto) = 1 + count resto

tamanho m = 
    if m == [] 
        then 0
    else 
        1 + tamanho(tail m)

---- Soma Elementos da Lista -------------------------------
sumLista [] = 0
sumLista x = (head x) + sumLista(tail x)
sumLista2 (x:xs) = x + sumLista2 xs
sumLista3 x = sum x

somaLista x =
    if x == []
        then 0
    else
        (head x) + somaLista(tail x)

---- Produto dos Elementos da Lista --------------------------
prodLista [] = 1
prodLista coisa = (head coisa) * prodLista(tail coisa)
prodLista2 [] = 1
prodLista2 (h:resto) = h * prodLista2 resto

prodCoisa x =
    if x == []
        then 1
    else 
        (head x) * prodCoisa(tail x) 

---------------------------------------------------------------
--decode pegar lista com os pares [elemento, nº vezes que aparece o elemento] e retoma uma nova lista com a sequência
repete elemento 0 = []
repete elemento vezes = [elemento] ++ repete elemento(vezes-1)

rpt x n =
    if n == 0 
        then []
    else 
        [x] ++ rpt x(n-1)

decode [] = []
decode (cab:resto) = rpt (head cab) (last cab) ++ decode resto

-- decode com tuplas
repet (x, 0) = []
repet (x, y) = [(x)] ++ repet (x, (y-1))

decodeRLE [] = []
decodeRLE (x:xs) = repet x ++ decodeRLE xs

-------------------------------------------------------------
-- encode pega uma lista e retoma uma nova lista com os pares [elemento, nº vezes que aparece o elemento]
comp [] = []
comp list = [(head list), (length list)]
encode list = map comp (group list)

-- encode tuplas
comprime x = (head(x), length(x))
encodeRLE x = map comprime (group x)

--- Emparelhamento dos elementos de 2 listas ------------------
emparelha [] [] = []
emparelha _ [] = []
emparelha [] _ = []
emparelha (x:xs) (y:ys) = (x,y) : emparelha xs ys

--- Função Reverse ------------------------------------------
reverte [] = []
reverte (x:xs) = reverte xs ++ [x] 

--- Adicionar Elemento a Lista e Ordenar ele ------------------
insere x [] = [x]
insere x (y:ys) = 
    if x < y 
        then x:y:ys
    else 
        y : insere x ys

---------------------------------------------------------
