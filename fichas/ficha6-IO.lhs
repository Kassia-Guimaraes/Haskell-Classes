% Literate Programming em Haskell
% Jorge Gustavo Rocha
% 25 outubro, 2022

Ficha 6 - Ações IO
==========================

> import Data.List
> import Data.Char
> import Data.Time.Clock
> import Data.Time.Calendar
> import Data.Time.LocalTime

As ações de input e output são necessárias quando se querem ler dados (inputs) ou mostrar dados (outputs) aos utilizadores.

A função seguinte tem duas ações de IO: uma `getLine` de input e uma `putStrLn` de output. 

Quando as ações de IO são desencadeadas, pode-se indicar uma variável onde vai ficar o resultado da ação.
Obviamente que não nos interessa o resultados das ações de output, mas interessa-nos o resultado das ações de input.

Para fazer essa ligação, usa-se o operador `<-`. 

> nome = do  
>     putStrLn "Hello, what's your name?"  
>     name <- getLine  
>     putStrLn ("Hey " ++ name ++ ", you rock!")  

Abordagem ao IO
---------------

Como boa prática, tenta-se separar as funções onde se fazem as operações de input e output das funções que suportam a lógica da aplicação.

Tentando ilustrar um pouco este conceito, vamos escrever um programa para calcular a idade de uma pessoa.

O desenho passa por:
- uma função que tem todo o input e output
- uma função que extrai o ano, mês e dia do input (uma é uma string)
- uma função que calcula a idade

> amd x = let
>     a = read (take 4 x)::Integer
>     m = read (take 2 (drop 5 x))::Integer
>     d = read (drop 8 x)::Integer
>   in (a, m, d)

> calculaidade ano mes dia = 2023 - ano

> qualIdade = do
>     putStrLn "Data de nascimento (aaaa-mm-dia)?"  
>     dn <- getLine
>     let
>       (ano, mes, dia) = amd dn
>       idade = calculaidade ano mes dia 
>     putStrLn ("Você tem " ++ show idade)

Neste exemplo, a divisão do programa em funções está nem feita. COntudo, a função que calcula a idade é limitada, por duas razões:
- não atende ao facto de a pessoa já fez anos ou não este ano
- só funciona para este ano (2023)

Pode-se aceder à data atual usando a função `getCurrentTime`. 
Esta função é do tipo `IO UTCTime`. Sendo uma ação, usa-se o operador `<-` para que indicar a variável que fica com o valor 
após a execução da ação, como em todas as outras ações de IO.

Teste a seguinte função `atual` para confirma que apanha bem a data atual.

> atual = do
>     now <- getCurrentTime
>     timezone <- getCurrentTimeZone
>     let zoneNow = utcToLocalTime timezone now
>     let (year, month, day) = toGregorian (localDay zoneNow)
>     putStrLn ("Ano: " ++ show year)
>     putStrLn ("Mês: " ++ show month)
>     putStrLn ("Dia: " ++ show day)

Rescreva a função `calculaidade` de modo a que a idade seja bem calculada em função do ano, mês e dia.