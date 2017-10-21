program FortranCpp
    use iso_c_binding

    implicit none

    INTERFACE
        SUBROUTINE add1(a) BIND(C)
            USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_INT
            IMPLICIT NONE
            INTEGER(C_INT) :: a
        END SUBROUTINE add1
    END INTERFACE   

    INTERFACE
        SUBROUTINE add1vec(a, b) BIND(C)
            USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_INT, C_PTR
            IMPLICIT NONE
            type(c_ptr) :: a
            INTEGER(C_INT) :: b
        END SUBROUTINE add1vec
    END INTERFACE   

    integer a
    integer(c_int) :: b(5)
    type(c_ptr)    :: bptr
    integer , pointer :: fbptr(:)
    write(*,*) "Fortran Cpp program"
    
    a = 1000

    b = (/ 1,2,3,4,5 /)
    call add1(a)

    write(*,*) "a = ", a

    write(*,*) "loc = ", LOC(b)
    bptr = c_loc(b(1))
    call c_f_pointer(bptr, fbptr, shape=[5])
    write(*,*) "fbptr = ", fbptr
    call add1vec(bptr, 5)
    write(*,*) "b = ", b

contains


end program