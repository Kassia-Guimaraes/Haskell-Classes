desconhecida [] = []
desconhecida (x:xs) = desconhecida esquerda ++ [x] ++ desconhecida direita
    where
        esquerda = [k | k <- xs, k < x]
        direita = [j | j <- xs, j > x]