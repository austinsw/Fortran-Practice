program fortrantut
  implicit none
  integer :: num, cups
  real :: liters, quarts

  do num = 1, 12
    print 100, num, num * 7
    100 format(i2, ' * 7 = ', i3)
  end do

  print "(/a18)", "Cups Liters Quarts"
  do cups = 1, 10
    liters = cups * .236
    quarts = cups * .208
    print 200, cups, liters, quarts
    200 format(' ', i3, 2x, f5.3, 2x, f5.3)
  end do

end program fortrantut
