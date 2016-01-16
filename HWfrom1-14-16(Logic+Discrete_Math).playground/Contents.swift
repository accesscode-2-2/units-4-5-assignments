//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1:

https://www.hackerrank.com/challenges/minimum-draws


Copy and paste your code:

let firstLine = Int(readLine(stripNewline: true)!)!
for _ in 0..<firstLine {
let currentSockTotal = Int(readLine(stripNewline: true)!)!
print("\(currentSockTotal + 1)")
}

What is the big O runtime of your code?:

O(n + 1) = O(n), because for every pair of sock we need to check one more than the number of socks. So if we have n-pair socks, we make n+1 checks to get a match (at the worst case)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:


var arr = [Int]()
arr.insert(0,atIndex: 0)
arr.insert(0,atIndex: 1)
let firstLine = Int(readLine(stripNewline: true)!)!
for _ in 0..<firstLine {
let currentTotalNumberOfPeeps = Int(readLine(stripNewline: true)!)!

if(currentTotalNumberOfPeeps < 2)
{
print("\(arr[currentTotalNumberOfPeeps])")
}
else
{
for i in 2...currentTotalNumberOfPeeps
{
arr.insert((arr[i-1] + (i-1)),atIndex: i)
}
print("\(arr[currentTotalNumberOfPeeps])")
}
}

What is the big O runtime of your code?:

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:


let firstLine = Int(readLine(stripNewline: true)!)!
var totalRoutes = 1

for i in 0..<firstLine {
let numberOfTowns = Int(readLine(stripNewline: true)!)!
let count = numberOfTowns - 1
let routes = readLine(stripNewline: true)!
let routeArray = routes.characters.split{$0 == " "}.map(String.init)
for i in 0..<routeArray.count {
let routeInteger = Int(routeArray[i])!
totalRoutes *= routeInteger
}
print("\(totalRoutes)")
totalRoutes = 1
}

What is the big O runtime of your code?:

*/

