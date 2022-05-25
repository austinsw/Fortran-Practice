program fortrantut
  implicit none
  type Customer
    character (len = 40) :: name
    integer :: age
    real :: balance
  end type Customer

  type(Customer), dimension(5) :: customers
  integer :: n

  type(Customer) :: cust1
  cust1%name = "John Smith"
  cust1%age = 22
  cust1%balance = 51.4
  customers(1) = cust1
  customers(2)%name = "Peter Parker"
  customers(2)%age = 23
  customers(2)%balance = 32045229.78

  do n = 1, 2
    print *, customers(n)
  end do

end program fortrantut
