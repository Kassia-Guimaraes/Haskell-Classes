import Data.Char

sentence = "Anotaram a data da maratona"
sentence2 = "Eva, asse essa ave!"
sentence3 = "Minha mãe é uma peça"

aFilter a = map toLower(reverse(filter isLetter a))
isEqual a = map toLower(filter isLetter a) == aFilter a

capcua a =
    let sentenceLower = map toLower a
        sentenceClean = filter isLetter sentenceLower
    in sentenceClean == reverse sentenceClean