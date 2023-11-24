import Data.Char

main = do 
    askFirstName <- putStrLn "Hello, what's your first name?"
    firstName <- getLine
    askLastName <- putStrLn "Hello, what's your first name?"
    lastName <- getLine

    -- pega os caracters tipo string e deixa tudo em caps lock
    let bigFirstName = map toUpper firstName
        bigLastName = map toUpper lastName
    putStrLn $ "hey " ++ bigFirstName ++ " " ++ bigLastName ++ ", how are you?"
    main

----------------------------------------------------------------------------------

--idade year month day = 2023 - year
--countIdade = do
--    putStrLn ("Você tem " ++ (idade 2004 01 06) ++ " anos")

--[x | x <- ]
-- funções lambida

filter even [1..10] -- pega todos os números pares
filter (\x -> mod x 2 == 0) [1..10] -- números pares de uma função anónima
filter (\x -> mod x 2 /= 0) [1..10] -- números ímpares de uma função anónima

zip [1,2,3,4,5] [6,7,8,9,10] -- junta as funções em tuplas

zipWith (\ a b -> (a*30 +3)/b) [1,2,3,4,5] [6,7,8,9,10]
zipWith (\ a b -> (a + b)) [1,2,3,4,5] [6,7,8,9,10]

nomelongo xs = filter(\x -> length x > 3) xs

map length ["Ana", "Maria", "Manuel", "To"]
map (\y -> length y) ["Ana", "Maria", "Manuel", "To"]