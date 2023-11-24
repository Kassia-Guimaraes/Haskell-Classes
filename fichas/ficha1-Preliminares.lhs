% Literate Programming em Haskell
% Jorge Gustavo Rocha
% 4 de outubro, 2023

Ficha 1 - Ambiente de documentação e programação
================================================

Neste curso vamos aprender a programar em Haskell. Esta é uma linguagem formal,
com uma sintaxe e uma semântica muito bem definida.

Os nossos programas precisam de ser entendidos pelo interpretador ou 
pelo compilador Haskell. 

Antes disso, os programas precisam de ser entendidos por nós mesmos.
Como a linguagem Haskell ainda nos é estranha, vamos começar por ter a 
preocupação de escrever programas que sejam entendidos por nós e pelo computador.

O esforço destas primeiras fichas é, acima de tudo, documentar para nós próprios 
os conceitos mais simples da linguagem Haskell. Sempre que for preciso, usamos os
nossos próprios programas para rever alguma questão da linguagem.

Ferramentas
-----------

- [GHCup](https://www.haskell.org/ghcup/)
- [Visual Studio Code](https://code.visualstudio.com)
    - Haskell
    - Haskelly
- [Pandoc](https://pandoc.org/installing.html), fazer um restart à máquina para atualizar o PATH.
    - Adicionar manualmente o [MikTex](https://miktex.org/download) se o `pandoc` se queixar que falta o `pdflatex`.

Literatura adicional
--------------------

-   [Learn You a Haskell for Great Good, chapter 2](http://learnyouahaskell.com/starting-out)
-   [Real World Haskell](http://book.realworldhaskell.org/),  chapters 1 and 2

Escrever um documento em literate Haskell
-----------------------------------------

Este é o meu primeiro exemplo. Todo este texto está escrito em Markdown e 
agora tenho um pequeno bloco de código Haskell. 
O código Haskell está escrito com `> ` no início da linha.

> someFunc = putStrLn "Bem vindo à Ciência de Dados, Gonçalo"

Para executar o código no GHCi, usa-se a opção `Load GHCi` no Visual Studio Code, 
depois de instalados as extensões.

Para gerar um documento PDF, usa-se o seguinte comando:

    pandoc ficha1.lhs -o ficha1.pdf

Testar o programa Haskell
-------------------------

Depois de fazer `Load GHCi`, podemos testar a função definida, escrevendo:

    someFunc

Comandos do GHCi
----------------

Os seguintes comandos não fazem parte da linguagem Haskell. 
São comandos do interpretador que vamos usar para testar as nossas expressões. 
Estes comandos nunca vão aparecer num programa Haskell.

| Comando | Ação |
|:--------|:-----|
| :q      | Sair do interpretador |
| :t      | Dá o tipo de uma expressão |
| :t +d   | Dá o tipo de uma expressão, mostrando os defaults |
| :l      | Carregar um módulo (load) |
| :reload | Recarregar o módulo |
| :i      | Informação sobre um tipo ou uma função |
| :?      | Mostra os comandos disponíveis |

Introdução ao Haskell
=====================

Depois do ambiente preparado, é tempo de estudar a linguagem. Nesta primeira ficha,
vamos abordar os seguintes tópicos:

- Aritmética
- Comparação
- Lógica
- Invocação de funções
- Tipos

Aritmética
----------

Os operadores `*` e `\` têm precedência sobre o `+` e o `-`.

Os números negativos têm que se escrever com `()`.

Para testar:

> ari =    
>   print(7 + 8) >>
>   print(50 / 7) >>
>   print(3 + 2 * 6) >>
>   print((3 + 2) * 6) >>
>   print(3 + (-2))

Resultados:

    ghci> ari
    15
    7.142857142857143
    15
    30
    1

Comparação
----------

Há duas maneiras de testar: perguntando se são iguais (com o sinal `==`) 
ou perguntando se são diferentes (com o sinal `/=`).

Para testar:

    2 + 2 == 5
    0.1 + 0.2 /= 0.15 + 0.15

Resultados:

    ghci> 2 + 2 == 5
    False
    ghci> 0.1 + 0.2 /= 0.15 + 0.15
    True

*Discussão:* 

A expressão `0.1 + 0.2` devia ser exatamente igual a `0.15 + 0.15`. Contudo, tal não acontece. Porquê?

    ghci> 0.1 + 0.2
    0.30000000000000004
    ghci> 0.15 + 0.15
    0.3
    ghci> 0.1 + 0.2 == 0.15 + 0.15
    False

Lógica
------

Para testar:

    1 < 3 && 2 >= 4

Resultados:

    ghci> 1 < 3 && 2 >= 4
    False

Invocação de funções
--------------------

A sintaxe usada para invocar funções é muito simples.
Usa-se o nome da função seguido dos argumentos: `functionName arg1 arg2 ... argN`

Para testar:

    not True
    max (min 3 5) (min (-5) 10)
    div 7 3
    mod 7 3

Tipos
-----

Todas as expressões em Haskell têm um tipo. 
O Haskell garante-nos que não são calculadas expressões que misturem tipos que não misturáveis.

Por exemplo, não faz sentido adicionar:

3 + "Ana"

porque `3` é um inteiro e `"Ana"` é uma lista de carateres.

No GHCi, teste as seguintes expressões. 

    :t True
    :t False
    :t 'F'

Depois faça copy & paste da sessão para aqui, para se verem os resultados do interpretador.

    ghci> :t True
    True :: Bool
    ghci> :t False
    False :: Bool
    ghci> :t 'F'
    'F' :: Char

Existem cinco tipos numéricos no "prelúdio" do Haskell (Prelude, a parte da biblioteca padrão que é carregada automaticamente):

- Int é um inteiro com ao menos 30 bits de precisão.
- Integer é um inteiro com precisão ilimitada.
- Float é um número de ponto flutuante de precisão simples.
- Double é um número de ponto flutuante de precisão dupla.
- Rational é um tipo fracionário, sem erro de arredondamento.

Todos os cinco são instâncias da type class `Num`. Os primeiros dois são instâncias de `Integral`, e os últimos três são instâncias de `Fractional`.     
