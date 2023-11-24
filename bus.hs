import Data.Char

main = do
    putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn "What time is your first bus?"
    hour1 <- getLine
    putStrLn "What time is your second bus?"
    hour2 <- getLine
    putStrLn "What time is your third bus?"
    hour3 <- getLine

    putStrLn $  ""