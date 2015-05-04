import Control.Monad
import System.Exit
import System.Random
import Text.Printf

from, to :: Int
from = 1
to = 100

main :: IO ()
main = do target <- randomRIO (from, to)
          printf "Guess a number between %d and %d\n" from to
          forever $ do
            guess <- readLn
            case compare guess target of
              EQ -> do putStrLn "Correct! You got it!"
                       exitWith ExitSuccess
              LT -> putStrLn "higher"
              GT -> putStrLn "lower"
