module Animal_class
implicit none

    type, abstract, public :: Animal
        integer :: age 

        real :: velocity

        contains

            procedure, public :: Move => MoveSub
            procedure(MakeNoiseSub), public, deferred :: MakeNoise

    end type Animal


    abstract interface

        subroutine MakeNoiseSub(this)
            import :: Animal
            implicit none

            class(Animal) :: this
            
        end subroutine MakeNoiseSub

    end interface


contains

    subroutine MoveSub(this, time)
        implicit none
        class(Animal) this
        real :: time
        
        write(*,'(a, f8.2)') "Animal moved ", time*this%velocity
    end subroutine MoveSub
    
end module Animal_class