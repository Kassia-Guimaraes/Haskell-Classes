-- Departure times
hour1 = "4 00"
hour2 = "7 30"
hour3 = "8 30"

-- Duration of proceedings
dur1 = "3 20"
dur2 = "0 42"
dur3 = "0 15"

-- Class Time
hourClass = "9 00"

-- Separation words in order
tempHour1 = words hour1

-- Reading of words
durHour1 = read (head tempHour1) :: Integer
durMin1 = read (head(tail tempHour1)) :: Integer

-- Transformation hours to minutes
totalHour1 = (durHour1*60)+durMin1

-- Hour2
tempHour2 = words hour2
durHour2 = read (head tempHour2) :: Integer
durMin2 = read (head(tail tempHour2)) :: Integer
totalHour2 = (durHour2*60)+durMin2

-- Hour3
tempHour3 = words hour3
durHour3 = read (head tempHour3) :: Integer
durMin3 = read (head(tail tempHour3)) :: Integer
totalHour3 = (durHour3*60)+durMin3 

-- Dur1
tempDur1 = words dur1
durDur1 = read (head tempDur1) :: Integer
durMinDur1 = read (head(tail tempDur1)) :: Integer
totalDur1 = (durDur1*60)+durMinDur1

-- Dur2
tempDur2 = words dur2
durDur2 = read (head tempDur2) :: Integer
durMinDur2 = read (head(tail tempDur2)) :: Integer
totalDur2 = (durDur2*60)+durMinDur2

-- Dur3
tempDur3 = words dur3
durDur3 = read (head tempDur3) :: Integer
durMinDur3 = read (head(tail tempDur3)) :: Integer
totalDur3 = (durDur3*60)+durMinDur3

-- hourClass
tempHourClass = words hourClass
durHourClass = read (head tempHourClass) :: Integer
durMinClass = read (head(tail tempHourClass)) :: Integer
totalHourClass = (durHourClass*60)+durMinClass

-- Calculate isPossible and isViable
isPossible = (totalHour1 + totalDur1) <= totalHour2 && (totalHour2 + totalDur2) <= totalHour3
isViable = isPossible && (totalHour3 + totalDur3) <= totalHourClass

-- What time arrive in class 
arrivalTimeAdd = (totalHour3 + totalDur3)
arrivalHour = show (arrivalTimeAdd `quot` 60)
arrivalMin = show (arrivalTimeAdd `rem` 60)
arrivalTime = "You ll arrive at " ++ arrivalHour ++ ":" ++ arrivalMin

-- if and else
finishTrip  | isPossible && isViable = "is possible and viable to arrive at class time. You ll arrive at "  ++ arrivalHour ++ ":" ++ arrivalMin ++ ". The class starts at " ++ hourClass ++ " ."
            | otherwise = "is not possible and viable to arrive at class time."