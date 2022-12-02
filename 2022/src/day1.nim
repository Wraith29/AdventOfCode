import strutils, math, algorithm

proc first*(): int =
  const
    data = staticRead("../data/day1.txt").strip().split("\n\n")
  
  var tot = 0
  for item in data:
    for line in item.split("\n"):
      tot += line.parseInt

    result = max(result, tot)
    tot = 0

proc second*(): int =
  const
    data = staticRead("../data/day1.txt").strip().split("\n\n")
  
  var
    values = newSeq[int]()
    value: int

  for item in data:
    value = 0
    for val in item.split("\n"):
      value += parseInt(val)
    
    values.add(value)

  values.sort(SortOrder.Descending)
  values[0..2].sum()