-- Um sistema de encriptar mensagens, muito simples, consite em trocar cada letra com a terceira letra à frente da mesma
import Data.Char

letra2int c = ord c - ord 'a'
letra3INT c = ord c - ord 'A'

int2letra n = chr (ord 'a' + n)
int3LETRA n = chr (ord 'A' + n)

desloca n c | isLower c = int2letra(mod(letra2int c + n)26)
            | isUpper c = int3LETRA(mod(letra3INT c + n)26)
            | otherwise = c

codifica n xs = [desloca n x | x <- xs]
descodifica n xs = codifica (-n) xs