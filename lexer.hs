import System.IO 


getFileContents fileName = 
    do 
        contents <- readFile fileName
        let seperated = lines contents
        return seperated
       
lexFile contents = map (\x -> lexLine x) contents

lexLine line = map (\x -> tokenType x) line -- goes char by char 

tokenType token = 
    | token == '=' = "TOKEN_EQUALS"
    | token == '!' = "TOKEN_EXMARK"
    | token == '(' = "TOKEN_LPAREN"
    | token == ')' = "TOKEN_RPAREN"
    | token == '[' = "TOKEN_LSQUARE"
    | token == ']' = "TOKEN_RSQUARE"
    | token == '{' = "TOKEN_LCURL"
    | token == '}' = "TOKEN_RCURL"
    | token == '+' = "TOKEN_PLUS"
    | token == '-' = "TOKEN_MINUS"
    | token == '*' = "TOKEN_STAR"
    | token == '%' = "TOKEN_PERCENT"
    | token == ':' = "TOKEN_COLON"
    | token == ';' = "TOKEN_SEMI"
    | token == '<' = "TOKEN_LT"
    | token == '>' = "TOKEN_GT"
    | token == '"' = "TOKEN_DOUBLEQ"
    | token == ''' = "TOKEN_SINGLE"
    
