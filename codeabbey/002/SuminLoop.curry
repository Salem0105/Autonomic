-- Archivo: Suma_Cadena.curry
--Radioactive - Imagine Dragons

import StdEnv

sumarLista :: [Int] -> Int
sumarLista []     = 0
sumarLista (x:xs) = x + sumarLista xs

main :: IO ()
main = do
  putStr "Ingrese una cadena de números separados por espacios: "
  inputString <- getLine
  let numeros = map (\s -> read s :: Int) (words inputString)
      suma = sumarLista numeros
  putStrLn $ "La suma de los números es: " ++ show suma
