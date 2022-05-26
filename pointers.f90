program fortrantut
  implicit none
  integer, pointer :: ptr1, ptr2

  integer, pointer, dimension(:) :: a_ptr1

  integer, target :: target1
  allocate(ptr1)
  ptr1 = 5
  print "(a5, i5)", "ptr1 ", ptr1
  ptr2 => target1
  ptr2 = 1
  ptr2 = ptr2 + 2
  print "(a5, i5)", "ptr1 ", ptr1
  print "(a5, i5)", "tar1 ", target1

  !nullify(ptr2) !disassociate pointers
  !deallocate(ptr1) !deallocate storage

end program fortrantut
