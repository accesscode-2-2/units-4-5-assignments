//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code: 

let firstLine = Int(readLine(stripNewline: true)!)!
for _ in 1...firstLine{
let totalPairOfSocks = Int(readLine(stripNewline: true)!)!
print(totalPairOfSocks+1)
}

//In its worst case scenario, n+1 socks (x) should Jim remove from his drawer until he finds a matching pair if there are n pairs socks in total.

What is the big O runtime of your code?: O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:

let firstLine = Int(readLine(stripNewline: true)!)!
for _ in 1...firstLine{
let numberOfPeople = Int(readLine(stripNewline: true)!)!
print(numberOfPeople*(numberOfPeople - 1)/2)
}

// n*(n-1)/2 which is simplified from C(n, 2)

What is the big O runtime of your code?: O(n^2)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code: 

// ask user how many cases they want to test
let testCases = Int(readLine(stripNewline: true)!)!


// ask user for how many towns or nodes are in each case (in order)
for var x in 0..<testCases {
// ask user for input for number of towns
// and for the number of towns, ask how many routes
let towns = Int(readLine(stripNewline: true)!)!
// if there are n # of towns, ask user for how many routes there are from town to town
// it should only ask the number of towns - 1
var routes = readLine(stripNewline: true)!
// now ask the number of routes from each town, input has to include spaces
let routeArr = routes.characters.split{$0 == " "}.map(String.init)
var count = towns - 1
// after the number of routes has been determined by user's input
// create an algorithm to solve for output
// output needs to be set to one or it will always be 0
var output = 1
for i in 0..<routeArr.count {
// now that each route is stored into an array relative to their input, multiply each number by the next in order by looping through the array,
// output of routes will be index[0] * index [1] * index [2]

let routeInt = Int(routeArr[i])!
output *= routeInt
}

//    var output = routeArray.reduce(1, combine: *)
print(output % 1234567)
// explicity set output back to one or it will multiply next output with previous output
output = 1
}

//2

// the first line is the number of test cases
let numOfTestCases = Int(readLine(stripNewline: true)!)!

// after the first line we have alternating lines with a) the number of towns and b) the numbers of
// different paths between each town. We will parse those now...

for i in 0..<numOfTestCases {

// skip the line with the number of towns. We don't need it for anything
readLine(stripNewline: true)!

// now we are at the line we need to calculate the answer.
// These are the actual values we care about and need to multiply together.
// For now it is a string with a bunch of whitespace. EX: "2 2 3"
let rawPathNumbers = readLine(stripNewline: true)!

// remove the whitespace. EX: "223"
let rawPathNumsNoSpace = rawPathNumbers.characters.split { $0 == " " }.map(String.init)

// convert the string into an Int array. EX: [2, 2, 3]
let intArray = rawPathNumsNoSpace.map { Int(String($0)) ?? 0 }

// multiply the Ints together. EX: 2 * 2 * 3 = 12
print(intArray.reduce(1, combine: *))
}


//3
let firstLine = readLine(stripNewline:true)!
let T = Int (firstLine)!

for _ in (0..<T){
let firstTestLine = readLine(stripNewline:true)!
let N = Int(firstTestLine)!
let secondTestLine = readLine(stripNewline:true)!
var secondLineArr = secondTestLine.characters.split(" ")
var ans = 1
for characterView in secondLineArr {
var numberOfRoutes = Int(String(characterView))!
ans *= numberOfRoutes
ans %= 1234567
}
print(ans)
}

//4
let T = Int (readLine(stripNewline:true)!)!

for _ in (0..<T){
let N = Int (readLine(stripNewline:true)!)!
let secondTestLine = readLine(stripNewline:true)!
var secondLineArr = secondTestLine.characters.split(" ")

var ans = 1
for characterView in secondLineArr {
var numberOfRoutes = Int(String(characterView))!
ans *= numberOfRoutes
ans %= 1234567
}
print(ans)
}





What is the big O runtime of your code?: O(n!)

*/

