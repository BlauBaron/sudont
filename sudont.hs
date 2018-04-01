
import System.Environment

printMessage :: IO ()
printMessage = do
    putStrLn "With No Power Come No Responsibility" 
    putStrLn "Sorry, but this programme has no super-user privileges. Please use sudo instead"

printHelp :: IO ()
printHelp = do
    putStrLn "This Program is meant as an April's Fool Joke"
    putStrLn "Written by Mohamed E. Najd (github/twitter @bjornefitte)"

printNoArgs :: IO()
printNoArgs = do
    putStrLn "You haven't provided any arguments"

parse_args :: [String]-> IO ()
parse_args [] = printNoArgs
parse_args ["-h"] = printHelp
parse_args ["--help"] = printHelp
parse_args list = printMessage

main :: IO()
main = do
    args <- getArgs
    parse_args args
