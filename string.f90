program fortrantut
  implicit none
  character (len = 30) :: str = "I'm a string"
  character (len = 30) :: str2 = " that is longer"
  character (len = 30) :: str3

  str3 = trim(str) // trim(str2) !adjustr (right) adjustl (left)
  print *, str3
  print "(a9, i1)", "Index at ", index(str, "I")
  print *, len(str)
end program fortrantut
