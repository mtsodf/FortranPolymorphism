program FortranCpp
    implicit none

    INTERFACE
    SUBROUTINE add1(a) BIND(C)
        USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_INT
        IMPLICIT NONE
        INTEGER(C_INT) :: a
    END SUBROUTINE add1
    END INTERFACE   

    integer a
    
    write(*,*) "Fortran Cpp program"
    
    a = 1000

    call add1(a)

    write(*,*) "a = ", a


contains


end program