{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
{-# HLINT ignore "Avoid lambda" #-}
{-# HLINT ignore "Use infix" #-}
import System.IO 


getFileContents fileName = 
    do 
        contents <- readFile fileName
        let seperated = lines contents
        return seperated



lexFile contents = map (\x -> removeWhiteSpace x) contents

removeWhiteSpace line = lexLine(foldr (\x acc -> if x == ' ' then acc else x) "" line)

lexLine line = getTokens line -- goes char by char 

{-
tokenType line 
    | head line == '=' = "TOKEN_EQUALS" ++ tokenType tail line
    | head line == '!' = "TOKEN_EXMARK"
    | head line == '(' = "TOKEN_LPAREN"
    | head line == ')' = "TOKEN_RPAREN"
    | head line == '[' = "TOKEN_LSQUARE"
    | head line == ']' = "TOKEN_RSQUARE"
    | head line == '{' = "TOKEN_LCURL"
    | head line == '}' = "TOKEN_RCURL"
    | head line == '+' = "TOKEN_PLUS"
    | head line == '-' = "TOKEN_MINUS"
    | head line == '*' = "TOKEN_STAR"
    | head line == '%' = "TOKEN_PERCENT"
    | head line == ':' = "TOKEN_COLON"
    | head line == ';' = "TOKEN_SEMI"
    | head line == '<' = "TOKEN_LT"
    | head line == '>' = "TOKEN_GT"
    | otherwise = "TOKEN_UNKNOWN"
-}

getTokens (x:xs) 
    | elem x ['a','b'..'z'] = getWord x:xs 

getWord [] = []
getWord (x:xs) 
    | elem x ['a','b'..'z'] = x : getWord xs
    | otherwise = getWord []

--checkKeyword string