import strutils, sequtils, sugar

const
  data = staticRead("../data/day4.txt").strip().splitlines(false)

proc first*(): int =
  var
    firstRange, secondRange: string

    firstRangeStart, firstRangeEnd, secondRangeStart, secondRangeEnd: int

  for line in data:
    (firstRange, secondRange) = line.split(",", 2)
    
    (firstRangeStart, firstRangeEnd) = firstRange.split("-", 2).map(val => parseInt(val))
    (secondRangeStart, secondRangeEnd) = secondRange.split("-", 2).map(val => parseInt(val))

    if firstRangeStart <= secondRangeStart and firstRangeEnd >= secondRangeEnd or
       secondRangeStart <= firstRangeStart and secondRangeEnd >= firstRangeEnd:
      inc result 

proc second*(): int =
  var
    firstRange, secondRange: string

    firstRangeStart, firstRangeEnd, secondRangeStart, secondRangeEnd: int

  for line in data:
    (firstRange, secondRange) = line.split(",", 2)
    
    (firstRangeStart, firstRangeEnd) = firstRange.split("-", 2).map(val => parseInt(val))
    (secondRangeStart, secondRangeEnd) = secondRange.split("-", 2).map(val => parseInt(val))

    if firstRangeStart >= secondRangeStart and firstRangeStart <= secondRangeEnd or
       firstRangeEnd >= secondRangeStart and firstRangeEnd <= secondRangeEnd or
       secondRangeStart >= firstRangeStart and secondRangeStart <= firstRangeEnd or
       secondRangeEnd >= firstRangeStart and secondRangeEnd <= firstRangeEnd:
        inc result