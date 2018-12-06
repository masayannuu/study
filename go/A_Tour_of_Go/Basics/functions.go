package main

import "fmt"

func add(x int, y int) int {
	// 引数の型が同じ場合は省略可能
	// func add(x, y int) int {
	return x + y
}

func main() {
	fmt.Println(add(42, 13))
}
