module Main
    where

--this code runs on compile
main = putStrLn "Hello World"

--simple function that squares a variable
square :: Num a => a -> a
square x = x*x

--gives the sign of a given number.
signum x=
  if x > 0
    then 1
  else if x < 0
    then -1
  else 0

--gives you 1 for 0, 5 for 1, 2 for 2, and -1 for anything else.
f x =
  case x of
    0 -> 1
    1 -> 5
    2 -> 2
    _ -> -1

{-
f can also be written as a piecewise like this:

f 0 = 1
f 1 = 5
f 2 = 2
f _ = -1

-}

--finds the roots of a quadratic ax^2 + bx + c. Let det sets the determinant and twice_a sets the value for the denominator.
--These vars are defined locally, and only exist within the scope of the function.
roots a b c =
    let det = sqrt (b*b - 4*a*c)
        twice_a = 2*a
    in  ((-b + det) / twice_a,
         (-b - det) / twice_a)

--computes factorials using recursion
factorial x =
  case x of
    1->1
    _-> x * factorial (x-1)

--computes an integer exponent
power a 1 = a
power a b = a * power a (b-1)

--computes the length of a list
my_length [] = 0;
my_length (x:xs) = 1 + my_length xs

--filters out values from a list
my_filter p [] = []
my_filter p (x:xs) =
  if p x
    then x:my_filter p xs
  else my_filter p xs

--calculates fibonacci sequence
fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x-2)

--multiplication of two numbers
mult x 1 = x
mult x y = x + mult x (y-1)

--replica of the map function
my_map p [] = []
my_map p (x:xs) = (p x):(my_map p xs)

--square lamda function
lamda_square = \x -> x*x
