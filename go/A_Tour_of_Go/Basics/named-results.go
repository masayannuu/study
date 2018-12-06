package main

import "fmt"

// 戻り値となる変数に名前をつけることができる
// 戻り値に名前をつけると、関数の最初で定義した変数名として扱われる
// 使う場面:
// 戻り値の意味を示す名前とすることで、関数のドキュメントとして表現する
func split(sum int) (x, y int) {
	x = sum * 4 / 9
	y = sum - x
	// 名前をつけた戻り値の変数を使うと、returnステートメントに何も書かずに戻せる。これを "naked" return と呼ぶ
	// naked returnステートメントは短い関数でのみ利用する。長い関数で使うと読みやすさに悪影響を与える
	return
}

func main() {
	fmt.Println(split(17))
}
