package main

import "fmt"

// Declaration des fonctions en assembleur
// le linkname
func mytest(x int) int
func myfact(x int) int

func main() {
	var x, y int = 5, 5

	result := myfact(x)
	fmt.Printf("%d! = %d   \n", x, result)

	result = mytest(y)
	fmt.Printf("mytest(%d)= %d   \n", y, result)

	// multiplie par 2 si plus  grand que 3
	y = 3
	result = mytest(y)
	fmt.Printf("mytest(%d)= %d   \n", y, result)

}
