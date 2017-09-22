

main:
	ifort Main.F90 animals.a

animals:
	ifort -o animals.a -staticlib Animal_class.F90  Cat_class.F90  Dog_class.F90

clean:
	rm animals.a
	rm *.mod
	rm a.out
