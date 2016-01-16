//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code: */
// Maximum number of draws equals the number of pairs of socks + 1.

func maxDraws(let n: Int) -> Int {
    return n + 1
}

let numOfPairs = 3
maxDraws(numOfPairs)


// What is the big O runtime of your code?: O(1)

// code from the study group from Kaira for the Hackerrank, will need to go over this again

//let testNum : Int = userInput() // asks for how many tests do you want done 
//for i in 0..<testNum{ // iterates through the number of tests inputted 
//    var storedInput : Int = userInput() // asks user for the # of pairs they have 
//    var maxDraws = storedInput + 1 // calculates the maximum draw 
//    print(maxDraws) // returns the maximum draw }
//
//
//    func user() -> Int { // doesn't work in playgrounds, needs to run in command line app
//        let input = readLine()
//        let num = Int(input!)
//        return num!
//}



//Question 2: https://www.hackerrank.com/challenges/handshake
//
//Copy and paste your code:
    
// Total number of Handshakes solved with Combinations
// C(n,2) = n! / 2! * (n-2)!
// C(n,2) = n*(n-1)/2 // simplified by Xiulan, from the study group on Fri


// Justine's solution from the study group on Fri 

func factorial(var n: Int) -> Int
{
    var num = n - 1
    
    for _ in 1..<n {
        
        n *= num
        num--
        
    }
    
    return n
}

factorial(3)
factorial(5)


func handshakes(let n: Int) -> Int
{
    
    return factorial(n) / (factorial(2) * factorial(n - 2))
}

handshakes(3)
handshakes(5)



func handshakesSimplified(let n: Int) -> Int
{
    
    return n * (n - 1) / 2
}

handshakesSimplified(3)
handshakesSimplified(5)

//
//What is the big O runtime of your code?:
//
//Question 3: https://www.hackerrank.com/challenges/connecting-towns
//
//Copy and paste your code:
//
//What is the big O runtime of your code?:


