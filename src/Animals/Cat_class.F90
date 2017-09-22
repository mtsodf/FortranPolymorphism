module Cat_class

use Animal_class

implicit none

    type, extends(Animal), public :: Cat
        contains
            procedure, public :: MakeNoise

    end type Cat


contains


    subroutine MakeNoise(this)
            
            implicit none

            class(Cat) :: this

            write(*,*) "Miauuu!"
            
    end subroutine MakeNoise
    
end module Cat_class