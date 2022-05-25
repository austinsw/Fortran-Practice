program fortrantut
  implicit none
  integer, dimension(1:5) :: a1, a2, a3
  real, dimension(1:5) :: aR1
  integer, dimension(5,5) :: a4
  integer :: n, m, x, y
  integer, dimension(:), allocatable :: a5
  integer :: num_vals = 0
  integer, dimension(1:9) :: a6 = (/ 1,2,3,4,5,6,7,8,9 /)
  integer, dimension(1:3, 1:3 ) :: a7

  a1(1) = 5
  print "(i1)", a1(1)

  do n = 1, 5
    a1(n) = n
  end do
  do n = 1, 5
    print "(i1)", a1(n)
  end do

  print "(3i2)", a1(1:3)
  print "(2i2)", a1(1:3:2)

  do n = 1, 5
    do m = 1, 5
      a4(n, m) = n
    end do
  end do

  do n = 1, 5
    do m = 1, 5
      print "(i1, a1, i1, a3, i1)", n, " ", m, " : ", a4(n, m)
    end do
  end do

  do n = 1, 5
    print "(5i1)", (a4(n, m), m = 1, 5)
  end do

  print "(i2)", size(a1)
  print "(i2)", size(a4)

  print "(i2)", rank(a4)
  print "(i2)", shape(a4)

  print *, "Size of array? "
  read *, num_vals
  allocate(a5(1:num_vals))

  do n = 1, num_vals
    a5(n) = n
  end do

  do n = 1, num_vals
    print "(i1)", a5(n)
  end do

  a2 = (/1,2,3,6,7/)
  print "(5i1)", (a2(m), m = 1, 5)
  a7 = reshape(a6, (/ 3, 3 /))
  print "(l1)", all(a1 == a2, 1)
  print "(l1)", any(a1 == a2, 1)
  print "(l1)", count(a1 == a2, 1)
  print "(i1)", maxval(a1)
  print "(i1)", minval(a1)
  print "(i3)", product(a1)
  print "(i3)", sum(a1)

end program fortrantut
