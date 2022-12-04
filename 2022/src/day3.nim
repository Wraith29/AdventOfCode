import strutils

const 
  data = staticRead("../data/day3.txt").strip().splitlines(false)
  letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

proc value(chr: char): int =
  for idx, letter in letters:
    if chr == letter:
      return idx+1

proc first*(): int =
  var
    midpoint: int
    firstHalf, secondHalf: string
  
  for line in data:
    midpoint = int(len(line) / 2)
    firstHalf = line[0..midpoint-1]
    secondHalf = line[midpoint..len(line)-1]


    for chr in firstHalf:
      if chr in secondHalf:
        result += value(chr)
        break

proc second*(): int =
  var
    idx = 0
    elfOne, elfTwo, elfThree: string
    
  while idx < len(data):
    elfOne = data[idx]
    elfTwo = data[idx+1]
    elfThree = data[idx+2]

    block elf:
      for chrOne in elfOne:
        for chrTwo in elfTwo:
          if chrOne == chrTwo and chrOne in elfThree:
            result += value(chrOne)
            break elf
    inc idx, 3