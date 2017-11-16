main = do  
    putStrLn "Please enter your weight in pounds(not kg)"  
    weight <- getLine
    let weightX = read weight :: Float
    putStrLn "Please enter your height in inches"  
    height <- getLine
    let heightX = read height :: Float
    putStrLn $ bmiTell $ calculateBMI weightX heightX

bmiTell :: (RealFloat a) => a -> String  
bmiTell bmi  
    | bmi <= 18.5 = "You're underweight"  
    | bmi <= 25.0 = "You're normal"  
    | bmi <= 30.0 = "You're overweight"  
    | otherwise   = "You're obese"  

calculateBMI :: Float -> Float -> Float
calculateBMI weight height = (weight * 703)/ height^2