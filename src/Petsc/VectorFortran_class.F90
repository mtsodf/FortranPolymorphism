module VectorFortran_class

use VectorAbs_class
use ifport

implicit none


    type, extends(VectorAbs), public :: VectorFortran

        integer dummy

        real(8), allocatable :: fortranVec(:)

        contains
            ! procedure(GetPointerSub), public, deferred :: GetPointer
            procedure, public :: Create
            procedure, public :: Set
            procedure, public :: Norm2

    end type VectorFortran


contains


    subroutine Create(this, size, localSize)

        implicit none

        class(VectorFortran) :: this
        integer :: size
        integer, optional:: localSize


        allocate(this%fortranVec(0:size-1))




    end subroutine Create

    subroutine Set(this, value)
            
        implicit none

        class(VectorFortran) :: this
        real(8) :: value
        
        this%fortranVec = value

            
    end subroutine Set

    subroutine Norm2(this, norm)

        implicit none

        class(VectorFortran) :: this
        real(8) :: norm, v
        integer i 

        norm = 0.0d0

        do i=lbound(this%fortranVec, dim=1), ubound(this%fortranVec, dim=1)
            v = this%fortranVec(i)
            norm = norm + v*v
        end do

        norm = sqrt(norm)
        
    end subroutine Norm2

    
end module VectorFortran_class