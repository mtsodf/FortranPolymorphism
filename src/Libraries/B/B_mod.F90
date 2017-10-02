module B_mod

use C_mod
use D_mod
implicit none

contains

    subroutine funcB()
        write(*,*) "Chamando funcao de B"

        call funcC(1)

        anInteger = 1000
    end subroutine funcB

end module B_mod
