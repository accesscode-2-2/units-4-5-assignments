//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

/* Question 1: https://www.hackerrank.com/challenges/minimum-draws
Copy and paste your code: */

// this follows the pigeon hole rule: N socks will always require N+1 draws to find a match.
// kaira helped with this code:

func userInput() -> Int {
    let input = readLine() // this is necessary for hacker rank input :(
    let num = Int(input!)
    return num!
}

let testNum : Int = userInput()
for i in 0..<testNum {
    var storedInput : Int = userInput()
    var maxDraws = storedInput + 1
    print(maxDraws) 
}

// What is the big O runtime of your code?: O(N) - you iterate through number once.

 /* Question 2: https://www.hackerrank.com/challenges/handshake
Copy and paste your code: */

// 1 person 0 handshakes
// 2 people 1 handshakes (+1)
// 3 people 3 handshakes (+2)
// 4 people 6 handshakes (+3)
// 5 people 10 handshakes (+4)
// 6 people 15 handshakes (+5)

//What is the big O runtime of your code?:


/* Question 3: https://www.hackerrank.com/challenges/connecting-towns
Copy and paste your code: */

// I need to review this question.

//What is the big O runtime of your code?:
