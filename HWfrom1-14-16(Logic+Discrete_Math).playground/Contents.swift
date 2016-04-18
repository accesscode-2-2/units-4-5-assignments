//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:
let testCases = Int(readLine(stripNewline: true)!)!
for i in 0...n{
//new line
let n = Int(readLine(stripNewline: true)!)!
print(n+1)
}

What is the big O runtime of your code?: O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:
let testCases = Int(readLine(stripNewline: true)!)!
for i in 0...n{
//n represents number of people
let n = Int(readLine(stripNewline: true)!)!
print((n *(n-1))/2)
}

What is the big O runtime of your code?: O(n)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

let testCases = Int(readLine(stripNewline: true)!)!
for i in 0...testCases {
let towns = Int(readLine(stripNewline: true)!)!
var routes = [Int]()
var result = 0;

for i in 0..<towns.count {
routes[i] = Int(readLine(stripNewline: true)!)!

for j in 0..<towns.count
{
if (result == 0)
{
result = routes[j];
}

else
{
result *= routes[j];
result = result % 1234567;
}
}
}
}
print(result)


What is the big O runtime of your code?: O(n^2)

*/




//************************************************//
/* Unwrap optional 
func user() -> Int {
    let input = readLine()
    let num = Int(input!)
    return num!

*/
