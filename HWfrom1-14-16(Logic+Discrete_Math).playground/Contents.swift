//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:

What is the big O runtime of your code?:

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:



What is the big O runtime of your code?:

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

What is the big O runtime of your code?:

*/


func userInput() -> Int {
    let input = readLine()
    let num = Int(input!)
    return num!
}


// Draws

let testNum : Int = Int(readLine()!)!        // asks for how many tests do you want done
for i in 0..<testNum{                        // iterates through the number of tests inputted
    var storedInput : Int = userInput()      // asks user for the # of pairs they have
    var maxDraws = storedInput + 1           // calculates the maximum draw
    print(maxDraws)                          // returns the maximum draw
}

// Handshakes 

let testNum : Int = userInput()          // asks for how many tests do you want done
for i in 0..<testNum{                    // iterates through the number of tests inputted
    var handshake : Int = userInput()
    handshake = (handshake * (handshake - 1)) / 2
    print(handshake)
}


// Gandalf

var T = userInput()
var total = 0

while (T > 1){
    let N = userInput()
    total = 1
    for i in 0..<N-1{
        var temp = userInput()
        total = (temp * total) % 1234567
        
    }
    --T
}



