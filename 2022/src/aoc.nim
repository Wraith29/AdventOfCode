import
  day1,
  day2

proc main: int =
  echo "Day 1"
  echo "  Part 1: ", day1.first()
  echo "  Part 2: ", day1.second()
  echo "Day 2"
  echo "  Part 1: ", day2.first()
  echo "  Part 2: ", day2.second()
  
  return 0

when isMainModule:
  quit(main())