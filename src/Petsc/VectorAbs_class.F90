
module VectorAbs_class
    
    implicit none


    type, abstract, public :: VectorAbs
        integer :: age 

        real :: velocity

        contains

            ! procedure, public :: Move => MoveSub
            ! procedure(GetPointerSub), public, deferred :: GetPointer
            ! procedure(SetValueSub), public, deferred :: SetValue
            procedure(SetSub), public, deferred :: Set

    end type VectorAbs


    abstract interface

        ! subroutine GetPointerSub(this)
        !     import :: VectorAbs
        !     implicit none

        !     class(VectorAbs) :: this
            
        ! end subroutine GetPointerSub

        ! subroutine SetValueSub(this, position, value)
        !     import :: VectorAbs
        !     implicit none

        !     class(VectorAbs) :: this
        !     real(8) :: value
        !     integer :: position
            
        ! end subroutine SetValueSub

        subroutine SetSub(this, value)
            import :: VectorAbs
            implicit none

            class(VectorAbs) :: this
            real(8) :: value
            
        end subroutine SetSub

    end interface


contains

    subroutine DummySubVector()
        implicit none
        
        write(*,*) "Chamando DummySubVector subrotina." 
        
    end subroutine DummySubVector


    
end module VectorAbs_class