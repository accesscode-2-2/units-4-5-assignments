//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code: */

let testCases = Int(readLine(stripNewline: true)!)!

for _ in 0..<testCases {
    
    let totalPairOfSocks = Int(readLine(stripNewline: true)!)!
    
    print(totalPairOfSocks + 1)
}

/*
What is the big O runtime of your code?: O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:*/

let testCases2 = Int(readLine(stripNewline: true)!)!

for _ in 0..<testCases2 {
    
    let numberOfPeople = Int(readLine(stripNewline: true)!)!
    
    print(numberOfPeople * (numberOfPeople - 1) / 2)
}

/*
What is the big O runtime of your code?: O(n)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code: */

// the first line is the number of test cases
let numOfTestCases = Int(readLine(stripNewline: true)!)!

// after the first line we have alternating lines with a) the number of towns and b) the numbers of
// different paths between each town. We will parse those now...

for _ in 0..<numOfTestCases {
    
    // skip the line with the number of towns. We don't need it for anything
    readLine(stripNewline: true)!
    
    // now we are at the line we need to calculate the answer.
    // These are the actual values we care about and need to multiply together.
    // For now it is a string with a bunch of whitespace. EX: "2 2 3"
    let rawPathNumbers = readLine(stripNewline: true)!
    
    // remove the whitespace. EX: "223"
    let rawPathNumsNoSpace = rawPathNumbers.characters.split{ $0 == " " }.map(String.init)
    
    // convert the string into an Int array. EX: [2, 2, 3]
    let intArray = rawPathNumsNoSpace.map{ Int(String($0)) ?? 0 }
    
    // multiply the Ints together. EX: 2 * 2 * 3 = 12
    var total = 1
    for num in intArray {
        
        total *= num     // multiply and keep a running tally
        total %= 1234567 // avoid overflow on large test cases
    }
    
    print(total)
}

/*
What is the big O runtime of your code?: O(n)
*/

