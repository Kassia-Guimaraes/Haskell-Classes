-- list with ghci 
    lostNumbers = [4, 8, 7, 5, 14, 267]

-- lists together ++
    lista = [1, 2, 3, 15, 56] ++ [17, 15, 34, 134, 67]
    ---- [1, 2, 3, 15, 56, 17, 15, 34, 134, 67]

    hello = "hello" ++ "world"
    ---- 'hello world'

-- position of list !!
    lista = "Steve Buscer" !! 6
    ---- 'B' 

-- head 
    numbers = head [5, 4, 7, 9]
    ---- 5

    bomdia = head "Bom dia"
    ---- 'B'

    bomDia = head "Bom dia" : "om dia"
    ---- "Bom dia"

-- tail
    tail "Bom dia"
    ---- "om dia"

-- head : tail
    head "Bom dia" : tail "Bom dia"
    ---- "Bom dia"

-- last // takes a list and returns just last element
    last [5, 4, 3, 2, 1]
    ---- '1'

-- init // takes a list and returns without last element
    init [5, 4, 3, 2, 1]
    ---- [5, 4, 3, 2]

-- elem 
    elem 4 [1, 2, 3, 4]
    ---- true

    elem 'x' "Duarte"
    ---- false


--anArray = []
aForLoop = [("duarte" !! x) : anArray | x <- [0..5]]