notas = [500, 200, 100, 50, 20, 10, 5, 2, 1]
payment value [] = []
payment value (cab:resto) = 
    if (div value cab) /= 0 
            then (cab, div value cab) : [] ++ payment (rem value cab) resto 
    else payment value resto 

pagatelemovel value =  payment value notas 