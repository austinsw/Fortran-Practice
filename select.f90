program fortrantut
  implicit none
  integer :: age = 90
  select case(age)
  case (5)
    print *, "Kindergarten"
  case (6:13)
    print *, "Middle School"
  case (14, 15, 16, 17, 18)
    print *, "High School"
  case default
    print *, "Stay home"
  end select

end program fortrantut
