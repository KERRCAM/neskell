{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Eta reduce" #-}
{-# HLINT ignore "Avoid lambda" #-}
{-# HLINT ignore "Use infix" #-}
import System.IO 


getFileContents :: FilePath -> IO [String]
getFileContents fileName = 
    do 
        contents <- readFile fileName
        let seperated = lines contents
        return seperated


