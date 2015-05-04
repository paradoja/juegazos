import System.Random
import Text.Printf

from, to :: Int
from = 1
to = 100

main :: IO ()
main = do target <- randomRIO (from, to)
          printf "Guess a number between %d and %d\n" from to
          askNumber target
    where askNumber target = do guess <- readLn
                                case compare guess target of
                                  EQ -> putStrLn "Correct! You got it!"
                                  LT -> do putStrLn "higher"
                                           askNumber target
                                  GT -> do putStrLn "lower"
                                           askNumber target
