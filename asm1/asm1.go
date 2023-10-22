package main

import "fmt"

// Declaration de la fonction en assembleur
// le linkname
func asmAdd1(x, y int) int

func main() {
	result := asmAdd1(3, 5)
	fmt.Println("3 + 5 =", result)
}
