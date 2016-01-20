//: Playground - noun: a place where people can play
import Foundation
import UIKit

var str = "Hello, playground"




// Question 1: https://www.hackerrank.com/challenges/minimum-draws

func maximumDraws(testCases: Int) {
    var numberOfPairs = 0
    var draws = 0
    
    for _ in 1...testCases {
        numberOfPairs = Int(readLine(stripNewline: true)!)!
        draws = numberOfPairs + 1
        
        print(draws)
    }
}

let testCases = Int(readLine(stripNewline: true)!)!
maximumDraws(testCases)



// What is the big O runtime of your code?: O(n)

// Question 2: https://www.hackerrank.com/challenges/handshake


func numberOfHandShakes(testCase: Int){
    var numberOfBoardDirectors = 0
    var handshakes = 0
    
    for _ in 1...testCases {
        numberOfBoardDirectors = Int(readLine(stripNewline: true)!)!
        handshakes = numberOfBoardDirectors * (numberOfBoardDirectors - 1)/2
        
        print(handshakes)
    }
}

let testCases = Int(readLine(stripNewline: true)!)!
numberOfHandShakes(testCases)



// What is the big O runtime of your code?: O(n)

// Question 3: https://www.hackerrank.com/challenges/connecting-towns



// What is the big O runtime of your code?:







