Definição de Listas
===================

As listas têm que ter sempre o mesmo tipo de elementos

> months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
> days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Satuday"]

Manipulação de Listas
=====================

> listNumbers = [1, 2, 3, 4, 5]


Lista sem o último elemento
--------------------------------
> initElementNumber = init listNumbers

Lista sem o primeiro elemento
---------------------------------
> tailElementNumber = tail listNumbers

Apenas o primeiro elemento da lista
------------------------------------
> headElementNumber = head listNumbers

Último elemento de uma lista
-----------------------------
> lastElementNumber = last listNumbers

Tamanho de uma lista
-----------------------
> countElements = length listNumbers

Verificar de uma lista é vazia ou não
----------------------------------------
> nullElementNumber = null listNumbers

Lista ao contrário
---------------------
> reverseElementNumber = reverse listNumbers

Pegando determinada quantidade de elementos
----------------------------------------------
> takeXElementNumber = take 3 listNumbers

Pegando elemento de uma posição específica
-----------------------------------------------
> positionXElementNumber = listNumbers !! 3

Retirando uma quantidade específica de elementos
---------------------------------------------------
> dropXElementNumber = drop 2 listNumbers

Número de menor valor de uma lista
-------------------------------------------------
> minimumElementNumber = minimum listNumbers

Número de maior valor de uma lista 
----------------------------------------
> maximumElementNumber = maximum listNumbers

Comparação de Listas
====================

> listChar = ['k', 'a', 's', 's', 'i', 'a']
> listChar2 = "kassia"

> equa = listChar == listChar2

Funções
=======

> first a = head a
> firstL a = [head a]
> first3Letters a = take 3 a
> someLoop a = [head((a !! x)) : [] | x <- [0..((length a)-1)]]
> letters a = map first a
> lettersL a = map firstL a
> months3 = map (take 3) months
> newMonths = map first3Letters months

Palíndromos
===========

> sentence = "Anotaram a data da maratona"
> sentenceReverse = reverse sentence
> let sentenceTest = map toLower (filter (/= ' ')) 
>   in sentence == reverse sentence

newSentence = filter (/= ' ') sentence
newSentence = filter(/= ' ') sentenceReverse
