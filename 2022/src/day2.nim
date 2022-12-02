import strutils

const
  loseValue = 0
  drawValue = 3
  winValue  = 6

  rockValue = 1
  paperValue = 2
  scissorsValue = 3

proc first*(): int =
  const
    data = staticRead("../data/day2.txt").strip().splitlines(false)

  var
    moves: seq[string]
    enemyMove, myMove: string

  for line in data:
    moves = split(line, " ")
    enemyMove = moves[0]
    myMove = moves[1]

    case toLower(enemyMove):
    of "a":
      case toLower(myMove):
      of "x": result += drawValue+rockValue
      of "y": result += winValue+paperValue
      of "z": result += loseValue+scissorsValue
    of "b":
      case toLower(myMove):
      of "x": result += loseValue+rockValue
      of "y": result += drawValue+paperValue
      of "z": result += winValue+scissorsValue
    of "c":
      case toLower(myMove):
      of "x": result += winValue+rockValue
      of "y": result += loseValue+paperValue
      of "z": result += drawValue+scissorsValue
    
proc second*(): int = 
  const
    data = staticRead("../data/day2.txt").strip().splitlines(false)
  
  var
    moves: seq[string]
    enemyMove, myMove: string
  
  for line in data:
    moves = split(line, " ")
    enemyMove = moves[0]
    myMove = moves[1]
  
    case toLower(enemyMove):
    of "a":
      case toLower(myMove):
      of "x": result += loseValue+scissorsValue
      of "y": result += drawValue+rockValue
      of "z": result += winValue+paperValue
    of "b":
      case toLower(myMove):
      of "x": result += loseValue+rockValue
      of "y": result += drawValue+paperValue
      of "z": result += winValue+scissorsValue
    of "c": 
      case toLower(myMove):
      of "x": result += loseValue+paperValue
      of "y": result += drawValue+scissorsValue
      of "z": result += winValue+rockValue
