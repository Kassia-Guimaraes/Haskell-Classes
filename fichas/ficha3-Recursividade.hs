import Data.List

quadrado jose = jose * jose

somaquadrados pri seg = quadrado pri + quadrado seg

fatorial 0 = 1
fatorial 1 = 1
fatorial n = n * fatorial (n - 1)

fatorialb m = if m == 1 || m == 0 then 1 else m * fatorialb (m-1) 

conta :: Num a1 => [a2] -> a1
conta [] = 0
conta (cab:resto) = 1 + conta resto
-- conta lista = 1 + conta (tail lista)

-- somalista [] = 0
-- somalista x = (head x) + somalista (tail x)

-- somalista [] = 0
-- somalista (cab:resto) = cab + somalista resto

somalista m = if null m then 0 else (head m) + somalista (tail m) 

-- prodlista [] = 1
-- prodlista (h:resto) = h * prodlista resto
-- prodlista x = (head x) * prodlista (tail x)
-- prodlista m = if null m then 1 else (head m) * prodlista (tail m) 

prodlista [x] = x
prodlista [x, y] = x * y
prodlista [x, y, z] = x * y * z

-- Decode RLE
-- [ [1,3], [7, 1], [8, 2], [12, 3] ] → [ 1, 1, 1, 7, 8, 8, 12, 12, 12 ]
-- [ [1, 3] ]

-- repete 1 3 = [1, 1, 1]
repete elemento 0 = []
repete elemento vezes = [ elemento ] ++ repete elemento (vezes - 1)

decode [] = []
decode (cab:resto) = repete (head cab) (last cab) ++ decode resto

-- Encode RLE
-- paleio, paleio
-- [ 1, 1, 1, 7, 8, 8, 12, 12, 12 ] → [ [1,3], [7, 1], [8, 2], [12, 3] ]
-- 
-- group [ 1, 1, 1, 7, 8, 8, 12, 12, 12 ]
-- [[1,1,1],[7],[8,8],[12,12,12]]
-- [ [1,3], [7, 1], [8, 2], [12, 3]]
-- comprime [1, 1, 1] = [1, 3]
comprime lista = [ (head lista), (length lista)]
encode lista = map comprime (group lista)

insere x [] = [x]
insere x (cab:resto) = if x < cab then x : cab : resto else cab : insere x resto

inverte [] = []
inverte lista = inverte (tail lista) ++ [ head lista ]

emparelha _ [] = []  
emparelha [] _ = []  
emparelha (x:xs) (y:ys) = (x,y) : emparelha xs ys
