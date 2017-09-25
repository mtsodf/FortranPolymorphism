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
            procedure, public :: Create
            procedure, public :: Set
            procedure, public :: Norm2


    end type VectorPetsc


contains


    subroutine Create(this, size, localSize)

        implicit none

        class(VectorPetsc) :: this
        integer :: size
        integer, optional:: localSize

        PetscErrorCode :: ierr

        call VecCreate(PETSC_COMM_WORLD, this%petscVec, ierr)

        if(present(localSize)) then
            call VecSetSizes(this%petscVec, localSize, size, ierr)
        else
            call VecSetSizes(this%petscVec, PETSC_DECIDE, size, ierr)
        end if
        call VecSetFromOptions(this%petscVec, ierr)

    end subroutine Create

    subroutine Set(this, value)
            
        implicit none

        class(VectorPetsc) :: this
        real(8) :: value
        PetscErrorCode ierr

        write(*,*) "Setando valor ", value

        call VecSet(this%petscVec, value, ierr)

            
    end subroutine Set

    subroutine Norm2(this, norm)

        implicit none

        class(VectorPetsc) :: this
        real(8) :: norm
        PetscErrorCode ierr

        call VecNorm(this%petscVec, NORM_2, norm, ierr) 
        
    end subroutine Norm2

    
end module VectorPetsc_class