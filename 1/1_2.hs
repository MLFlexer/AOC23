import Data.Char (isDigit)
import Debug.Trace (trace)

main :: IO ()
main = do
  contents <- readFile "1.in"
  let contentLines = lines contents
  let replacedLines = map replaceWordsWithDigits contentLines
  print . sum $ map getFirstAndLastDigit replacedLines

replaceWordsWithDigits :: String -> String
replaceWordsWithDigits s@('o' : 'n' : 'e' : _) =
  '1' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('t' : 'w' : 'o' : _) =
  '2' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('t' : 'h' : 'r' : 'e' : 'e' : _) =
  '3' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('f' : 'o' : 'u' : 'r' : _) =
  '4' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('f' : 'i' : 'v' : 'e' : _) =
  '5' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('s' : 'i' : 'x' : _) =
  '6' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('s' : 'e' : 'v' : 'e' : 'n' : _) =
  '7' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('e' : 'i' : 'g' : 'h' : 't' : _) =
  '8' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits s@('n' : 'i' : 'n' : 'e' : _) =
  '9' : replaceWordsWithDigits (tail s)
replaceWordsWithDigits [] = []
replaceWordsWithDigits (x : xs) =
  if isDigit x
    then x : replaceWordsWithDigits xs
    else replaceWordsWithDigits xs

getFirstAndLastDigit :: Read int => String -> int
getFirstAndLastDigit s = read [head s, last s]
