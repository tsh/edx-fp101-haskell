import Data.List
import Data.Char
import Unsafe.Coerce

-- Select all possible total and terminating implementations of a conversion function natToInteger :: Nat -> Integer that converts any non-bottom, non-partial, finite natural number (note: 0 is a natural number according to this definition), into the corresponding Integer value. 
data Nat = Zero
	| Succ Nat
	deriving Show

z = Zero
s = Succ z
	
natToInteger1 Zero = 0
natToInteger1 (Succ n) = natToInteger1 n + 1

natToInteger2 (Succ n) = natToInteger2 n + 1
natToInteger2 Zero = 0

natToInteger3 n = natToInteger3 n

natToInteger4 (Succ n) = 1 + natToInteger4 n
natToInteger4 Zero = 0

natToInteger5 Zero = 1
natToInteger5 (Succ n) = (1 + natToInteger5 n) - 1

natToInteger6 = head . m
    where m Zero = [0]
          m (Succ n) = [sum [x | x <- (1: m n)]]
		  
natToInteger7 :: Nat -> Integer
natToInteger7 = \ n -> genericLength [c | c <- show n, c == 'S']

--natToInteger8 :: Nat -> Integer
--natToInteger8 = \ n -> length [c | c <- show n, c == 'S']

