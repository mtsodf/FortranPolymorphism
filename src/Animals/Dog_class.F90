module Dog_class

use Animal_class

implicit none

    type, extends(Animal), public :: Dog

        contains

            procedure, public :: MakeNoise

    end type Dog


contains


    subroutine MakeNoise(this)
            
            implicit none

            class(Dog) :: this

            write(*,*) "Au Au Au"
            
    end subroutine MakeNoise
    
end module Dog_class