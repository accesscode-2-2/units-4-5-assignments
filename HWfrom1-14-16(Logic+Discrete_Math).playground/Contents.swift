//: Playground - noun: a place where people can play

import UIKit

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

//1. The number of draws he makes in the worst case scenario is 3. I don't know how to express that in code.

//2


func factorial(var value: Int, var result: Int = 1) -> Int {
    
    if (value == 0) {
        return result
    }
    
    result *= value
    value--
    
    return factorial(value, result: result)
    }
    
func handshakes(attendees: Int) -> Int {
    
  let num = factorial(attendees)
        
  let den = (factorial(2) * factorial(attendees - 2))
    
  let total = num / den
    
    return total
    
}


handshakes(4)
handshakes(2)









