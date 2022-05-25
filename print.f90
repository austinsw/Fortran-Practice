program fortrantut
  implicit none

  character (len = 5) :: i_char
  write (i_char, "(i5)") 10
  print "(a,a)", "A number ", adjustl(i_char)

  print *, "A number ", 10
  print "(3i5)", 7, 6, 8 !RiW
  print "(i5)", 7, 6, 8
  print "(2f8.5)", 3.1415, 1.234 !RfW.D
  print "(/, 2a8)", "Name", "Age" !new line
  print "(e10.3)", 123.456 !exponential
  print "(a5, i2)", "I am ", 43

end program fortrantut
