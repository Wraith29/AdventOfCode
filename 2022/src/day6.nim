import sets

const
  data = staticRead("../data/day6.txt")
  # data = """mjqjpqmgbljsphdztnvjfqwrcgsmlb"""

proc first*(): int =
  var
    chars: HashSet[char]

  for i in 3 ..< data.len() - 4:
    chars = data[i-3..i].toHashSet()
    if chars.len() == 4:
      return i+1

proc second*(): int =
  var
    chars: HashSet[char]

  for i in 13 ..< data.len() - 4:
    chars = data[i-13..i].toHashSet()
    if chars.len() == 14:
      return i+1
