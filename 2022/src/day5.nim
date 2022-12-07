import algorithm, math, strutils

const
  data = staticRead("../data/day5.txt").strip(leading=false, trailing=true).splitlines()

proc first*(): string =
  var
    idx = 0
    numCols = ceilDiv(data[0].len, 4)
    columns = newSeq[newSeq[char]()](numCols)
    moveItems: seq[string]
    moveQty, moveFrom, moveTo: int
    currentItem: char

  while not data[idx].contains("move "):
    for pos, chr in data[idx]:
      if chr.isAlphaAscii():
        columns[ceilDiv(pos, 4)-1].add(chr)
    
    inc idx
  
  for i in 0..<numCols:
    columns[i].reverse()

  for line in data[idx..len(data)-1]:
    moveItems = line.split(" ", 6)
    moveQty = parseInt(moveItems[1])
    moveFrom = parseInt(moveItems[3])-1
    moveTo = parseInt(moveItems[5])-1
    
    for i in 0 ..< moveQty:
      currentItem = columns[moveFrom].pop()
      columns[moveTo].add(currentItem)

  for i in 0 ..< numCols:
    result &= columns[i].pop()

proc second*(): string =
  var
    idx = 0
    numCols = ceilDiv(data[0].len, 4)
    columns = newSeq[newSeq[char]()](numCols)
    moveItems: seq[string]
    moveQty, moveFrom, moveTo, len: int
    currentItems: seq[char]

  while not data[idx].contains("move "):
    for pos, chr in data[idx]:
      if chr.isAlphaAscii():
        columns[ceilDiv(pos, 4)-1].add(chr)
    
    inc idx
  
  for i in 0..<numCols:
    columns[i].reverse()

  for line in data[idx..len(data)-1]:
    moveItems = line.split(" ", 6)
    moveQty = parseInt(moveItems[1])
    moveFrom = parseInt(moveItems[3])-1
    moveTo = parseInt(moveItems[5])-1

    len = columns[moveFrom].len

    currentItems = newSeq[char]()
    for i in 0 ..< moveQty:
      currentItems.add(columns[moveFrom].pop())
    
    currentItems.reverse()
    for item in currentItems:
      columns[moveTo].add(item)

  for i in 0 ..< numCols:
    result &= columns[i].pop()