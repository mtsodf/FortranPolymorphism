module C_mod

implicit none

contains

    subroutine funcC(i)
        integer i
        if(i == 0) then
            write(*,*) "Chamando funcao de C"
        else
            write(*,*) "    Chamando funcao de C"
        end if

    end subroutine funcC

end module C_mod
