module VectorPetsc_class

use VectorAbs_class

implicit none

#include <petsc/finclude/petscsys.h>
#include <petsc/finclude/petscvec.h>

    type, extends(VectorAbs), public :: VectorPetsc

        integer dummy

        Vec petscVec

        contains
            ! procedure(GetPointerSub), public, deferred :: GetPointer
            ! procedure(SetValueSub), public, deferred :: SetValue
            procedure, public :: Set

    end type VectorPetsc


contains


    subroutine Set(this, value)
            
        implicit none

        class(VectorPetsc) :: this
        real(8) :: value

        this%dummy = 1

        write(*,*) "Setando valor ", value

            
    end subroutine Set
    
end module VectorPetsc_class