package main

import (
	"fmt"
	"math/cmplx"
)

var (
	ToBe   bool       = false
	MaxInt uint64     = 1<<64 - 1
	z      complex128 = cmplx.Sqrt(-5 + 12i)
)

//	go言語の基本型
//	string
//	intint8	int16	int32	int64
//	uint	uint8	uint32	uint64	uintptr
//	byte	//	uint8 の別名
//	rune	//	int32 の別名
//		//	Unicode のコードポイントを表す
//	float32	float64
//	complex64	complext128
func main() {
	fmt.Printf("Type: %T Value: %v\n", ToBe, ToBe)
	fmt.Printf("Type: %T Value: %v\n", MaxInt, MaxInt)
	fmt.Printf("Type: %T Value: %v\n", z, z)
}
