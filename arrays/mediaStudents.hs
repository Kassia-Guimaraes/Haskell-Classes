import Data.List
import Data.Char

alunos = [("manuel", 10 , 14, 12, 10), ("maria", 15, 12, 16, 18), ("diogo", 10, 9, 12, 13), ("zaqueu", 10, 9, 10, 10)]

txt x = map (\(a,_,_,_,_) -> a) x
name = txt alunos

media x = (map (\(_,b, c, d, e) -> ((b+c+d+e)/4)) x)
notas = media alunos

table (x:xs) (y:ys) = [(x, y)] ++ table xs ys
table [] [] = []

media_das_notas = table name notas