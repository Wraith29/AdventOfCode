import
  day1,
  day2,
  day3,
  day4

proc main: int =
  echo "Day 1"
  echo "  Part 1: ", day1.first()
  echo "  Part 2: ", day1.second()
  echo "Day 2"
  echo "  Part 1: ", day2.first()
  echo "  Part 2: ", day2.second()
  echo "Day 3:"
  echo "  Part 1: ", day3.first()
  echo "  Part 2: ", day3.second()
  echo "Day 4:"
  echo "  Part 1: ", day4.first()
  echo "  Part 2: ", day4.second()
  
  return 0

when isMainModule:
  quit(main())