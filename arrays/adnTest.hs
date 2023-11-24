import Data.Char
import Data.List

sida :: String
sida = unwords [
    "catccagtac atgcagggcc tattgcacca ggccaaatga gagaaccaag gggaagtgac",
    "atagcaggaa ctacaagtac ccttcaggaa caagtagcat ggatgacagg taacccacct",
    "gttccagtgg gagaaatcta taaaagatgg ataattctgg gattaaataa aatagtaaga",
    "atgtatagcc ctgtcagcat tttggacata aaacaagggc caaaggaacc c"
  ]

bases x = length(filter (\xs -> (xs /=' ')) x)

contabases x = sort (map (\x -> (head(x), length x)) (group (sort (filter (not . isSpace) x))))

guanina x = length(filter (== 'g') x)