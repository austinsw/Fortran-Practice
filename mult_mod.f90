module mult_mod
  implicit none
  private
  public :: mult

  interface mult
    procedure mult_real, mult_int
  end interface mult

contains
  real function mult_real(n1, n2) result(product)
    real, intent(in) :: n1, n2
    product = n1 * n2
  end function mult_real

  integer function mult_int(n1, n2)
    integer, intent(in) :: n1, n2
    integer :: product
    product = n1 * n2
  end function mult_int
end module mult_mod
