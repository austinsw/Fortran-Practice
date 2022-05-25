program fortrantut
  implicit none
  integer :: ans, ans2
  real :: r_ans

  !ans = get_sum(5, 4)
  !print "(a8, i1)", "5 + 4 = ", ans

  !print "(a8, i1)", "5 + 4 = ", get_sum2(5, 4)

  !print "(a8, i1)", "5 + 4 = ", get_sum3(5)

  ans = factorial(4)
  print "(a15, i3)", "factorial(4) = ", ans
contains
  integer function get_sum(n1, n2)
    implicit none
    integer :: n1, n2, sum
    sum = n1 + n2
  end function get_sum

  function get_sum2(n1, n2) result(sum)
    implicit none
    integer, intent(in) :: n1, n2 !can't be changed
    integer :: sum
    sum = n1 + n2
  end function get_sum2

  pure function get_sum3(n1, n2) result(sum)
    implicit none
    integer, intent(in) :: n1
    integer, intent(in), optional :: n2
    integer :: sum
    if (present(n2)) then
      sum = n1 + n2
    else
      sum = n1 + 1
    end if
  end function get_sum3

  recursive function factorial(n) result(o)
    integer :: n, o
    if (n == 1) then
      o = 1
    else
      o = n * factorial(n - 1)
    end if
  end function factorial

end program fortrantut
