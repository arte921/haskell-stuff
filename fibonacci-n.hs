fibonacci hoeveelheid huidige
    | length huidige == hoeveelheid = huidige
    | otherwise = fibonacci hoeveelheid $ huidige ++ [sum $ drop ((length huidige) - 2) huidige]

fib hoeveelheid = fibonacci hoeveelheid [0, 1]

main = putStrLn $ unlines $ map show $ fib 10