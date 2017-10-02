program main

use B_mod
!use C_mod
use D_mod
implicit none

type(dtype) d

call funcB()

!call funcC(0)

write(*,*) "an Integer", anInteger

end program main