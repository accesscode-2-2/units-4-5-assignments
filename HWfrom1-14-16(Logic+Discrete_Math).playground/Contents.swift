//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:

func draw(let n:Int) -> Int
{
return n + 1
}

What is the big O runtime of your code?:
O(1)

Question 2: https://www.hackerrank.com/challenges/handshake
Copy and paste your code:
func handshakes(let num: Int) -> Int
{

return num * (num-1) / 2
}

What is the big O runtime of your code?:
O(1)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

let T = Int(readLine(stripNewline: true)!)!

for i in (0..<T) {
let firstTestLine = readLine(stripNewline: true)!
let N = Int(firstTestLine)!
let secondTestLine = readLine(stripNewline: true)!
var secondLineArr = secondTestLine.characters.split(" ")

var ans = 1
for i in (0..<N-1) {
var numberOfRoutes = Int(String(secondLineArr[i]))!
ans *= numberOfRoutes
ans %= 1234567
}

print(ans)
}


What is the big O runtime of your code?:
O(n)
*/

