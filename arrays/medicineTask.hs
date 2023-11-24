import Data.List
import Data.Char

separa list = filter ( /= '-' ) list 

validade d m a d1 m1 a1 = ((a1*365+m1*30+d1) - (a*365+m*30+d))

generoValidade genero valida 
    | genero == "f" = if valida >= 120 then "Agendamento válido" else "Agendamento inválido" 
    | otherwise = if valida >= 90 then "Agendamento válido" else "Agendamento inválido" 

ledata str = let 
        dia = read (take 2 str) :: Integer 
        mes = read (take 2 (drop 2 (separa str))) :: Integer 
        ano = read (drop 4 (separa str)) :: Integer 
    in (dia, mes, ano)

validaAgendamento = do 
    putStrLn "Género (m/f)?" 
    genero <- getLine 
    putStrLn "Data da última doação (dd-mm-aaaa)?" 
    ultimaDoacao <- getLine 
    putStrLn "Data da próxima doação (dd-mm-aaaa)?" 
    proximaDoacao <- getLine 
    let 
        (d, m, a) = ledata ultimaDoacao
        (d1, m1, a1) = ledata proximaDoacao
        valida = validade d m a d1 m1 a1
    putStrLn (generoValidade genero valida) 