program Hello
    use Animal_class
    use Dog_class
    use Cat_class

    implicit none

    type(Dog), target :: aDog

    type(Cat), target :: aCat

    class(Animal), pointer :: anAnimal

    write(*,*) "Hello World!"

    aDog%velocity = 10.0

    call aDog%MakeNoise()

    anAnimal => aDog

    call MoveOneSecond(anAnimal)

    call anAnimal%MakeNoise()


    aCat%velocity = 20.0

    anAnimal => aCat

    call MoveOneSecond(anAnimal)

    call anAnimal%MakeNoise()

    contains

        subroutine MoveOneSecond(anAnimal)
            implicit none
            class(Animal), pointer :: anAnimal
                
            call anAnimal%Move(1.0)
            call anAnimal%MakeNoise()
        end subroutine MoveOneSecond

end program