% Literate Programming em Haskell
% Jorge Gustavo Rocha
% 25 outubro, 2022

Ficha 5 - Funções anónimas
==========================

Em Haskell, os argumentos de uma função podem ser escalares (números, letras, etc), estruturas de dados (listas) ou funções.

Relembremos algumas funções que recebem uma **função** e uma *lista* como parâmetros:

    map not [True, False, True, True]
    map (* 2) [1 .. 5] 
    filter even [3, 1, 2, 5, 4, 0, 10, 7]
    filter (<3) [10, 9 .. 0]
    any (> 10) [7, 5, 9, 3]
    all (> 10) [7, 5, 9, 3]


Sintaxe
----------------------

Pode-se definir uma função anónima (sem nome) usando a seguinte sintaxe:

    \var1 var2 ... varN -> expression
    como em
    \var1 var2 ... varN -> let {res = ... var1 var2 ... varN...} in res

Exemplo:

    \x -> x > 0

Descrição:

A função anterior tem um argumento x e retorna um valor booleano (True ou False), consoante
esse valor seja ou não maior que zero.

Exemplo de utilização:

    map (\x -> x > 0) [1, 5, (-1), (-2), 3]
    [True,True,False,False,True]

    filter (\x -> x > 0) [1, 5, (-1), (-2), 3]
    [1,5,3]

Equivalente

> maiorquezero x = x > 0


Exercícios
----------

Retirar os espaços de uma string:

    filter (\c -> c /= ' ') "O rato roeu a rolha"

Também poderia ser escrito como:

    filter (/=' ') "O rato roeu a rolha"

    import Data.Char
    filter (not . isSpace) "O rato roeu a rolha"


Calcular o quadrado
-------------------

    map (\x -> x^2) [1, 2, 3, 4, 5]

Maiúsculas
----------
Use a função map para passar uma string para maiúsculas.

    map toUpper "Viva o nosso querido professor"

Lista de nomes
--------------

    map length ["Francisco", "Guilherme", "Zacarias", "Alexandre"]

    zip ["Francisco", "Guilherme", "Zacarias", "Alexandre"] (map length ["Francisco", "Guilherme", "Zacarias", "Alexandre"])

Calcular o preço com desconto
-----------------------------

Considere a seguinte lista de equipamentos e respetivos preços:

    [ ("phones",35), ("cabo",8), ("pen",20), ("microfone",70), ("colunas",100), ("carregador",20) ]

    map fst [ ("phones",35), ("cabo",8), ("pen",20), ("microfone",70), ("colunas",100), ("carregador",20) ]
    map snd [ ("phones",35), ("cabo",8), ("pen",20), ("microfone",70), ("colunas",100), ("carregador",20) ]
    map (\(x,y) -> y) [ ("phones",35), ("cabo",8), ("pen",20), ("microfone",70), ("colunas",100), ("carregador",20) ] 

E os respetivos descontos, em percentagem:

    [10, 15, 5, 0, 0, 20]

Calcule o preço de cada equipamento, aplicando o desconto:

> precos e d = 
>   let precos = map (\(x,y) -> y) e 
>       in zip (map fst e) (map (\(preco,desconto) -> preco*(100-desconto)/100) (zip precos d))

    precos [ ("phones",35), ("cabo",8), ("pen",20), ("microfone",70), ("colunas",100), ("carregador",20) ] [10, 15, 5, 0, 0, 20]
    [("phones",31.5),("cabo",6.8),("pen",19.0),("microfone",70.0),("colunas",100.0),("carregador",16.0)]

    precos [ ("ferrari", 200000), ("tesla", 95000)] [20, 5]
    [("ferrari",160000.0),("tesla",90250.0)]

Calcular a nota final
---------------------

Sabendo que os alunos fizeram três testes. 

Escreva uma função que calcule a nota final de cada aluno.

A função recebe a lista com os alunos e respetivas notas e os pesos de cada teste na nota final.

A função devolve uma lista com o aluno e a sua nota final.

Exemplo da lista dos alunos:

    alunos = [ ("manuel", 10 , 12, 10), ("maria", 15, 16, 18), ("zaqueu", 10, 10, 10) ]

Exemplo dos pesos:

    pesos = [ 0.2, 0.3, 0.5 ]

Resultado esperado:

    [("manuel",10.6),("maria",16.8),("zaqueu",10.0)]

> alunos :: [([Char], Double, Double, Double)]
> alunos = [ ("manuel", 10 , 12, 10), ("maria", 15, 16, 18), ("zaqueu", 10, 10, 10) ]

> pesos = [ 0.2, 0.3, 0.5 ]

> notas lista pesos = 
>   let [p1, p2, p3] = pesos
>       medias = map (\(nome, n1, n2, n3) -> n1*p1 + n2*p2 + n3*p3) lista
>       nomes = map (\(nome, n1, n2, n3) -> nome) lista
>   in zip nomes medias


